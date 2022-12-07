<template>
  <div class='greet'>
    <div>
      <p>{{`Welcome, ${$store.state.userName}`}}</p>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style>
div.greet {
    border: 2px solid black;
    border-radius: 5px;
    display: flex;
    margin-right: 35%;
    margin-left: 4.5%;
    margin-top: 2%;
    justify-content: flex-start;
    height: 50px;
    background-color: lightgreen;
}
div.greet p {
    font-family: 'Oswald', sans-serif;
    font-family: 'Zen Dots', cursive;
}
</style>