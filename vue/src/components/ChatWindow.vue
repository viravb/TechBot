<template>
  <div class="window">
       <welcome />
      <computer-bubble />
      <user-text-list />
  </div>
</template>

<script>
import ComputerBubble from './ComputerBubble.vue'
import UserTextList from './UserTextList.vue'
import Welcome from '@/components/Welcome.vue'

export default {
  components: { ComputerBubble, UserTextList, Welcome },
    name: "chat-window"

}
</script>

<style>
    .window {
        border: 4px solid black;
        border-radius: 10px;
        height: 800px;
        display: flexbox;
        margin: 20px;
        background-color: white;
        flex-direction: row;
    }

</style>