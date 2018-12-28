<template>
    <div class="app-napoleon">
        <section class="nap_top">
            <div class="top_one">
                <img :src="img1L1.src" alt="">
            </div>
            <div class="top_two">
                <img :src="img1L2.src" alt="">
            </div>
            <ul class="top_swe">
                <li >
                    <a href="" @mouseenter="showenter1" @mouseleave="showleave1">
                      <img :src="img1L3.src" alt="" v-if="img1show" class="oneL_img">
                      <span v-if="img1show">{{img1L3.title}}</span>
                      <img v-if="!img1show" :src="img1L6.src" alt="">
                    </a>
                </li>
                <li>
                    <a href="" @mouseenter="showenter2" @mouseleave="showleave2">
                        <img :src="img1L4.src" alt="" v-if="img2show" class="oneL_img">
                        <span v-if="img2show">{{img1L4.title}}</span>
                        <img :src="img1L7.src" alt="" v-if="!img2show">
                    </a>
                </li>
                <li>
                    <a href="" @mouseenter="showenter3" @mouseleave="showleave3">
                        <img :src="img1L5.src" alt="" v-if="img3show" class="oneL_img">
                        <span v-if="img3show">{{img1L5.title}}</span>
                        <img :src="img1L8.src" alt="" v-if="!img3show">
                    </a>
                </li>
            </ul>
            <div class="midd1_top">
                <a href="">
                    <img :src="img2L1.src" alt="" >
                </a>
            </div>
        </section>
        <section class="nap_midd1">
            <img :src="img2L2.src" alt="" class="midd1_bg">  
            <span class="midd1_bottom">
                <a href="http://127.0.0.1:3001/#/product?lid=15" target="_blank">
                    <img :src="img2L3.src" alt="" >
                </a>
            </span>
        </section>
        <section class="nap_midd2">
            <img :src="img3L1.src" alt="" class="midd2_bg">  
            <span class="midd2_bottom">
                <a href="http://127.0.0.1:3001/#/product?lid=3" target="_blank">
                    <img :src="img3L2.src" alt="" >
                </a>
            </span>
        </section>
        <section class="nap_midd3" >
            <img :src="img4L1.src" alt="" class="midd3_bg">  
            <span class="midd3_bottom">
                <a href="http://127.0.0.1:3001/#/product?lid=16" target="_blank">
                    <img :src="img4L2.src" alt="" >
                </a>
            </span>
        </section>
        <section class="nap_bottom">
            <div>
                <h1 class="btm_h1">{{img5L1.href}} <img :src="img5L1.src" alt=""></h1>
                <p class="btm_p">{{img5L1.title}}</p>
                <ul class="btm_ul">
                    <li><a href=""><img :src="img5L2.src" alt=""></a></li>
                    <li><a href=""><img :src="img5L3.src" alt=""></a></li>
                    <li><a href=""><img :src="img5L4.src" alt=""></a></li>
                </ul>
                <table style="clear:both"></table>
            </div>
        </section>
    </div>
</template>
<style scoped>
.app-napoleon{
    width:100%;
}
/* 一楼部分 */
.nap_top{
    background: #E6FAF9;
    height: 630px;
    width:100%;
    position: relative;
    text-align: center;
}
.top_one{
    padding-top:70px;
}
.top_two{
    padding-top: 60px;
}
.top_swe{
    margin-top:2rem;
}
.top_swe>li{
    float: left;
    width: 33.3%;
    height: 160px;
    text-align: center;
    cursor: pointer;
    list-style: none;
}
.top_swe>li>a{
    text-decoration:none;
    color: #767676;
    display: block;
}
.oneL_img{
    margin-top: 60px;
}
.top_swe>li>a>span{
    display: block;
    font-family: 'Microsoft YaHei','微软雅黑','黑体','SimHei';
    font-size: 12px;
}
/* 二楼部分 *//* 三楼部分 *//* 四楼部分 */
.nap_midd1,.nap_midd2,.nap_midd3{
    height:630px;
    width:100%;
    position: relative;
}
.midd1_top{
    position: absolute;
    width: 253px;
    height: 249px;
    z-index: 23;
    bottom: -130px;
    left: 50%;
    margin-left: -127px;
}
.midd1_bg,.midd2_bg,.midd3_bg{
     height:630px;
     width:100%;
}
.midd1_bottom,.midd2_bottom,.midd3_bottom{
    position: absolute;
    bottom: 0;
    left: 50%;
    height: 59px;
    margin-left: -65px;
}
/* 底部 */
.nap_bottom{
    background: #B1916A;
    width: 100%;
    height: auto;
    position: relative;
}
.nap_bottom>div{
    width: 1200px;
    margin: auto;
    color: #FFF;
}
.btm_ul{
    padding: 30px 0;
}
.btm_ul>li{
    float: left;
    width: 33.3%;
    text-align: center;
    cursor: pointer;
    position: relative;
    overflow: hidden;
    line-height: 0;
    margin-bottom: 2rem;
}
.btm_h1{
    padding: 0 15px;
    line-height: 24px;
    font-weight: normal;
    font-size: 22px;
    margin: 45px 0 6px 0;
    float: left;
    width: 100%;
}
.btm_p{
   padding: 0 15px; 
}
</style>

<script>
export default {
    data(){
        return {
            img1show:true,
            img2show:true,
            img3show:true,
            img1L1:[],
            img1L2:[],
            img1L3:[],
            img1L4:[],
            img1L5:[],
            img1L6:[],
            img1L7:[],
            img1L8:[],
            img2L1:[],
            img2L2:[],
            img2L3:[],
            img3L1:[],
            img3L2:[],
            img4L1:[],
            img4L2:[],
            img5L1:[],
            img5L2:[],
            img5L3:[],
            img5L4:[]
        }
    },
    methods:{
        handleScroll () {
            var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
            console.log(scrollTop);
        },
        napLoad(){
            var url = "http://127.0.0.1:3000/napoleon";
            console.log(url);
            this.axios.get(url).then(result=>{
                console.log(result.data);
                this.img1L1=result.data.img1[0];
                this.img1L2=result.data.img1[1];
                this.img1L3=result.data.img1[2];
                this.img1L4=result.data.img1[3];
                this.img1L5=result.data.img1[4];
                this.img1L6=result.data.img1[5];
                this.img1L7=result.data.img1[6];
                this.img1L8=result.data.img1[7];
                this.img2L1=result.data.img2[0];
                this.img2L2=result.data.img2[1];
                this.img2L3=result.data.img2[2];
                this.img3L1=result.data.img3[0];
                this.img3L2=result.data.img3[1];
                this.img4L1=result.data.img4[0];
                this.img4L2=result.data.img4[1];
                this.img5L1=result.data.img5[0];
                this.img5L2=result.data.img5[1];
                this.img5L3=result.data.img5[2];
                this.img5L4=result.data.img5[3];
            })
        },
        showenter1(){
            this.img1show=false;
        }, 
        showleave1(){
            this.img1show=true;
        },
        showenter2(){
            this.img2show=false;
        }, 
        showleave2(){
            this.img2show=true;
        },
        showenter3(){
            this.img3show=false;
        }, 
        showleave3(){
            this.img3show=true;
        }
    },
    created(){
        this.napLoad();
        window.addEventListener('scroll', this.handleScroll);
        this.handleScroll ()
    }
}
</script>


