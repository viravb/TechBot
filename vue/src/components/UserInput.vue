<template>
    <div class="user-input">
        <button class="speech" @click="startTxtToSpeech">Speech to txt</button>
        <button class="txt" @click="startSpeechToTxt">Txt to speech </button>
        <button class="end-chat" @click="endChat">End Chat</button>
        <button class="bottom-boy" v-on:click.prevent="getQuote()">Click Here for a Quote!</button>
        <form v-on:submit.prevent='filteredKeyWord()' class='user-form'>
            <input class="user-text" type="text" v-model='userText' placeholder='Enter Your Question Here'>
        </form>
    </div>
</template>
<script>
import AnswersService from '@/services/AnswersService';
import QuotesService from '@/services/QuoteService'
export default {
    name: "user-input",
    data() {
        return {
            userText: '',
            runtimeTranscription_: '',
            computerResponse: '',
            lang_: 'en'
        }
    },
    methods : {
        filteredKeyWord() {
            let sentenceToSend = `${this.userText} ${this.$store.state.currentTopic}`;
            this.$store.commit('SAVE_TEXT', this.userText);
            AnswersService.getAnswers(sentenceToSend).then(response => {
                this.computerResponse = response.data.answer;
                this.$store.commit('GET_ANSWERS', response.data);
            }).catch(error => console.error(error));
            this.userText = '';
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
        getQuote() {
          QuotesService.getQuote().then(response => {
             this.$store.commit('GET_QUOTES',response.data)
          }).catch(error => {
            console.error(error);
          })
      }
    }
}
</script>
<style>
div.user-input {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-template-areas: 'spe txt end ema'
                         'use use use use';
    border-top: 5px solid black;
    background: black;
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

div.user-input button.email {
    grid-area: ema;
}

div.user-input form.user-form {
    grid-area: use;
    border-top: 5px solid black;

}
</style>