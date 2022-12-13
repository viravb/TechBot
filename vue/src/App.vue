<template>
  <div id="app" class = 'body'>

    <!-- <div id="nav">
      <router-link v-bind:to="{ name: 'home' }">Home</router-link>&nbsp;|&nbsp;
      <router-link v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>
    </div> -->
    <router-view /> 
  </div>
</template>
<style>
 

#app {
  min-height: 100vh;
}

html {
  background: linear-gradient(-45deg, #00467F, rgb(31, 190, 211), #82ccb0);
	background-size: 400% 400%;
	animation: gradient 30s ease infinite;
	height: 100vh;
	font-family: 'Josefin Sans', sans-serif;
}
@keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}


</style>