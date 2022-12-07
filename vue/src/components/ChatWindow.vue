<template>
  <div class="window">
      <ComputerBubble v-for='answer in $store.state.answers' v-bind:key='answer.id' v-bind:answer='answer'/>
      <UserTextList v-for='text in $store.state.userText' v-bind:key='text.id' v-bind:text='text'/>
  </div>
</template>

<script>
import ComputerBubble from './ComputerBubble.vue';
import UserTextList from './UserTextList.vue';


export default {
  components: { 
    ComputerBubble, 
    UserTextList,
    
  },
    name: "chat-window",

    

}
</script>

<style>
.window {
  border: 4px solid black;
  border-radius: 10px;
  height: 700px;
  margin: 20px 20px 5px 20px;
  background-color: white;
  overflow: auto;
}

</style>