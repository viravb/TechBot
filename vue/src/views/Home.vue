<template>
  <div class="home">
    <h1>Home</h1>
    <p>Welcome to TechBot!</p>
    <div class='name'>
      <welcome />
    </div>
    <chat-window />
    <user-input />

  </div>
</template>

<script>
import ChatWindow from '@/components/ChatWindow.vue'
import UserInput from '../components/UserInput.vue';
import Welcome from '@/components/Welcome'



export default {
  components: { ChatWindow, UserInput, Welcome },
  name: "home"
}
</script>
<style >

.home {
  background-color: aqua;
  text-align: center;
}

#id {
  position: relative;
}
welcome {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 10;
  background-color: rgba(0,0,0,0.5); /*dim the background*/
}
</style>

