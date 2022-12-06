import axios from "axios";

export default {

    getAnswers() {
        return axios.get('/answers');
    }
}