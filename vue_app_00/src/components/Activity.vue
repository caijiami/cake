<template>
    <div class="app-activity" v-snowflake>
        <canvas id="canvas" ></canvas>
        <section class="banner" :style="'background-image:url('+banner_bg+')'">
        </section>
        <section class="act_1L" :style="'background-image:url('+bg_img.src+')'">
            <div class="div_1L1 animated" :class="activ1L1==true?'fadeInUp':''"><img :src="img1L1.src" alt=""></div>
            <div class="div_1L2 animated" :class="activ1L2==true?'fadeInUp':''"><img :src="img1L2.src" alt=""></div>
            <div class="div_1L3 animated" :class="activ1L3==true?'fadeInUp':''">
                <img :src="img1L3.src" alt="">
                <a href="javascript:;"> <img :src="img1L4.src" alt="" class="box_left animated" :class="box1==true?'hinge':''" @click="click_b1"></a>
                <a href="javascript:;"> <img :src="img1L5.src" alt="" class="box_right animated" :class="box2==true?'hinge':''" @click="click_b2"></a>
            </div>
            <div class="div_1L4 animated" :class="activ1L4==true?'fadeInUp':''" :style="'background-image:url('+img1L7.src+')'">
                <img :src="img1L6.src" alt="">
            </div>
        </section>
        <section class="act_2L">
            <div class="two_content">
                <div class="two_bg animated" :class="activ2L1==true?'fadeInUp':''">
                    <img :src="img2L1.src" alt="">
                </div>
                <div class="two_btn animated" :class="activ2L2==true?'fadeInRight':''" :style="'background-image:url('+img2L2.src+')'"></div>
                <div class="two_carousel">
                    <el-carousel :interval="3000" arrow="never" height="382px">
                        <el-carousel-item v-for="item in img2L3" :key="item.id">
                            <img :src="item.src" alt="" class="lunbo_img">
                        </el-carousel-item>
                    </el-carousel>
                </div>
            </div>
        </section>
        <section class="act_3L" :style="'background-image:url('+bg_img.src+')'">
            <div class="two_content">
                <div class="two_bg animated" :class="activ3L1==true?'fadeInUp':''">
                    <img :src="img3L1.src" alt="">
                </div>
                <div class="swe_btn animated" :class="activ3L2==true?'fadeInLeft':''" :style="'background-image:url('+img2L2.src+')'"></div>
                <div class="swe_carousel">
                    <el-carousel :interval="3000" arrow="never" height="382px">
                        <el-carousel-item v-for="item in img3L2" :key="item.id">
                            <img :src="item.src" alt="">
                        </el-carousel-item>
                    </el-carousel>
                </div>
            </div>
            <div class="for_topbg">
                <img :src="img4L3.src" alt="">
            </div>
        </section>
        <section class="act_4L" :style="'background-image:url('+bg_img.src+')'">
            <div class="for_content">
                <div class="animated" :class="activ4L1==true?'fadeInUp':''">
                    <img :src="img4L1.src" alt="">
                </div>
                <div :style="'background-image:url('+img4L2.src+')'" class="for_btn animated" :class="activ4L2==true?'fadeInUp':''"></div>
            </div>
        </section>
        <section  :style="'background-image:url('+imgFooter.src+')'"> 
            <div class="foot">
                 <h2>活动规则</h2>
                <p>1、活动时间：2018年12月3日-2018年12月31日</p>
                <p>2、活动城市：上海、北京、苏州、杭州</p>
                <p>3、支付方式：微信、支付宝、现金</p>
                <p>4、圣诞童话镇最早配送时间：2018年12月6日<br>最晚配送时间：2018年1月6日(上海，苏州，杭州），2018年1月10日(北京)</p>
                <p>5、活动内容：<br>
                    ·凡活动页面用户点击圣诞礼盒，即可有机会获赠一份圣诞礼物，每位用户仅限参与1次<br>
                    ·凡活动页面购买圣诞款蛋糕前500名享早鸟价318元，不与其他优惠同享<br>
                    ·凡在活动期间用户购买蛋糕类商品，加22.9元即可换购雪杉小屋·圣诞礼盒1盒</p>
                <p>6、本活动与会员等级制度、积分同享，但不与其他优惠同享</p>
                <p>7、本活动最终解释权归MCAKE所有</p>
            </div>
        </section>
    </div>
</template>
<style scoped>
 .banner{
    z-index: 1;
    height: 847px;
    overflow: hidden;
    width:100%;
    background-position: center center;
 } 
 /* 雪花 */
#canvas{
    position: absolute;
    top:0;
    left:0;
    z-index:10;
}
 /* 一楼   */
 .act_1L{
     text-align: center;
     
 }
 .div_1L1{
     margin-top:2rem;
 }
 .div_1L2{
     margin: 80px auto 0;
 }
 .div_1L3{
     position:relative;
     width:501px;
     margin:0 auto;
 }
 .div_1L4{
    background-position: center center;
    background-size: 100%;
 }
 .box_left,.box_right{
     position:absolute;
     bottom:30px;
 }
