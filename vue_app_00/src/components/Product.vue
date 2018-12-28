<template>
    <div class="app-product">
        <div class="page_mainer">
            <!-- 上半商品信息容器 -->
            <div class="product_box">
                <!-- 左边ul商品小图 -->
                <div class="pro_list">
                    <div class="pro_btn_left">
                        <img src="http://127.0.0.1:3000/img/product_icon/up.png" alt="">
                    </div>
                    <div class="pro_content">
                        <ul class="thumblist">
                            <li v-for="(item,i) in pics" :key="i"><a href="javascript:;"><img :src="item.sm" alt="" @click="md_show(i)"></a></li>
                            
                        </ul>
                    </div>
                    <div class="pro_btn_right">
                        <img src="http://127.0.0.1:3000/img/product_icon/down.png" alt="">
                    </div>
                </div>
                <div class="pro_big_img">
                    <div class="zoomPad" >
                        <img :src="md_img" alt="">
                        <div class="zoomPup" :style="'left:'+img_offx+';top:'+img_offy" v-show="bigImg_show"></div>
                        <div class="zoomWindow" v-show="bigImg_show">
                            <img :src="lg_img" alt="" class="pic_lg_img" :style="'left:'+img_offx2+';top:'+img_offy2">
                        </div>
                        <div class="zoomTop" @mousemove.stop="pic_move($event)" @mouseout="pic_out"></div>
                    </div>
                </div>
                <div class="pro_details">
                    <div class="pro_name">
                        <span>{{msgs.href}}</span>&nbsp;{{msgs.subTitle}}
                    </div>
                    <div class="pro_pire">￥<span>{{msgs.price}}</span></div>
                    <ul class="change_p">
                        <li class="cur">
                            <div></div>
                            <span>1磅</span>
                        </li>
                        <li>
                            <div></div>
                            <span>2磅</span>
                        </li>
                        <li>
                            <div></div>
                            <span>3磅</span>
                        </li>
                        <li>
                            <div></div>
                            <span>4磅</span>
                        </li>
                    </ul>
                    <div class="pro_desc">
                        <span>2-3人食</span>
                        <span>16cm*10cm*8cm</span>
                        <p>提前5小时预定</p>
                    </div>
                    <div class="cake_num">
                        <span>数量</span>
                        <el-input-number v-model="num1" :min="1" :max="999"></el-input-number>
                    </div>
                    <ul class="buy_btn_box">
                        <li><input type="button" value="加入购物车" @click="addShopp"></li>
                        <li><input type="button" value="立即购买" @click="shoppGo"></li>
                    </ul>
                    <ul class="Select_view">
                        <li class="view_act">
                            <span>Best Ingredient</span>
                            <p>优质原材料</p>
                        </li>
                        <li>
                            <span>Evaluation</span>
                            <p>累计点评(2568)</p>
                        </li>
                    </ul>
                    <ul class="material">
                        <li class="material_cont">
                            <div v-for="(item,i) in state_list" :key="i">
                                <img :src="item.img" alt="">
                                <span>{{item.name}}</span>
                            </div>                           
                        </li>                 
                    </ul>
                </div>
            </div>
            <!-- 下半商品信息简介 -->
            <!-- 商品简介标题 和线 -->
            <div class="games_box">
                <div class="games_title">
                    <h2>
                        <div class="title_line1 animated" :class="line1==true?'slideInLeft':''" :style="'background: url(http://127.0.0.1:3000/img/product_icon/line.png) no-repeat 0 0;'"></div>
                        产品简介
                        <span>Synopsis</span>
                        <div class="title_line2 animated" :class="line2==true?'slideInRight':''" :style="'background: url(http://127.0.0.1:3000/img/product_icon/line.png) no-repeat -882px 0;'"></div>
                    </h2>
                </div>
            </div>
            <!-- 商品简介图 -->
            <div class="details_box">
                <div class="describe">
                    <img :src="msgs.bigSrc" alt="">
                </div>
            </div>
            <!-- 销量排行榜标题 -->
            <div class="hot_box">
                <p><img src="http://127.0.0.1:3000/img/product_icon/pro_hot.png" alt=""></p>
                <span>销量排行榜</span>
            </div>
            <!-- 销量排行榜内容 -->
            <div class="list_box">
                <ul class="image-grid">
                    <li v-for="(item,i) in hot_list" :key="i">
                        <div class="proHot_box" >
                            <a href=""><img :src="item.src" alt=""></a>
                        </div>
                        <div class="proHot_title">
                            <span>{{item.name}}</span>
                            <span>{{item.price}}</span>
                        </div>
                    </li>
                    
                </ul>
            </div>
        </div>  
    </div>
