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
  background-color: white;
  
}

</style>