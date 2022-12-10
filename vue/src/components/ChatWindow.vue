<template>
  <div class="window">
      <GreetUser />
      <UserTextList />
  </div>
</template>

<script> 
import UserTextList from './UserTextList.vue';
import GreetUser from './GreetUser.vue';


export default {
  name: "chat-window",
  components: { 
    UserTextList,
    GreetUser
  },
}
</script>

<style>
.window {
  border: 0px solid black;
  border-radius: 10px;
  height: 700px;
  margin: 20px 20px 5px 20px;
  background-color: rgb(233, 233, 243);
  overflow: auto;
}

</style>