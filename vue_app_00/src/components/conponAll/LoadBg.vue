<template>
<!-- 加载页面前的loading动画 -->
    <div>
        <div class="loading_bg" v-show="bg_show">
            <img src="http://127.0.0.1:3000/img/preloader.gif" alt="">
        </div>
   </div>
</template>
<style scoped>
    .loading_bg{
      position: absolute;
      left:0;
      top:0;
      right:0;
      bottom:0;
      display: flex;
      justify-content: center;
      align-items: center;
      z-index:19999;
      background:rgba(255,255,255,1)
   }
</style>
<script>
export default {
    data(){
        return {
            bg_show:true
        }
    },
    methods: {
        load_bg(){
            setTimeout(()=>{
                this.bg_show=false;
            },2000) 
        }
    },
    created() {
        this.load_bg();
          
    }
}
</script>
