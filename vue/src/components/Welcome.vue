<template>
  <div class='full'>
    <div class='welcome'>
      <img class="header" src="https://i0.wp.com/www.jamiesale-cartoonist.com/wp-content/uploads/cartoon-robot-free.png?ssl=1" alt="">
        <h1 class='intro'>Welcome To TechBot!</h1>
        <h1>To Visit The ChatBot Please Enter Your Name :</h1>
        <form class='user-name'>
            <input type='text' v-model='name' placeholder='Your Name Here' required/>
            <input type='text' v-model='email' placeholder='Your Email Here' required/>
            <button type="submit" v-on:click.stop.prevent='submit()'>Submit</button>
        </form>
    </div>
  </div>
</template>

<script>
export default {
    name: 'welcome',
    data() {
        return {
            name: '',
            email: ''
        }
    },
    methods: {
        submit() {
            if(this.name == '') {
                alert("Please Enter A Name")
            } else {
                this.$store.commit('SAVE_NAME', this.name); 
                this.$store.commit('SAVE_EMAIL', this.email)
                this.$router.push('/home');
            }
        },
    }
}
</script>

<style>

div.full {
 height: 100vh;
}

div.welcome h1 {
  text-decoration: none;
  font-size: 30px;
}

div.welcome form {
  margin-top: 15px;
  text-align: center;
  width: 100%;
  padding: 12px 20px;
  padding-top: 40px;
  margin: 8px 0;
  box-sizing: border-box;
}

div.welcome h1.intro {
  font-size: 40px;
}

button{
  font-family: 'Ubuntu', sans-serif;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 170px;
  height: 40px;
  line-height: 1;
  font-size: 18px;
  font-weight: bold;
  letter-spacing: 1px;
  border: 3px solid #8C82FC;
  background: #fff;
  color: #8C82FC;
  border-radius: 40px;
  cursor: pointer;
  overflow: hidden;
  transition: all .35s;
}


input[type=text] {
  background-color: #c3f1e1;
}
input[type=text] {
  background-color: #C3F1E1;
  color: black;
  border: none;
  margin-left: 20px;
  height: 40px;
  width: 500px;
  font-size: 20px;
  border: 2px solid black;
  border-radius: 5px;
}

button:hover{
  background: #8C82FC;
  color: #fff;
}
</style>