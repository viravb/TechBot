<template>
 <div>
 <div class="user-bubble">
      <p>{{this.$store.state.userText}}</p>
  </div>
  </div>
</template>

<script>


export default {
    name: "user-bubble",
    props: ['text'],

    components: {
      
    }
    
}
</script>

<style>
    .user-bubble {
        border: 2px solid black;
        border-radius: 5px;
        display: flex;
        margin-left: 35%;
        margin-right: 2%;
        margin-top: 2%;
        justify-content: flex-end;
        height: 50px;
        background-color: lightblue;
        
    }
</style>