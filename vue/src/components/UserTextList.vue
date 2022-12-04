<template>
  <div class="user-text-list">
    <div v-if='getUserTexts.length > 0'>
       <user-bubble v-for="userText in getUserTexts" v-bind:key="userText.input"/>
    </div>  
  </div>
</template>


<script>
import UserBubble from './UserBubble.vue';

export default {
  name: 'user-text-list',
  components: {
      UserBubble 

  },

    computed: {
        getUserTexts() {
            const texts = this.$store.state.userText;
            return texts;
            
        }
    }


}
</script>

<style>

</style>