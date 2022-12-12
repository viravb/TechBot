import axios from "axios";
const quoteAxios = axios.create(
   { headers: {
    'X-Api-Key': 'l9zGqUNO1COvPZmxXKTU9A==QYEpLzPECINE332w'
   }})
   
export default {
getQuotes() {
    return quoteAxios.get('https://api.api-ninjas.com/v1/quotes?category=inspirational');
}
}