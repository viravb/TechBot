<template>
    <div class="user-input">
        <button class="speech" @click="startTxtToSpeech">Speech to txt</button>
        <button class="txt" @click="startSpeechToTxt">Txt to speech </button>
        <button class="end-chat" @click="newPage">End Chat</button>
        <button class="bottom-boy" v-on:click.prevent="getQuote()">Click Here for a Quote!</button>
        <form v-on:submit.prevent='filteredKeyWord()' class='user-form'>
            <input class="user-text" type="text" v-model='userText' placeholder='Enter Your Question Here'>
        </form>
    </div>
</template>
<script>
import {init} from 'emailjs-com';
init('');
import emailjs from 'emailjs-com';
import AnswersService from '@/services/AnswersService';
import QuoteService from '@/services/QuoteService';
export default {
    name: "user-input",
    data() {
        return {
            userText: '',
            runtimeTranscription_: '',
            computerResponse: '',
            lang_: 'en',
            quote: ''
        }
    },
    methods : {
        filteredKeyWord() {
            let sentenceToSend = `${this.userText} ${this.$store.state.currentTopic}`;
            this.$store.commit('SAVE_TEXT', this.userText);
            if(this.userText.includes('quote') || this.userText.includes('quotes')){
                    this.getQuote();
            }
            else {
            AnswersService.getAnswers(sentenceToSend).then(response => {
                this.computerResponse = response.data.answer;
                this.$store.commit('GET_ANSWERS', response.data);
            }).catch(error => console.error(error));
            this.userText = '';
            }
        },

        startTxtToSpeech() {
            window.SpeechRecognition =
            window.SpeechRecognition || window.webkitSpeechRecognition;
            const recognition = new window.SpeechRecognition();
            recognition.lang = this.lang_;
            recognition.interimResults = true;
            recognition.addEventListener("result", event => {
                const text = Array.from(event.results)
                .map(result => result[0])
                .map(result => result.transcript)
                .join("");
            this.runtimeTranscription_ = text;
            });
            recognition.addEventListener("end", () => {
            this.userText = this.runtimeTranscription_
            this.runtimeTranscription_ = "";
            recognition.stop();
            });
            recognition.start();
        },
        startSpeechToTxt() {
            let utterance = new SpeechSynthesisUtterance(this.computerResponse);
            window.speechSynthesis.speak(utterance);
        },
        endChat() {
            this.$store.commit('END_CHAT');
            this.$router.push('/end');
        },
        sendEmail() {
           emailjs.send(
               'service_e1r0z6r',
               'template_76hzrbu',
               {
                   from_name: "param 1 if you customized",
                   to_name: "param 2",
                    message: "param 3",
               },
               'hettd63dNPyGe0ocn'
           ).then(
                function (response) {
            console.log("SUCCESS!", response.status, response.text);
          },
          function (error) {
            console.log("FAILED...", error);
          }
           );
        },
        newPage() {
            this.sendEmail();
            this.endChat();
        },
        getQuote() {
          QuoteService.getQuotes().then(response => {
             this.$store.commit('GET_QUOTES', response.data)
          }).catch(error => {
            console.error(error);
          })
      }
    }
}
</script>
<style>
button {
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
    color: black !important;
    border: none !important;
}

div.user-input {
    display: grid;
    justify-content: space-evenly;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-template-areas: 'spe quo txt end'
                         'use use use use';
    border-top: 5px solid black;
    background: black;
    margin: auto;
    width:100%;
    text-align:center;
    font-size:0;
    font-family: Arial, Helvetica, sans-serif;
    font-weight:400;
    box-shadow: 10px 10px 5px black;
    
}

div.user-input input.user-text {
    width: 100%;
    height: 100px;
    padding: 12px 20px;
    margin: 0pc;
    box-sizing: border-box;
    background-color: white;
    border: none;
    border-radius: 0px 0 10px 10px;
    resize: none;
    font-family: Arial, Helvetica, sans-serif;
    font-size: 16px;
}
div.user-input button {
    position: relative;
    align-self: end;
}
div.user-input button.speech{
    grid-area: spe;
}
div.user-input button.txt{
    grid-area: txt;
}
div.user-input button.end-chat {
    grid-area: end;
}
div.user-input form.user-form {
    grid-area: use;
    border-top: 5px solid black;
}

div.user-input button.txt-to-speech {
    padding-left: 100px;
}
div.user-input button.MotivationalQuotes{
    grid-area:quo;
    background:coral;   
    
}


</style>