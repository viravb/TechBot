<template>
  <div class="computer-bubble">
      <p>Welcome, {{$store.state.userName}}</p>
      <p>{{$store.state.answers}}</p>
  </div>
</template>
<script>

export default {
    name: 'computer-bubble',
    props: {
        answer: String
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