.box_left{
    left:150px;
}
.box_right{
    right:86px;
}
/* 二楼 */
.two_content,.for_content{
    padding-top:5rem;
    width:1200px;
    margin: 0 auto;
    text-align: center;
    position: relative;
}
.two_btn{
    width: 177px;
    height: 48px;
    position: absolute;
    top: 560px;
    left: 746px;
    cursor:pointer;
}
.two_carousel,.swe_carousel{
    width:500px;
    position: absolute;
    border-radius: 10px;
    overflow: hidden;
    cursor:pointer;
}
.two_carousel{
    top:265px;
    left:100px;
}
/* 三楼 */
.swe_btn{
    width: 177px;
    height: 48px;
    position: absolute;
    top: 685px;
    left: 224px;
    cursor:pointer;
}
.swe_carousel{
    top:415px;
    left:540px;
}
.act_3L{
    padding-bottom:2rem;
    position: relative;
}
/* 四楼 */

.for_topbg>img{
    height:250px;
    width:100%;
    position: absolute;
    bottom:-250px;
    left:0;
}
.for_btn{
    width: 177px;
    height: 48px;
    margin: 3rem auto;
    cursor: pointer;
}
/* 尾部活动说明 */
.foot{
    width: 710px;
    margin: 0 auto;
    padding: 100px 0 100px 55px;
    color:#fff;
}
.foot>h2{
    font-size: 24px;
    font-weight: 400;
    margin-bottom: 5px;
}
.foot>p{
    font-size: 18px;
    line-height: 1.8em;
    padding-left: 1.5em;
    text-indent: -1.5em;
}
</style>
<script>
export default {
    data(){
        return {
            banner_bg:'',
            activ1L1:false,
            activ1L2:false,
            activ1L3:false,
            activ1L4:false,
            activ2L1:false,
            activ2L2:false,
            activ3L1:false,
            activ3L2:false,
            activ4L1:false,
            activ4L2:false,
            box1:false,
            box2:false,
            img1L1:[],
            img1L2:[],
            img1L3:[],
            img1L4:[],
            img1L5:[],
            img1L6:[],
            img1L7:[],
            bg_img:[],
            img2L1:[],
            img2L2:[],
            img2L3:[],
            img3L1:[],
            img3L2:[],
            img4L1:[],
            img4L2:[],
            img4L3:[],
            imgFooter:[]
            
        }
    },
    methods:{
        click_b1(){
            this.box1=true;
            const h = this.$createElement;
            this.$notify({
                title: '小可爱',
                message: h('i', { style: 'color: #B69E6E'}, '恭喜您中了本无敌可爱蜜蜜送出的十元优惠券')
            });
        },
        click_b2(){
            this.box2=true;
            const h = this.$createElement;
            this.$notify({
                title: '小可爱',
                message: h('i', { style: 'color: #B69E6E'}, '恭喜您中了本无敌可爱蜜蜜送出的二十元优惠券')
            });
        },
        handleScroll () {
            var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
            console.log(scrollTop);
            if(scrollTop>230){
                this.activ1L1=true;
            }
            if(scrollTop>600){
                this.activ1L2=true;
            }
            if(scrollTop>800){
                this.activ1L3=true;
            }
            if(scrollTop>1286){
                this.activ1L4=true;
            }
            if(scrollTop>1660){
                this.activ2L1=true;
            }
            if(scrollTop>2124){
                this.activ2L2=true;
            }
            if(scrollTop>2375){
                this.activ3L1=true;
            }
            if(scrollTop>2982){
                this.activ3L2=true;
            }
            if(scrollTop>3187){
                this.activ4L1=true;
            }
            if(scrollTop>3900){
                this.activ4L2=true;
            }
        },
        activLoad(){
            this.axios.get("http://127.0.0.1:3000/activity").then(result=>{
                console.log(result.data.img6);
                this.banner_bg=result.data.img1[0].src;
                this.img1L1=result.data.img2[0];
                this.img1L2=result.data.img2[1];
                this.img1L3=result.data.img2[2];
                this.img1L4=result.data.img2[3];
                this.img1L5=result.data.img2[4];
                this.img1L6=result.data.img2[5];
                this.img1L7=result.data.img2[6];
                this.bg_img=result.data.img2[7];
                this.img2L1=result.data.img3[0];
                this.img2L2=result.data.img3[1];
                this.img2L3=result.data.img3.slice(2);
                this.img3L1=result.data.img4[0];
                this.img3L2=result.data.img4.slice(1);
                this.img4L1=result.data.img5[0];
                this.img4L2=result.data.img5[1];
                this.img4L3=result.data.img5[2];
                this.imgFooter=result.data.img6[0];
               
                

            })
        }
    },
    created(){
        this.activLoad();
        window.addEventListener('scroll', this.handleScroll);
        this.handleScroll ()
    }
}
</script>


