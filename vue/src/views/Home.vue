<template>
  <div class="home">
    <SiteIntro class='intro'/>
    <ChatWindow class='win'/>
    <UserInput class='user'/>
  </div>
</template>

<script>
import ChatWindow from '@/components/ChatWindow';
import UserInput from '@/components/UserInput';
import SiteIntro from '@/components/SiteIntro';

export default {
  components: { 
    ChatWindow, 
    UserInput,
    SiteIntro
  },
  name: "home",
}
</script>
<style >

div.home {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-template-areas: 'header header header'
                       'chat chat chat'
                       'input input input';
  height: 120vh;
  width: 100%;
}

.win {
  grid-area: chat;
}

.user {
  grid-area: input;
}

.intro {
  grid-area: header;
}

</style>

