import axios from "axios";



export default {


    getAnswers(keyword) {
      
        return axios.get('/answers/', keyword);

}
}