<template>
  <div class="home">
     <SiteIntro class='intro'/>
     <SideBar class='side'/>
     <div class='chat-box'>
        <div class='window-top'>
          <p>Something</p>  
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
  background: linear-gradient(-45 deg,#0C0C0D,#B6B9F2) 
}

div.chat-box {
  grid-area: chat;
  margin-right: 25px;
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
}

div.window-top p{
  background: rgb(31, 30, 30);
  margin-top: 0px;
  height: 50px;
  opacity: blur(80%);
  color: rgb(31,30,30);
  margin-bottom: 0px;
}

</style>

