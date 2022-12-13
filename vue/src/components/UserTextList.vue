<template>
  <div class="user-text-list">
    <ul id='list' >
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
  props: {text: Object}
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
  border: 1px solid black;
  border-radius: 5px;
  margin-left: 30%;
  margin-right: 2%;
  margin-top: 2%;
  height: 50px;
  background:  rgba(81, 75, 242, 1);
  box-shadow: 10px 10px 5px black;
  animation: slide 1s;
  color: rgba(222, 223, 236, 1);
}

li.user p.text {
  padding-left: 10px;
}

li.computer {
  border: 1px solid #dedfec;
  border-radius: 5px;
  margin-right: 30%;
  margin-left: 2%;
  margin-top: 2%;
  height: auto;
  background-color: rgba(222, 223, 236, 1);
  box-shadow: 10px 10px 5px #0C0C0D;
  animation: slide 1s;
}

li.computer p.text {
  padding-left: 10px;
}

div.welcome {
  border: 1px solid #dedfec;
  border-radius: 5px;
  margin-right: 30%;
  margin-left: 2%;
  margin-top: 2%;
  height: 50px;
  background-color: #dedfec;
  box-shadow: 10px 10px 5px #0C0C0D;
}

div.welcome p {
  padding-left: 10px;
}

@keyframes slide {
  from {bottom: -20px}
  to {bottom: 0px}
  0%   { opacity: 0; }
  80% { opacity: 1; }
}
</style>