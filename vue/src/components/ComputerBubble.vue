<template>
  <div class="computer-bubble" v-if='constant()'>
      <p>{{answers.answer}}</p>
  </div>
</template>
<script>

export default {
    name: 'computer-bubble',
    props: {
        answers: Object
    },
    data() {
        return {
        }
    },

    computed: {
    }
}
</script>
<style>
.computer-bubble {
    border: 0px solid black;
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