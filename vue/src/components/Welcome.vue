<template>
  <div class='welcome'>
      <h1>Please enter your name :</h1>
      <form class='user-name'>
          <input type='text' v-model='name' required/>
          <button type="submit" v-on:click.stop.prevent='submit()'>Submit</button>
      </form>
  </div>
</template>

<script>
export default {
    name: 'welcome',
    data() {
        return {
            name: ''
        }
    },
    methods: {
        submit() {
            if(this.name == '') {
                alert("Please Enter A Name")
            } else {
                this.$store.commit('SAVE_NAME', this.name); 
                this.$router.push('/home');
            }
        },
    }
}
</script>

<style>

div.welcome{
    display: flex;
    flex-direction: row;
    justify-content: center;
}

div.welcome h1 {
    text-decoration: none;
    font-size: 20px;
}

div.welcome form {
    margin-top: 15px;
    padding-left: 10px;
}

</style>