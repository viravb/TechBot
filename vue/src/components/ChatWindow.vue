<template>
<div id='chat-window'>
  <div class="window">
    <UserTextList class='list'/>
  </div>
</div>
</template>

<script> 
import UserTextList from './UserTextList.vue';

export default {
  name: "chat-window",
  components: { 
    UserTextList
  },
}

</script>

<style>

*::-webkit-scrollbar {
  width: 16px;

}

*::-webkit-scrollbar-thumb {
  background-color: #dee1e4;
  border-radius: 10px;
}

#chat-window {
  border-radius: 10px;
  height: 700px;
  background: transparent;
  overflow: auto;
  box-shadow: 10px 10px 5px black;
  opacity:60%;
  animation: slide 1s;
}
.typing-indicator {
  background-color:   #E6E7ED;
  will-change: transform;
  width: auto;
  border-radius: 50px;
  padding: 20px;
  display: table;
  margin: 0 auto;
  position: relative;
  animation: 2s bulge infinite ease-out;
}
 


@keyframes blink {
  50% {
    opacity: 1;
  }
}

@keyframes bulge {
  50% {
    transform: scale(1.05);
  }
}


@keyframes slide {
  from {bottom: -20px}
  to {bottom: 0px}
  0%   { opacity: 0; }
  100% { opacity: 1; }
}
</style>