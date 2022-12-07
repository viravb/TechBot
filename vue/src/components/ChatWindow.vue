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
  components: { 
    UserTextList,
    GreetUser
    
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