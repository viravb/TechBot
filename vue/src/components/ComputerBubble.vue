<template>
  <div class="computer-bubble">
      <p>Welcome, user!</p>
  </div>
</template>

<script>
import CategoriesService from '@/services/CategoriesService.js'

export default {

    data() {
        return {
            database: []
        }
    },
    created() {

        CategoriesService.getAllThings().then(response => {
            this.database = response.data;
        }).catch( error => console.error(error));

    }

}
</script>

<style>
.computer-bubble {
        border: 2px solid black;
        border-radius: 5px;
        display: flex;
        margin-right: 35%;
        margin-left: 2%;
        margin-top: 2%;
        justify-content: flex-start;
        height: 50px;
        background-color: lightgreen;
        
    }
</style>