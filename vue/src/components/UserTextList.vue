<template>
  <div class="user-text-list">
    <ul>
      <li v-for='text in $store.state.userText' v-bind:key='text.index' v-bind:class='text.id'>
        <p>{{text.text}}</p>
      </li>
    </ul>
  </div>
</template>


<script>


export default {
  name: 'user-text-list',
  props: {text: Object},
      
}
</script>

<style>

.user {
    border: 2px solid black;
    border-radius: 5px;
    margin-left: 35%;
    margin-right: 2%;
    margin-top: 2%;
    text-align: center;
    
    height: 50px;
    background-color: lightblue;
}

.computer{
    border: 2px solid black;
    border-radius: 5px;
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