import axios from "axios";



export default {


    getAnswers(userInput) {
      
        return axios.post('/answers/', userInput);

}
}