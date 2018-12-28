<template>
    <div class="app-index" v-snowflake>
        <canvas id="canvas" ></canvas>
        <!-- 轮播图 -->
         <el-carousel :interval="5000" arrow="always" height="550px">
            <el-carousel-item v-for="item in list" :key="item.cid">
                <img :src="item.src" alt="" class="lunbo_img">
            </el-carousel-item>
        </el-carousel>
        <!-- 固定云 -->
        <div class="gd_yun">
            <img :src="fixation" alt="">
        </div>
        <!-- 分类导航 -->
        <section id="container">
            <div class="bread animated" :class="brd==true?'bounceInDown':''">  
                <a href="" v-for="item in breaks" :key="item.id"><img :src="item.src" alt=""></a>
            </div>
        </section>
        <section class="oneL">
            <h4 class="L_top">
                <span class="title">新品</span>
                <span>/</span>
                <span class="prefe">专区</span>
            </h4>
            <div class="top_img animated" :class="oneL_img==true?'fadeInUp':''">
                <a href=""><img :src="floor1.src" alt=""></a>
            </div>
            <div class="content animated" :class="oneL_cont==true?'lightSpeedIn':''">
                <div class="details" v-for="item in content1" :key="item.id">
                    <a :href="item.href" target="_blank"><img :src="item.src" alt=""></a>
                    <h6>{{item.title}}</h6>
                    <p>{{item.subhead}}</p>
                    <div class="div_type">
                        <a href="" class="a_type">{{item.atype1}}</a>
                        <a href="" class="a_type">{{item.atype2}}</a>
                        <a href="" class="a_type">{{item.atype3}}</a>
                    </div>
                    <div class="shopping">
                        <span class="price">{{item.price}}</span>
                        <a href="" class="shop_car">加入购物车</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="oneL">
            <h4 class="L_top">
                <span class="title">生日</span>
                <span>/</span>
                <span class="prefe">专区</span>
            </h4>
            <div class="top_img animated" :class="twoL_img==true?'fadeInUp':''">
                <a href=""><img :src="floor2.src" alt=""></a>
            </div>
            <div class="content animated" :class="twoL_cont==true?'lightSpeedIn':''">
                <div class="details" v-for="item in content2" :key="item.id">
                   <a :href="item.href" target="_blank"><img :src="item.src" alt=""></a>
                    <h6>{{item.title}}</h6>
                    <p>{{item.subhead}}</p>
                    <div class="div_type">
                        <a href="" class="a_type">{{item.atype1}}</a>
                        <a href="" class="a_type">{{item.atype2}}</a>
                        <a href="" class="a_type">{{item.atype3}}</a>
                    </div>
                    <div class="shopping">
                        <span class="price">{{item.price}}</span>
                        <a href="" class="shop_car">加入购物车</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="oneL">
            <h4 class="L_top">
                <span class="title">儿童</span>
                <span>/</span>
                <span class="prefe">专区</span>
            </h4>
            <div class="top_img animated" :class="thrL_img==true?'fadeInUp':''">
                <a href=""><img :src="floor3.src" alt=""></a>
            </div>
            <div class="content animated" :class="thrL_cont==true?'lightSpeedIn':''">
                <div class="details" v-for="item in content3" :key="item.id">
                    <a :href="item.href" target="_blank"><img :src="item.src" alt=""></a>
                    <h6>{{item.title}}</h6>
                    <p>{{item.subhead}}</p>
                    <div class="div_type">
                        <a href="" class="a_type">{{item.atype1}}</a>
                        <a href="" class="a_type">{{item.atype2}}</a>
                        <a href="" class="a_type">{{item.atype3}}</a>
                    </div>
                    <div class="shopping">
                        <span class="price">{{item.price}}</span>
                        <a href="" class="shop_car">加入购物车</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="oneL">
            <h4 class="L_top">
                <span class="title">聚会</span>
                <span>/</span>
                <span class="prefe">专区</span>
            </h4>
            <div class="top_img animated" :class="forL_img==true?'fadeInUp':''">
                <a href=""><img :src="floor4.src" alt=""></a>
            </div>
            <div class="content animated" :class="forL_cont==true?'lightSpeedIn':''">
                <div class="details" v-for="item in content4" :key="item.id">
                     <a :href="item.href" target="_blank"><img :src="item.src" alt=""></a>
                    <h6>{{item.title}}</h6>
                    <p>{{item.subhead}}</p>
                    <div class="div_type">
                        <a href="" class="a_type">{{item.atype1}}</a>
                        <a href="" class="a_type">{{item.atype2}}</a>
                        <a href="" class="a_type">{{item.atype3}}</a>
                    </div>
                    <div class="shopping">
                        <span class="price">{{item.price}}</span>
                        <a href="" class="shop_car">加入购物车</a>
                    </div>
                </div>
            </div>
        </section>
        <section class="oneL">
            <h4 class="L_top">
                <span class="title">活动门</span>
                <span>/</span>
                <span class="prefe">是被吸引了吧</span>
            </h4>
            <div class="activity animated" :class="activAll==true?'zoomInUp':''">
                <a href="" v-for="item in activity" :key="item.id"><img :src="item.src" alt=""></a>
               
            </div>
        </section>

    </div>
