<template>
<div id='chat-window'>
  <div class="window">
    <UserTextList class='list'/>
  </div>
</div>
</template>

<script> 
import UserTextList from './UserTextList.vue';

export default {
  name: "chat-window",
  components: { 
    UserTextList
  },
}
</script>

<style>

*::-webkit-scrollbar {
  width: 16px;

}

*::-webkit-scrollbar-thumb {
  background-color: black;
  border-radius: 10px;
}

#chat-window {
  border-radius: 10px;
  height: 700px;
  background: transparent;
  overflow: auto;
}
</style>