</template>
<style scoped>
.app-product{
    color: #767676;
    overflow-x: hidden;
}
ul{
    list-style: none;
}
a{
    text-decoration: none;
}
.zoomWindow{
    width:300px;
    height:300px;
    overflow: hidden;
    position: absolute;
    left:500px;
    top:0;
}
.pic_lg_img{
    position: absolute;
    top:0;
    left:0;
}
.zoomPup{
    position:absolute;
    background-color: #ffffff;
    opacity: 0.6;
    overflow: hidden;
    z-index: 101;
    width: 150px;
    height: 150px;
}
/* 大图商品介绍标题 */
.games_box{
    position: relative;
    width: 100%;
    z-index: 1;
    padding-top: 5rem;
    clear: both;
    overflow: hidden;
}
.games_title{
    width: 100%;
    text-align: center;
}
.games_title>h2{
    position: relative;
    display: inline-block;
    color:#b0916a;
    font-size: 28px;
    letter-spacing: 3px;
}
.title_line1,.title_line2{
    display: inline-block;
    position: absolute;
    top: 15px;
    left: -895px;
    width: 882px;
    height: 9px;
    background-color: #b2b2b2;
}
.title_line2{ 
    left: auto;
    right: -895px;
}
.games_title>h2>span{
    display: block;
    font-size: 16px;
    margin-top: 12px;
    letter-spacing: normal;
}
/* 热门排行商品 */
.hot_box{
    margin: auto;
    padding-bottom: 10px;
    max-width: 71pc;
    border-bottom: 1px solid #ccc;
    text-align: center
}
.hot_box span{
    font-size: 14px;
}
.list_box{
    width: 849pt;
    margin: auto;
}
.image-grid{
    width:100%;
    margin-top: 15px;
    display: flex;
    justify-content: space-between;
}
.image-grid li{
    width:19%;
    
}
.proHot_title{
    text-align: center
}
.proHot_title span{
    display: block;
    font-size: 12px;
}
/* 下半部分内容 */
.details_box .describe{
    text-align: center;
    margin-bottom: 15px;
}
.details_box{
    position: relative;
    float: left;
    margin: 2rem auto 0;
    width: 100%;
    min-height: 25pc;
}
/* 上半部分内容 */
ul.material{
    margin-top: 1rem;
    width:370px;
}
ul.material li.material_cont{
    display: flex;
    justify-content: space-between;
    flex-wrap: wrap;
}
li.material_cont div{
    margin-right: 1rem;
    margin-top: 1rem;   
}
li.material_cont div span{
    line-height: 18px;
    font-size: 14px;
}
ul.Select_view li span {
    font-size: 14px;
}
ul.Select_view li p {
    border-bottom: 3px solid #d9e8eb;
    font-size: 12px;
}
ul.Select_view li.view_act p{
    border-bottom: 3px solid #7b9196;
}
ul.Select_view li {
    float: left;
    margin: 0 50px 0 0;
    text-align: center;
    cursor: pointer;
}
ul.Select_view {
    overflow: hidden;
    padding: 18px 0 0;
    margin-top:1rem;
    border-top: 1px solid #d6d6d6;
}
ul.buy_btn_box li input {
    margin: 2px;
    width: 98%;
    height: 30px;
    border: none;
    border-radius: 2px;
    background: #b0916a;
    color: #fff;
    cursor: pointer;
}
ul.buy_btn_box li {
    float: left;
    width: 50%;
}
ul.buy_btn_box {
    overflow: hidden;
    width: 320px;
}
.cake_num{
    padding: 20px 0;
}
.pro_desc{
    color: #b6b6b6;
    line-height: 20px;
    font-size: 12px;
}
.pro_desc span{
    padding-right:10px
}
ul.change_p li span{
    position: relative;
    left: 0;
    z-index: -1;
    display: block;
    margin: 10px 0 0;
    width: auto;
    height: 25px;
    background: #f2f6f7;
    line-height: 25px;
    padding: 0 10px;
}
ul.change_p li.cur div{
    background: url(http://127.0.0.1:3000/img/product_icon/ok.png) no-repeat 2px 10px;
}
ul.change_p li div{
    position: absolute;
    left: 0;
    z-index: 1;
    width: 35px;
    height: 35px;
}
ul.change_p li{
    position: relative;
    width: auto;
    cursor: pointer;
    margin-right: 10px;
    text-align: center;
    line-height: 40px;
    height: 35px;
    float: left;
    font-size: 12px;
}
ul.change_p{
    overflow: hidden;
    margin: 10px 0 15px;
}
.pro_pire span{
    font-size: 30px;
}
.pro_pire{
    margin: 30px 0 0;
    color: #b0916a;
    font-size: 24px;
    position: relative;
    z-index: 10;
}
.pro_name span{
    padding: 0 10px 0 0;
    font-size: 22px;
}
.pro_details .pro_name{
    padding: 0 10px 0 0;
    width: 5in;
    min-height: 40px;
    border-bottom: 1px solid #d6d6d6;
    font-size: 14px;
    line-height: 40px;
}
.pro_details{
    float: left;
    margin: 20px 0 0 25px;
    width: 560px;
}
.zoomPad{
    position: relative;
    float: left;
    z-index: 102;
    cursor: crosshair;
}
.zoomTop{
    width:100%;
    height:100%;
    position: absolute;
    z-index: 200;
    top:0;
    left:0;
}
.pro_big_img{
    float: left;
    margin: 20px 0 0 8px;
    width: 480px;
}
.thumblist{
    float: left;
    margin: 0 2px;
    cursor: pointer;
}
.pro_btn_left img,.pro_btn_right img{
    width:40%;
    height:100%;
    background: #fff;
}
.pro_btn_left,.pro_btn_right{
    float: left;
    width: 92px;
    height: 20px;
    cursor: pointer;
    text-align: center;
    border:1px solid #eee;
}
.pro_list,thumblist{
    float: left;
    width: 92px;
    overflow: hidden;
}
.product_box{
    width:1200px;
    margin: 0 auto;  
}
/* 最外层div */
.page_mainer{
    width:100%;
    height:auto;
    margin: 30px auto;
}
</style>
<script>
    export default {
        data(){
            return {
                msgs:[],
                pics:[],
                img_offx:'0px',
                img_offy:'0px',
                img_offx2:'0px',
                img_offy2:'0px',
                pic_index:0,
                bigImg_show:false,
                md_img:'',
                lg_img:'',
                line1:false,
                line2:false,
                num1:1,
                state_list:[
                    {img:'http://127.0.0.1:3000/img/product_icon/faguo.jpg',name:'法国奶油'},
                    {img:'http://127.0.0.1:3000/img/product_icon/zhenyuan.png',name:'自煮草莓酱'},
                    {img:'http://127.0.0.1:3000/img/product_icon/bilishi.jpg',name:'臻选草莓'},
                    {img:'http://127.0.0.1:3000/img/product_icon/荷兰.jpg',name:'新西兰奶油奶酪'},
                    {img:'http://127.0.0.1:3000/img/product_icon/bilishi.jpg',name:'臻选白砂糖'},
                    {img:'http://127.0.0.1:3000/img/product_icon/荷兰.jpg',name:'新西兰黄油'},
                    {img:'http://127.0.0.1:3000/img/product_icon/xinxilan.jpg',name:'澳大利亚扁桃仁片'}
                ],
                hot_list:[
                    {src:'http://127.0.0.1:3000/img/product/hot_1.jpg',name:'Velour rouge',price:'2磅/298RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_2.jpg',name:'Napoléon aux fraises',price:'2磅/318RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_3.jpg',name:'lapin détendu',price:'2.5磅/318RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_4.jpg',name:'Voyage de Daisy',price:'2.5磅/318RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_5.jpg',name:'fromage semi-fermenté original',price:'1盒/48RMB'},
                ]
            }
        },
        methods:{
            addShopp(){
                var uid=window.sessionStorage.getItem("userId");
                var lid=this.msgs.lid;
                var lname=this.msgs.subTitle;
                var price=parseInt(this.msgs.price);
                var count=this.num1;
                var url="http://127.0.0.1:3000/shopp/add?"
                this.axios.get(url,{params:{uid,lid,lname,price,count}}).then((res)=>{
                    console.log(res);
                    if(res.data.code==1){
                        this.$notify({
                            title: '成功',
                            message: res.data.msg,
                            type: 'success'
                        });
                    }else{
                        this.$notify({
                            title: '提示',
                            message: res.data.msg,
                            type: 'warning'
                        });
                    }
                })
            },
            shoppGo(){
                this.$router.push("/shoppCar");
            },
            pic_out(){
                this.bigImg_show=false;
            },
            pic_move(e){
                //console.log(e);
                var offx=e.offsetX - 75;
                var offy=e.offsetY - 75;
                if(offx<0){
                    offx=0;
                }else if(offx>330){
                    offx=330;
                }
                if(offy<0){
                    offy=0;
                }else if(offy>330){
                    offy=330;
                }
                this.img_offx=offx+'px';
                this.img_offy=offy+'px';
                this.img_offx2=-offx*2+'px';
                this.img_offy2=-offy*2+'px';
                this.bigImg_show=true;
            },
            md_show(i){
                this.pic_index=i;
            },
            productScroll () {
                var scrollTop = window.pageYOffset || document.documentElement.scrollTop || document.body.scrollTop;
                console.log(scrollTop);
                if(scrollTop>10){
                    this.line1=true;
                    this.line2=true;
                }
            },
            productLoad(){
                var lid=this.$route.query.lid;             
                var url = "http://127.0.0.1:3000/product?lid="+lid;
                this.axios.get(url).then(result=>{
                    console.log(result.data);
                    this.msgs=result.data.msgs[0];
                    this.pics=result.data.pics;
                    this.md_img=this.pics[this.pic_index].md;
                    this.lg_img=this.pics[this.pic_index].lg;
                })
            }

        },
        created() {
            window.addEventListener('scroll', this.productScroll);
            this.productScroll ();
            this.productLoad();
        },
        watch:{
            pic_index(){
                this.md_img=this.pics[this.pic_index].md;
                this.lg_img=this.pics[this.pic_index].lg;
            }
        },
        conputed:{
            
        }
    }
</script>