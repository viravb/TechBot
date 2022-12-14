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
</style>