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
  background:linear-gradient(135deg, #F2F2F2, #1A2873 );
}

html {
  background: linear-gradient(-45deg, #B6B9F2, #0C0C0D);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
	height: 100vh;
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