<template>
    <footer class="app-footer">
        <div class="container">
            <div class="ft_left">
                <p>客服热线：4006-678-678（8:00 - 22:00）</p>
                <p>客服邮箱：cs@mcake.com</p>
            </div>
            <div class="ft_right">
                <ul>
                    <li><a href="">发现</a></li>
                    <li><a href="">公告</a></li>
                    <li><a href=""><img :src="list1.src" alt="" class="wei_img"></a> <a href=""><img :src="list2.src" alt="" class="wei_img"></a></li>
                </ul>
                <ul>
                    <li><a href="">关于我们</a></li>
                    <li><a href="">企业介绍</a></li>
                    <li><a href="">媒体合作</a></li>
                    <li><a href="">招贤纳士</a></li>
                    <li><a href="">呼叫中心</a></li>
                </ul>
                <ul>
                    <li><a href="">帮助中心</a></li>
                    <li><a href="">投诉与建议</a></li>
                    <li><a href="">会员权益</a></li>
                    <li><a href="">购物指南</a></li>
                    <li><a href="">订单相关</a></li>
                </ul>
            </div>
        </div>
        <div class="copy" :style="ft_img">Copyright&copy;2012-2018 上海卡法电子商务有限公司 版权所有 沪ICP备12022075号<img :src="list3.src" alt=""> 

</div>
    </footer>
</template>
<style scoped>
.app-footer{
    width:100%;
    background:#f2f6f7;
    clear:both;
}
.app-footer>.container{
    width:80%;
    margin: 0 auto;
    display: flex;
    flex-wrap: nowrap;
}
.ft_left{
    color:#b0916a;
    font-size: 1rem;
    width:40%;
    border-right: 1px solid #bbb;
}
.ft_left>p{
    padding-top:1.5rem;
}
.ft_right{
    width:60%;
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-around;
}
.ft_right>ul>li{
    list-style: none;
    margin-top: 0.5rem;
    text-align: center;
}
.ft_right>ul>li>a{
    text-decoration: none;
    color:#767676;
    font-size: 12px;
    
}
.ft_right>ul>li:first-child{
    font-weight: 900;
    font-size: 14px;
}
.wei_img{
    width:25px;
    height:25px;
}
/* 版权 */
.copy{
    text-align: center;
    color:#767676;
    font-size:12px;
    margin-top: 2rem;
    width: 100%;
    height: 170px;
}
.copy>img{
    width:3rem;
}
</style>
<script>
    export default {
        data(){
            return {
                list1:'',
                list2:'',
                list3:'',
                list4:'',
                ft_img:{
                    'background-image':''
                }
            }
        },
        methods:{
           footerLoad(){    //微信微博海关图片请求
                this.$http.get("http://127.0.0.1:3000/footer").then(result=>{
                    //console.log(result.body);
                    this.list1=result.body[0];
                    this.list2=result.body[1];
                    this.list3=result.body[2];
                    this.list4=result.body[3];
                    this.ft_img['background']=`url(${this.list4.src})`;
                })
            }
        },
        created(){
            this.footerLoad()
        }
    }
</script>


