<template>
  <div class="user-text-list">
    <ul>
      <li v-for='text in $store.state.userText' v-bind:key='text.index' v-bind:class='text.id'>
        <p>
          <span>{{text.text}}</span>
        </p>
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
div.user-text-list ul {
  list-style-type: none;
  
}

span{
  width:100%;
  height:1em;
  display:inline-block;
}

.user {
  border: 1px solid lightblue;
  border-radius: 5px;
  margin-left: 30%;
  margin-right: 2%;
  margin-top: 2%;
  height: 50px;
  background-color: lightblue;
  box-shadow: 10px 10px 5px #AAAAAA;
}

.computer{
  border: 1px solid lightgreen;
  border-radius: 5px;
  margin-right: 30%;
  margin-left: 2%;
  margin-top: 2%;
  height: auto;
  background-color: lightgreen;
  box-shadow: 10px 10px 5px #AAAAAA;
}
p {
    font-family: 'Oswald', sans-serif;
    font-family: 'Zen Dots', cursive;
}
</style>