import axios from "axios";



export default {


    getAnswers(keyword) {
      
        return axios.post('/answers/', keyword);

}
}