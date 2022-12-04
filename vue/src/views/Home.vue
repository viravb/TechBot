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
  components: { ChatWindow, UserInput },
  name: "home"
}
</script>
<style >

.home {
  background-color: aqua;
  text-align: center;
}

</style>

