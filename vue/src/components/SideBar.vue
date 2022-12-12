<template>
  <div id='side-bar'>
    <button>something</button>
    <button>something</button>
    <button>something</button>
    <button>something</button>
    <button>something</button>
  </div>
</template>

<script>
export default {

}
</script>

<style>
  div#side-bar {
    display: flex;
    flex-direction: column;
    justify-content: space-evenly;
  }

  div#side-bar button {
    position: relative;
    top: 0;
  }
</style>