</template>
<style scoped>
/* 雪花 */
#canvas{
    position: absolute;
    top:0;
    left:0;
    z-index:10;
}
/* 轮播 */
.lunbo_img{
    width:100%;
    height:100%;
}
/* 固定云 */
.gd_yun{
    width:100%;
    position: relative;
}
.gd_yun>img{
    width:100%;
    position: absolute;
    top:-12px;
    left:0px;
    z-index: 8;
}
#container{
    width:100%;
    margin-top: 5rem;
}
/* 分类导航 */
.bread{
    width:80%;
    margin: 0 auto;
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-around;
}
.bread>a>img{
    width:200px;
    height:100px;
}
/* 一楼商品 */
.oneL{
    margin-top:4rem;
}

/* 广告楼层 */
.activity{
    width:80%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    margin-top:2rem;
    margin-bottom: 2rem;
}
.activity>a{
    display: inline-block;
    border-bottom: 3px solid #d9e8ec;
    padding-bottom: 6px;
    transition: all .5s linear;
}
.activity>a:hover{
    border-bottom: 3px solid #7b9196;
}
/* 公共属性 */
.content{
    width:100%;
    display: flex;
    justify-content: space-around
}
.L_top{
    color:#724228;
     width:80%;
    margin: 0 auto;
}
.title{
    font-size:26px;
    font-weight: 400;
    margin-right: 0.5rem 
}
.price{
    color:#8E5D43;
    font-size:14px; 
    margin-left: 0.5rem;
    font-weight: 300;     
}
.top_img img{
    width:100%;
}
.top_img,.content{
    width:80%;
    margin: 0 auto;
    margin-top:1.5rem;
}
.a_type{
    display: inline-block;
    border: 1px solid #D5BFA7;
    border-radius: 100px;
    padding: 0 6px 0 8px;
    color: #D5BFA7;
    margin: 8px 3px;
    font-size: 12px;
}
.details>h6{
    font-size: 16px;
    margin-top: 10px;
    line-height: 22px;
    color: #000;
}
.details{
    width:265px;
    padding:0;
    margin:0;
}
.details>p{
    font-size: 14px;
    color: #616161;
    line-height: 24px;
}
.details a{
    text-decoration: none;
}
.shopping{
    border-top: 1px dashed #D5BFA7;
    height: 37px;
    color: #b0986f;
    margin-top: 6px;
    padding-top: 14px;
}
.shop_car{
    float:right;
    display: inline-block;
    line-height: 20px;
    font-size: 12px;
    background: #643E28;
    color: #fff;
    padding: 0 10px;
}
</style>
<script>
    export default {
        data(){
            return {
               brd:false,
               oneL_img:false,
               oneL_cont:false,
               twoL_img:false,
               twoL_cont:false,
               thrL_img:false,
               thrL_cont:false,
               forL_img:false,
               forL_cont:false,
               activAll:false,
               list:[],    //轮播
               fixation:'',  //固定背景云
               breaks:[],   //楼层导航图片
               floor1:[],    //每个楼层标题图片
               floor2:[],
               floor3:[],
               floor4:[],
               content1:[],
               content2:[],
               content3:[],
               content4:[],
               activity:[]
               
            }
        },
        methods:{
            handleScroll () {
                var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
                console.log(scrollTop);
                if(scrollTop>0){
                    this.brd=true;
                }
                if(scrollTop>250){
                    this.oneL_img=true;
                }
                if(scrollTop>500){
                    this.oneL_cont=true;
                }
                if(scrollTop>1000){
                    this.twoL_img=true;
                }
                if(scrollTop>1300){
                    this.twoL_cont=true;
                }
                if(scrollTop>1820){
                    this.thrL_img=true;
                }
                if(scrollTop>2120){
                    this.thrL_cont=true;
                }
                if(scrollTop>2620){
                    this.forL_img=true;
                }
                if(scrollTop>2920){
                    this.forL_cont=true;
                }
                if(scrollTop>3424){
                    this.activAll=true;
                }
            },
           inxLoad(){    //轮播图 请求
                this.$http.get("http://127.0.0.1:3000/index").then(result=>{
                    //console.log(result.body);
                    this.list=result.body.carousel; 
                    this.fixation=result.body.fixation[0].src;
                    this.breaks=result.body.break;
                    this.floor1=result.body.floor[0];
                    this.floor2=result.body.floor[1];
                    this.floor3=result.body.floor[2];
                    this.floor4=result.body.floor[3];
                    this.content1=result.body.content1;
                    this.content2=result.body.content2;
                    this.content3=result.body.content3;
                    this.content4=result.body.content4;
                    this.activity=result.body.activity;
                    //console.log(this.activity);
                })
            }
        },
        watch:{
            
        },
        created(){
           this.inxLoad();
            window.addEventListener('scroll', this.handleScroll);
            this.handleScroll ();
            
        },
        mounted() {
            
        }
    }
</script>


