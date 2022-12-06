import axios from "axios";



export default {

    getAnswers() {
        let userInput = this.$store.state.userText
        return axios.get('/answers/', {
           params:{userInput}});
    }
}