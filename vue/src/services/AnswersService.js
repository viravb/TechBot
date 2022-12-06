import axios from "axios";



export default {

    getAnswers() {
        
     return axios.post('/answers', this.$store.state.userInput);
     
        
    }
}