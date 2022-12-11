import axios from "axios";

const quoteAPI = axios.create({
   headers:{ 'X-RapidAPI-Key': '681096fe80mshf27e2da156cd13dp1dba49jsnb9c77ea570ee',
    'X-RapidAPI-Host': 'quotes15.p.rapidapi.com'
}
  });

const url = 'https://quotes15.p.rapidapi.com/quotes/random/';

export default {

getQuote(){
    return quoteAPI.get(url);
}

}