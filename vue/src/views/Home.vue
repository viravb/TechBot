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
import SideBar from '@/components/SideBar';



export default {
  components: { 
    ChatWindow, 
    UserInput,
    SiteIntro,
    SideBar,
  
  },
  name: "home",
}
</script>
<style >
</style>