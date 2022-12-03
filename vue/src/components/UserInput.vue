<template>
  <div class="user-input">
      <form class="user-form" v-on:submit.prevent="saveText">
          <input class="user-text" type="text" v-model='userText'>
          <input type="submit" value="Save">
      </form>
  </div>
</template>

<script>
export default {
    name: "user-input",
    
    data() {
        return {
            userText: {
                input: ''
            }
        }
    },
    methods : {
        saveText() {
            this.$store.commit('SAVE_TEXT', this.userText);
            this.userText = '';
        }
    }
}
</script>

<style>
.user-input {
        border: 4px solid black;
        border-radius: 10px;
        height: 50px;
        display: flexbox;
        margin: 20px;
        background-color: white;
        flex-direction: row;
        
    }
.user-form {
    border: 4px solid black;
        border-radius: 10px;
        height: 50px;

}
</style>