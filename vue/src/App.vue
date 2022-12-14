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
@import './stylesheets/darkmode.css';
</style>