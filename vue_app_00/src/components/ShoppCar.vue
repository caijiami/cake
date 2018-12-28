<template>
    <div class="app-shoppCar" v-snowflake>
        <canvas id="canvas" ></canvas>
        <div class="shopp_top"></div>
        <div class="shopp_mid"><img src="http://127.0.0.1:3000/img/shoppingCar/shopp_tit.png" alt=""></div>
        <div class="shopp_box"> 
            <div class="shopp_tab">
                <ul class="product_th pro_th_bg" >
                    <li class="pro_100"> <el-checkbox v-model="checked" label="全选" border></el-checkbox></li>
                    <li class="pro_300">商品</li>
                    <li class="pro_100">单价</li>
                    <li class="pro_200">数量</li>
                    <li class="pro_100">小计</li>
                    <li class="pro_100">操作</li>
                </ul>  
                <ul class="product_th pro_cent" v-for="item in pro_list" :key="item.id">
                    <li class="pro_100"><el-checkbox v-model="checked"></el-checkbox></li>
                    <li class="pro_300">{{item.lname}}</li>
                    <li class="pro_100 " >￥{{item.price}}元</li>
                    <li class="pro_200"> 
                        <input type="button" value="-" class="shp_inp" @click="recount(-1,item.lid,item.count)">
                        <div>{{item.count}}</div>
                        <input type="button" value="+" class="shp_inp" @click="recount(1,item.lid,item.count)">
                    </li>
                    <li class="pro_100 price">￥{{subtotal(item.price,item.count)}}元</li>
                    <li class="pro_100"><img src="http://127.0.0.1:3000/img/shoppingCar/del.png" alt="" class="del_img" @click="delPro(item.lid)"></li>
                </ul>
                <div class="account">
                    <div class="act_box">
                        <div>共 {{pro_counts}} 件商品， 合计 : ￥{{parseInt(pro_sum).toFixed(2)}}</div>
                        <div><a href="" class="act_btn">立即结算</a></div>
                    </div>
                </div>  
            </div>
            <div class="recommend">购买该商品的用户还购买了</div>
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
/* 雪花 */
#canvas{
    position: absolute;
    top:0;
    left:0;
    z-index:10;
    height:500px;
    width:100%;
}
/* 推荐商品字体 */
.recommend{
    font-size:30px;     
    margin-top: 22px;
    margin-bottom: 31px;
    text-align: center;
    color: #a3afb7
}
.shp_inp{
    width:1.5rem;
    margin:.5rem;
    background:#F3F7F9;
    border:0;
    font-size: 20px;
    

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
    margin-bottom: 3rem;
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
/* 通用属性 */
ul{
    list-style: none;
}
.pro_100{
    width:100px; 
    padding:1rem;
}
.pro_200{
    width:200px;
    padding:1rem;
}
.pro_300{
    width:300px;
    padding:1rem;
}
.del_img{
    width:30%;
    cursor: pointer;
}
.price{
    color:#f96868 !important;
}
.pro_cent>li{
    font-weight: normal !important;
}
/* 购物车结算 */
.account{
    margin-top: 5rem;
    width:100%;
    display: flex;
    justify-content: flex-end;
    margin-bottom: 5rem;
}

.act_box{
    width:500px;
    display: flex;
    align-items: center;
    justify-content: space-around;
}
.act_btn{
    display: block;
    width:100px;
    background:#f96868;
    color:#fff;
    text-align: center;
    padding:1rem .5rem; 
    text-decoration: none;     
}
/* 购物车内容表格 */
.shopp_box{
    width:100%;
    height:auto;
    margin: 0 auto;
}
.shopp_tab{
    width:1000px;
    margin: 0 auto;
}
.product_th{
    width:100%;
    display:flex;
    justify-content: flex-start;
}
.pro_th_bg{
    background: #F3F7F9;
}
.product_th>li{
    color: #526069;
    font-weight: bold;
    font-size:18px;
    display: flex;
    align-items: center;
}
/* 头部两张图片 */
.shopp_top{
    width:100%;
    height:300px;
    background-image: url(http://127.0.0.1:3000/img/shoppingCar/shopp_top.png);
    background-repeat: no-repeat;
    background-size: 100%;
    background-position-y: 50%;
}
.shopp_mid{
    text-align: center;
    padding-bottom: 2rem;
}
</style>
<script>
export default {
    data(){
        return {
            checked:false,
            pro_list:[],
            pro_sum:0,
            pro_counts:0,
            hot_list:[
                    {src:'http://127.0.0.1:3000/img/product/hot_1.jpg',name:'Velour rouge',price:'2磅/298RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_2.jpg',name:'Napoléon aux fraises',price:'2磅/318RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_3.jpg',name:'lapin détendu',price:'2.5磅/318RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_4.jpg',name:'Voyage de Daisy',price:'2.5磅/318RMB'},
                    {src:'http://127.0.0.1:3000/img/product/hot_5.jpg',name:'fromage semi-fermenté original',price:'1盒/48RMB'},
                ]
        }
    },
    methods: {
        delPro(lid){
            var uid=window.sessionStorage.getItem("userId");
            var url="http://127.0.0.1:3000/shopp/del?uid="+uid+"&lid="+lid;
                this.axios.get(url).then((res)=>{
                    this.shopp_load()
            })

        },
        recount(num,lid,count){
            if(count>1||num==1){
                var uid=window.sessionStorage.getItem("userId");
                //console.log(num,lid);
                var url="http://127.0.0.1:3000/shopp/recount?num="+num+"&uid="+uid+"&lid="+lid;
                this.axios.get(url).then((res)=>{
                    this.shopp_load()
                })
            }
        },
        subtotal(p,c){
            return p*c;
        },
        shopp_load(){
            var uid=window.sessionStorage.getItem("userId");
            //console.log(uid);
            var url="http://127.0.0.1:3000/shopp?uid="+uid;
            this.axios.get(url).then((res)=>{
                console.log(res);
                this.pro_list=res.data.pro_list;
                this.pro_sum=res.data.pro_sum;
                this.pro_counts=res.data.pro_count;
            })
        }
    },
    created(){
        this.shopp_load();
    },
    conputed: {
        
    }
}
</script>


