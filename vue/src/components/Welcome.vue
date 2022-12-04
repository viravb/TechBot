<template>
  <div>
      <h1>Please enter your name</h1>
      <form class='user-name' v-on:submit.prevent='saveName'>
          <input type='text' v-model='userName'/>
          <input type="submit" value="Save">
      </form>
  </div>
</template>

<script>
export default {
    name: 'welcome',
    methods: {
        saveName() {
            this.$store.commit('SAVE_NAME', this.userName);
        }
    }
}
</script>

<style>

div {

    border: 2px solid black;
    border-radius: 10px;
    width: 250px;
    height: 550px;
    margin: 20px;

}




</style>