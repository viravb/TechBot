<template>
  <div class="user-text-list">
    <ul>
      <div class='welcome'>
        <p>{{`Welcome, ${$store.state.userName}`}}</p>
      </div>
      <li v-for='text in $store.state.userText' v-bind:key='text.index'  v-bind:class='text.id'>
        <p class='text'>
          <span v-html = "text.text">{{text.text}}</span> 
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
div.user-text-list ul span {
  width:100%;
  height:1em;
  display:inline-block;
}
li.user {
  border: 1px solid lightblue;
  border-radius: 5px;
  margin-left: 30%;
  margin-right: 2%;
  margin-top: 2%;
  height: 50px;
  background-color: lightblue;
  box-shadow: 10px 10px 5px #AAAAAA;
}

li.user p.text {
  padding-left: 10px;
}

li.computer {
  border: 1px solid lightgreen;
  border-radius: 5px;
  margin-right: 30%;
  margin-left: 2%;
  margin-top: 2%;
  height: auto;
  background-color: lightgreen;
  box-shadow: 10px 10px 5px #AAAAAA;
}

li.computer p.text {
  padding-left: 10px;
}

div.welcome {
  border: 1px solid lightgreen;
  border-radius: 5px;
  margin-right: 30%;
  margin-left: 2%;
  margin-top: 2%;
  height: 50px;
  background-color: lightgreen;
  box-shadow: 10px 10px 5px #AAAAAA;
}

div.welcome p {
  padding-left: 10px;
}

p {
    font-family: 'Oswald', sans-serif;
    font-family: 'Zen Dots', cursive;
}
</style>