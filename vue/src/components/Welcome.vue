<template>
  <div class='full'>
    <div class='wel'>
      <img class="header" src="../../images/newrobot.png" alt="">
        <h1 class='intro'>Welcome To TechBot!</h1>
        <h1>To Visit The ChatBot Please Enter Your Name :</h1>
        <p class='instructions'>Please enter your name and email then take your picture and hit submit!</p>
        <form class='user-name'>
            <input type='text' v-model='name' placeholder='Your Name Here' required/>
            <input type='text' v-model='email' placeholder='Your Email Here' required/>
            <button class="welcome-button" type="submit" v-on:click.stop.prevent='submit(), stopCameraStream()'>Submit</button>
        </form>
    </div>
    <div id='camera'>
      <div class="camera-button">
        <button type="button" class="camera-open welcome-button" :class="{ 'is-primary' : !isCameraOpen, 'is-danger' : isCameraOpen}" @click="toggleCamera">
          <span v-if="!isCameraOpen">Open Camera</span>
          <span v-else>Close Camera</span>
      </button>
    </div>
    <div v-show="isCameraOpen && isLoading" class="camera-loading">
      <ul class="loader-circle">
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
    <div v-if="isCameraOpen" v-show="!isLoading" class="camera-box" :class="{ 'flash' : isShotPhoto }">
      <div class="camera-shutter" :class="{'flash' : isShotPhoto}"></div>
      <video v-show="!isPhotoTaken" ref="camera" :width="450" :height="337.5" autoplay></video>
      <canvas v-show="isPhotoTaken" id="photoTaken" ref="canvas" :width="450" :height="337.5"></canvas>
    </div>
    <div v-if="isCameraOpen && !isLoading" class="camera-shoot">
      <button type="button" class="button welcome-button" @click="takePhoto">Take Photo!</button>
    </div>
  </div>
</div>
</template>
<script>

export default {
    name: 'welcome',
    components: {
      
    },
    data() {
        return {
            name: '',
            email: '',
            isCameraOpen: false,
            isPhotoTaken: false,
            isShotPhoto: false,
            isLoading: false,
            link: '#'
        }
    },
    methods: {
        submit() {
            if(this.name == '') {
                alert("Please Enter A Name")
            } else {
                this.$store.commit('SAVE_NAME', this.name); 
                this.$store.commit('SAVE_EMAIL', this.email)
                this.$router.push('/home');
                const canvas = document.getElementById("photoTaken").toDataURL("image/jpeg");
                this.$store.state.newPicture = canvas;
            }
        },
        toggleCamera() {
            if(this.isCameraOpen) {
                this.isCameraOpen = false;
                this.isPhotoTaken = false;
                this.isShotPhoto = false;
                this.stopCameraStream();
            } else {
                this.isCameraOpen = true;
                this.createCameraElement();
            }
        },
        createCameraElement() {
        this.isLoading = true;
            const constraints = (window.constraints = {
                audio: false,
                video: true
            });
            navigator.mediaDevices
                .getUserMedia(constraints)
                .then(stream => {
            this.isLoading = false;
            this.$refs.camera.srcObject = stream;
            })
            .catch(() => {
            this.isLoading = false;
                alert("May the browser didn't support or there is some errors.");
            });
        },
        stopCameraStream() {
            let tracks = this.$refs.camera.srcObject.getTracks();
			tracks.forEach(track => {
				track.stop();
		});
    },
    
    takePhoto() {
      if(!this.isPhotoTaken) {
        this.isShotPhoto = true;

        const FLASH_TIMEOUT = 50;

        setTimeout(() => {
          this.isShotPhoto = false;
        }, FLASH_TIMEOUT);
      }
      
      this.isPhotoTaken = !this.isPhotoTaken;
      
      const context = this.$refs.canvas.getContext('2d');
      context.drawImage(this.$refs.camera, 0, 0, 450, 337.5);
    },
    }
}
</script>
<style>
</style>