import axios from "axios";



export default {

    getAnswers() {
        let keyword = this.$store.state.keyword
        return axios.get('/answers/', {
           params:{keyword}});
    }
}