<template>
    <div class="user-input">
        <button class="speech" @click="startTxtToSpeech">Speech to txt</button>
        <button class="txt" @click="startSpeechToTxt">Txt to speech </button>
        <button class="end-chat" @click="newPage">End Chat</button>
        <button class="bottom-boy" v-on:click.prevent="getQuote()">Quote!</button>
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
                    this.userText = '';
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
                   from_name: 'TechBot',
                  to_name: this.$store.state.userName,
                  user_email: this.$store.state.userEmail,
                    message: this.emailMessage
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
    },
    computed: {
        emailMessage() {
            let message = '';
            let newArray = this.$store.state.userText;
            for( let i = 0; i < newArray.length; i++) {
                if(newArray[i].id == 'computer') {
                    message = message + 'TECHBOT: ' + newArray[i].text + "\n";
                }
                else {
                message = message + this.$store.state.userName + ": " +
                newArray[i].text + "\n";
                }
            }
            return message.replace( /(<([^>]+)>)/ig, '');
        }
    }
}
</script>
<style>
button {
    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
}

div.user-input {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-template-areas: 'spe quo txt end'
                         'use use use use';
    
    background: rgba(13, 12, 13, 0.53) transparent;
    margin: auto;
    width:100%;
    text-align:center;
    font-size:0;
    font-family: Arial, Helvetica, sans-serif;
    font-weight:400;
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
    border: 2px solid #8C82FC;
    top: 50%;
    width: 150px;
    height: 30px;
    background: linear-gradient(0deg, rgba(236, 236, 236, 1) 0%, rgba(158, 158, 158, 1) 100%);
    box-shadow: 5px 5px 1px rgba(10, 10, 10, 1);
    margin-bottom: 15px;
}

div.user-input button:hover {
    background: grey !important
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

button {
    color:black !important;
    border:transparent ! important
}
</style>