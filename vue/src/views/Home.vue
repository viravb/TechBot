<template>
  <div class="home">
     <SiteIntro class='intro'/>
     <SideBar class='side'/>
     <div class='chat-box'>
        <div class='window-top'>
          <p></p>
        </div>
        <ChatWindow class='win'/>
        <UserInput class='user'/>
     </div>
  </div>
</template>

<script>
import SiteIntro from '@/components/SiteIntro';
import ChatWindow from '@/components/ChatWindow';
import UserInput from '@/components/UserInput';
import SideBar from '@/components/SideBar'


export default {
  components: { 
    ChatWindow, 
    UserInput,
    SiteIntro,
    SideBar
  },
  name: "home",
}
</script>
<style >

div.home {
  display: grid;
  grid-template-columns: .5fr 2fr;
  grid-template-rows: .5fr 2fr;
  grid-template-areas: "head head"
                       "bar chat";
  width: 100%;
}

div.chat-box {
  grid-area: chat;
  margin-right: 25px;
  background: rgba(13, 12, 13, 0.53);
}

.intro {
  grid-area: head;
}

.side {
  grid-area: bar;
}

div.home div.chat-box {
  border: 5px solid rgb(10, 10, 10);
  border-radius: 15px;
  box-shadow: 10px 10px 15px #0C0C0D;
}

div.window-top p{
  background-image: linear-gradient(black,rgba(0, 0, 0, 0.479), rgba(22, 20, 21, 0));
  margin-top: 0px;
  height: 50px;
  opacity: blur(80%);
  color: rgb(31,30,30);
  margin-bottom: 0px;
  border-top-left-radius: 9px;
  border-top-right-radius: 9px;
}        
</style>