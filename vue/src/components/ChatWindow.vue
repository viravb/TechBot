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
</style>