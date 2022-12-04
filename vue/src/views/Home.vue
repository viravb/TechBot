<template>
  <div class="home">
    <h1>Welcome to TechBot!</h1>
    <chat-window />
    <user-input />

  </div>
</template>

<script>
import ChatWindow from '@/components/ChatWindow.vue'
import UserInput from '../components/UserInput.vue';

export default {
  components: { ChatWindow, UserInput},
  name: "home"
}
</script>
<style >

.home {
  background-color: aqua;
  text-align: center;
}

welcome {
 
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 10;
  background-color: rgba(0,0,0,0.5); /*dim the background*/
}
</style>

