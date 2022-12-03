import axios from "axios";



export default {

    getAllThings() {
        return axios.get('/');
    }
}