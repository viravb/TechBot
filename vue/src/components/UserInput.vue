<template>
  <div class="user-input">
      <form v-on:submit.prevent='(filteredKeyWord())'>
          <input class="user-text" type="text" v-model='userText'>
      </form>
  </div>
</template>

<script>
export default {
    name: "user-input",
    
    data() {
        return {
            userText:''
        }
    },
    methods : {
        // saveText() {
           
            
        // },
        filteredKeyWord() {
             this.$store.commit('SAVE_TEXT', this.userText);
            if (this.userText.includes('pathway')) {
                 this.$store.state.keyword = 'pathway';
            }
            this.userText = '';
        }
    }
}
</script>

<style>

div.user-input {
    height: 100px;
    margin: 5px 20px 20px 20px;
    border-radius: 10px;
    background-color: white;
    flex-direction: row;
}

div.user-input input.user-text {
    width: 100%;
    height: 100px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 0px solid black;
    border-radius: 10px;
    background-color: white;
    resize: none;
    font-size: 16px;
}

</style>