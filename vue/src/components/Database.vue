<template>
  <div>
      
  </div>
</template>

<script>
import CategoriesService from '@/services/CategoriesService.js'
export default {
    name: 'database',
    
    data() {
        return {
            everything: []
        }   
         },
         created() {
             CategoriesService.getAllThings().then(response => {
                 this.everything = (response.data);
                 console.log(this.everything);
             }).catch( error => console.error(error));
         }
}
</script>

<style>

</style>