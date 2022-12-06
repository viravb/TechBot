import axios from "axios";

export default {

    getSubjects() {
        return axios.get('/subjects');
    }
}