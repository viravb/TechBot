<template>
  <div class="window">
      <GreetUser />
      <UserTextList />

   <div class="typing-indicator">
  <span></span>
  <span></span>
  <span></span>
  </div>
  </div>
</template>

<script> 
import UserTextList from './UserTextList.vue';
import GreetUser from './GreetUser.vue';


export default {
  name: "chat-window",
  components: { 
    UserTextList,
    GreetUser
  },
}

</script>

<style>
.window {
  border: 0px solid black;
  border-radius: 10px;
  height: 700px;
  margin: 20px 20px 5px 20px;
  background-color: #0C0C0D;
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
  &::before,
  &::after {
    content: '';
    position: absolute;
    bottom: -2px;
    left: -2px;
    height: 20px;
    width: 20px;
    border-radius: 50%;
    background-color: $ti-color-bg;
  }
  &::after {
    height: 10px;
    width: 10px;
    left: -10px;
    bottom: -10px;
  }
  span {
    height: 15px;
    width: 15px;
    float: left;
    margin: 0 1px;
    background-color: #9E9EA1;
    display: block;
    border-radius: 50%;
    opacity: 0.4;
    @for $i from 1 through 3 {
      &:nth-of-type(#{$i}) {
        animation: 1s blink infinite ($i * .3333s);
      }
    }
  }
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