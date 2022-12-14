<template>
 <div id="embed-iframe" ref="embedIframe">
     <h1>Pick an episode...</h1>
    <ul id="episodes">
      <li>
        <button data-spotify-id="spotify:episode:7makk4oTQel546B0PZlDM5">
          My Path to Spotify: Women in Engineering
        </button>
      </li>
      <li>
        <button data-spotify-id="spotify:episode:43cbJh4ccRD7lzM2730YK3">
          What is Backstage?
        </button>
      </li>
      <li>
        <button data-spotify-id="spotify:episode:6I3ZzCxRhRkNqnQNo8AZPV">
          Introducing Nerd Out@Spotify
        </button>
      </li>
    </ul></div> 
</template>

<script>

export default {
    
    

}
</script>

<style>
body {
    font: 0.7rem sans-serif;
  }

  h1 {
    margin:  10px;
  }

  ul#episodes {
    float: left;
    margin:  0 10px;
    padding: 0;
    width: 35%;
  }

  ul#episodes > li {
    list-style-type: none;
  }

  ul#episodes button {
    position: initial;
    transform: none;
    border-radius:  7px;
    border: 0;
    background: #191414;
    color: #fff;
    padding:  10px;
    margin:  0 0 3px 0;
    width: 100%;
    cursor: pointer;
  }

  button:hover {
    background: #1Db954;
  }


</style>