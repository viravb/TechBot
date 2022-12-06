<template>
  <div class="computer-bubble">
      <p>{{$store.state.answers}}</p>
  </div>
</template>

<script>
import CategoriesService from '@/services/CategoriesService.js'
import AnswersService from '@/services/AnswersService.js'


export default {
    name: 'computer-bubble',
    props: {
        answers: Object
    },
    data() {
        return {
           
        }
    },
    created() {       
        CategoriesService.getAllThings().then(response => {
            console.log(response)
            response.data.map((x) => {
                this.$store.commit('GET_COMPUTER', x);
            })
        }).catch( error => console.error(error));
        AnswersService.getAnswers().then(response => {
            response.data.map((x) => {
                this.$store.commit('GET_ANSWERS', x);
            })
            console.log(response)
        }).catch(error => console.error(error));

    },
    methods: {
    },

    computed: {
        
    }
}
</script>

<style>

.computer-bubble {
    border: 2px solid black;
    border-radius: 5px;
    display: flex;
    margin-right: 35%;
    margin-left: 2%;
    margin-top: 2%;
    justify-content: flex-start;
    height: 50px;
    background-color: lightgreen;
}
p {
      font-family: 'Oswald', sans-serif;
        font-family: 'Zen Dots', cursive;
}

</style>