<template>
  <div class="user-text-list">
    <div v-show='$store.state.userText.length > 0' class="user-bubble">
       <p>{{text.text}}</p>
    </div>  
  </div>
</template>


<script>

export default {
  name: 'user-text-list',
  props: {text: Object},
}
</script>

<style>

.user-bubble {
    border: 2px solid black;
    border-radius: 5px;
    display: flex;
    margin-left: 35%;
    margin-right: 2%;
    margin-top: 2%;
    justify-content: flex-end;
    height: 50px;
    background-color: lightblue;
}
</style>