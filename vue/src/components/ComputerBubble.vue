<template>
  <div class="computer-bubble">
      <p>{{$store.state.computerText}}</p>
  </div>
</template>

<script>
import CategoriesService from '@/services/CategoriesService.js'


export default {
    name: 'computer-bubble',
    props: {
        answers: Object
    },
    data() {
        return {
            filter: [],
        }
    },
    created() {       
        CategoriesService.getAllThings().then(response => {
            response.data.map((x) => {
                this.$store.commit('GET_COMPUTER', x);
            })
                console.log(this.answer)
            console.log(response);
        }).catch( error => console.error(error));
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

</style>