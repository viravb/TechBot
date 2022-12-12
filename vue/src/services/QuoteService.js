import axios from "axios";
const quoteAxios = axios.create(
   { headers: {
    'X-RapidAPI-Key': '681096fe80mshf27e2da156cd13dp1dba49jsnb9c77ea570ee',
    'X-RapidAPI-Host': 'quotes15.p.rapidapi.com'
}})
   ;
export default {
getQuote() {
    return quoteAxios.get('https://quotes15.p.rapidapi.com/quotes/random/');
}
}