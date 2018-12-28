<template>
    <div class="app-member">
        <div class="user-box">
            <div class="member_title">
                <p>
                    <img src="http://127.0.0.1:3000/img/member/my_mcake.png" alt="">  
                </p>
                <span>会员中心</span>
            </div>
            <div class="member_content">
                <div class="content_left">
                    <div class="left_1">
                         <div class="stage">
                            <div class="wrapper">
                            <div class="slash"></div>
                            <div class="sides">
                                <div class="side"></div>
                                <div class="side"></div>
                                <div class="side"></div>
                                <div class="side"></div>
                            </div>
                            <div class="text">
                                <div class="text--backing">Hello</div>
                                <div class="text--left">
                                <div class="inner">Hello</div>
                                </div>
                                <div class="text--right">
                                <div class="inner">Hello</div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                     <div class="left_2">
                            <el-collapse accordion>
                                <el-collapse-item >
                                    <template slot="title">
                                    我的订单<i class="header-icon el-icon-info"></i>
                                    </template>
                                    <div @click="order_show" class="collapse_txt">▷我的订单信息</div>
                                </el-collapse-item>
                                <el-collapse-item title="完善个人资料">
                                    <div @click="datum_show" class="collapse_txt">▷我的个人资料</div>
                                </el-collapse-item>
                                <el-collapse-item title="我的优惠券">
                                    <div @click="discount_show" class="collapse_txt">▷我的所有优惠券</div>
                                </el-collapse-item>
                                <el-collapse-item title="我的余额" >
                                    <div @click="balance_show" class="collapse_txt">▷我的余额</div>
                                </el-collapse-item>
                                </el-collapse>
                        </div>
                </div>
                <!-- 我的订单内容 -->
                <div class="content_right" :style="centent_show==1?'':'display:none'">
                    <ul class="right_ul">
                      <li>
                        <span>ALL</span>
                        <p class="li_active">所有订单</p>
                      </li>
                      <li>
                        <span>FINISH</span>
                        <p>已完成(0)</p>
                      </li>
                      <li>
                        <span>PAYMENT</span>
                        <p>待付款(0)</p>
                      </li>
                      <li>
                        <span>AFTER RECEIPT</span>
                        <p>待收货(0)</p>
                      </li>
                      <li>
                        <span>EVALUATION</span>
                        <p>待评价(0)</p>
                      </li>
                      <li>
                        <span>RECORD</span>
                        <p>待传情(0)</p>
                      </li>
                    </ul>
                    <ul class="right_ul2">
                      <li class="Search">
                        <div>
                          <input type="text" placeholder="输入商品名称或订单号">
                        </div>
                        <div class="toModify">
                          <input type="text" class="btnSearch" value="搜索">
                        </div>
                      </li>
                    </ul>
                    <ul class="right_ul3">
                      <li class="msg_title">
                        <ul>
                          <li>订单信息</li>
                          <li>收货人</li>
                          <li>金额</li>
                          <li>订单状态</li>
                          <li>操作</li>
                        </ul>
                      </li>
                    </ul>
                </div>
                <!-- 我的优惠券内容 -->
                <div class="content_right" :style="centent_show==3?'':'display:none'">
                  <ul>
                    <li class="discount"><p>我的优惠/分享券<span>（在填写框中输入券码进行激活）</span></p></li>
                    <li class="Coupons">
                      <input type="text" placeholder="输入优惠卷">
                      <a href="">激活优惠券</a>
                    </li>
                  </ul>
                  <div class="discount_tet">
                    <ul class="tex_dis1">
                      <li class="dis_active"><p>全部优惠券</p></li>
                      <li><p>未激活分享券</p></li>
                      <li><p>可使用优惠券</p></li>
                      <li><p>己使用优惠券</p></li>
                      <li><p>过期优惠券</p></li>
                    </ul>
                    <ul class="tex_dis2">
                      <li>名称</li>
                      <li>有效时间</li>
                      <li>激活码</li>
                      <li>状态</li>
                      <li>操作</li>
                    </ul>

                  </div>
                </div>
                <!-- 我的余额内容 -->
                <div class="content_right" :style="centent_show==4?'':'display:none'">
                  <ul class="balance">
                    <li>
                      <p>当前余额：<span>￥0</span></p>
                    </li>
                     <li class="balance-tit">
                      <p>余额详情</p>
                    </li>
                  </ul>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
ul{
  list-style: none;
}
a{
  text-decoration: none;
}
.collapse_txt{
  cursor: pointer;
}
/* 我的余额内容开始 */
.balance>li>p{
  padding: 0 10px 6px 0;
  color: #767676;
  font-size: 18px;
  line-height: 30px;
}
.balance>li>p>span{
  color: #a5002f;
}
.balance-tit{
  margin-top:1rem;
  padding-top: 1rem;
  border-top:1px solid #eaeaea;
}
/* 我的优惠券开始 */
.discount{
  margin-top:1rem;
  padding: 5px;
}
.discount>p{
  display: block;
  padding: 0 0 6px 0;
  color: #767676;
  font-size: 18px;
  line-height: 30px;
}
.discount>p>span{
  color: rgb(176, 145, 106);
  font-size: small;
}
.Coupons>input{
  float: left;
  margin: 0;
  padding: 5px 10px 5px 10px;
  width: 300px;
  height: 40px;
  border: none;
  border-radius: 2px;
  color: #767676;
  font-size: 14px;
  line-height: 40px;
  background: #EEEEEE;
}
.Coupons>a{
  float: left;
  margin: 13px 8px 0 20px;
  padding: 3px 10px;
  border-radius: 2px;
  background: #b0916a;
  color: #FFF;
  cursor: pointer;
}
.discount_tet{
  margin-top:5rem;
  border-top: 1px solid #eaeaea;
  border-bottom: 1px solid #eaeaea;
  height:10rem;
}
.discount_tet ul{
  display: flex;
  justify-content: space-between;
}
.discount_tet>ul.tex_dis1 li{
  cursor: pointer;
}
.discount_tet>ul.tex_dis1 li p{
  line-height: 20px;
}
.discount_tet li{
  width:20%;
  padding-top:1rem;
  padding-bottom: 1rem;
  text-align: center;
  font-size: 14px;
}
.tex_dis2 li{
  background: #f5f5f5;
}
/* 我的订单内容开始 */
.member_content{
    margin: 2rem;
    border-top: 1px solid #ddd;
    display: flex;
    justify-content: flex-start;
}
/* 内容右边 */
.content_right{
  width:800px;
  padding-top:30px;
  padding-left: 20px;
  color: #767676;
}
.right_ul{
  padding-top:18px;
  display: flex;
  justify-content: space-around;
  width:700px;
}
.right_ul li{
  text-align: center;
  padding:5px;
  cursor: pointer;
}
.right_ul p.li_active{
 border-bottom: 3px #7b9196 solid;
}
.right_ul li span{
  font-size: 16px;
}
.right_ul li p{
  font-size: 12px;
  border-bottom: 3px #D9E8EB solid;
  line-height: 20px;
  
}
.right_ul2 li{
  margin-top: 15px;
  padding: 5px;
}
.right_ul2 li>div:first-child>input{
  float: left;
  margin: 0;
  padding: 5px 10px 5px 45px;
  width: 235px;
  height: 40px;
  border: none;
  border-radius: 2px;
  background: url(http://127.0.0.1:3000/img/member/Search.png) no-repeat #f0f0f0;
  background-size: 11%;
  background-position: 10px center;
  color: #767676;
  font-size: 14px;
  line-height: 40px;
}
.btnSearch{
  width:27px;
  margin-left: 10px;
  padding: 15px 15px;
  border: none;
  border-radius: 2px;
  background: #b0916a;
  color: #FFF;
  cursor: pointer;
}
.msg_title{
  margin-top: 1rem;
}
.msg_title>ul{
  background: #f5f5f5;
  padding:0.2rem 0.4rem;
  color: #767676;
}
.msg_title>ul li{
  background: #f5f5f5;
}
.right_ul3>li>ul>li{
  width:12%;
  text-align: center;
  float: left;
  font-size: 14px;
  padding-bottom: .5rem;
}
.right_ul3>li>ul>li:first-child{
  width:51%;
}
/* 内容左边 */
.content_left{
    width:300px;
}
.left_1{
    width:100%;
    height:70px;
    padding-bottom: 2rem;
    border-bottom: 1px solid #ccc;
}
/* 动态字体 */
.stage {
  width: 100%;
  height: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
}
.wrapper {
  position: relative;
  color: #000;
  font-size: 2.5rem;
  text-transform: uppercase;
  letter-spacing: 0.25rem;
  padding-top: 0.65rem;
  padding-left: 0.5rem;
  padding-right: 0.36rem;
  padding-bottom: 0.2rem;
}
.slash {
  position: absolute;
  top: 50%;
  left: 50%;
          transform: translate(-50%, -50%) rotate(-24deg) scaleY(0);
          transform-origin: center center;
  width: 0.15rem;
  height: 145%;
  background: #000;
  z-index: 4;
          animation: slash 6s ease-in infinite;
}
.slash:before {
  content: '';
  display: block;
  position: absolute;
  top: 50%;
  left: 50%;
          transform: translate(-50%, -50%);
  width: 0.75rem;
  height: 120%;
  background: #fff;
  z-index: -1;
}
.slash:after {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: #000;
}
.sides {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  overflow: hidden;
}
.sides .side {
  position: absolute;
  background: #000;
}
.sides .side:nth-child(1) {
  top: 0;
  left: 0;
  width: 100%;
  height: 0.15rem;
          transform: translateX(-101%);
          animation: side-top ease 6s infinite;
}
.sides .side:nth-child(2) {
  top: 0;
  right: 0;
  width: 0.15rem;
  height: 100%;
          transform: translateY(-101%);
          animation: side-right ease 6s infinite;
}
.sides .side:nth-child(3) {
  left: 0;
  bottom: 0;
  width: 100%;
  height: 0.15rem;
          transform: translateX(101%);
          animation: side-bottom ease 6s infinite;
}
.sides .side:nth-child(4) {
  top: 0;
  left: 0;
  width: 0.15rem;
  height: 100%;
          transform: translateY(101%);
          animation: side-left ease 6s infinite;
}
.text {
  position: relative;
}
.text--backing {
  opacity: 0;
}
.text--left {
  position: absolute;
  top: 0;
  left: 0;
  width: 51%;
  height: 100%;
  overflow: hidden;
}
.text--left .inner {
          transform: translateX(100%);
          animation: text-left 6s ease-in-out infinite;
}
.text--right {
  position: absolute;
  top: 0;
  right: 0;
  width: 50%;
  height: 100%;
  overflow: hidden;
}
.text--right .inner {
          transform: translateX(-200%);
          animation: text-right 6s ease-in-out infinite;
}
@-webkit-keyframes slash {
  0% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(0);
  }
  6% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(1);
  }
  13% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(1);
  }
  16.6% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(0);
  }
  100% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(0);
  }
}
@keyframes slash {
  0% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(0);
  }
  6% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(1);
  }
  13% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(1);
  }
  16.6% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(0);
  }
  100% {
            transform: translate(-50%, -50%) rotate(-24deg) scaleY(0);
  }
}
@-webkit-keyframes text-left {
  0% {
            transform: translateX(100%);
  }
  10% {
            transform: translateX(0);
  }
  58% {
            transform: translateX(0);
  }
  70% {
            transform: translateX(-200%);
  }
  100% {
            transform: translateX(-200%);
  }
}
@keyframes text-left {
  0% {
            transform: translateX(100%);
  }
  10% {
            transform: translateX(0);
  }
  58% {
            transform: translateX(0);
  }
  70% {
            transform: translateX(-200%);
  }
  100% {
            transform: translateX(-200%);
  }
}
@-webkit-keyframes text-right {
  0% {
            transform: translateX(-200%);
  }
  10% {
            transform: translateX(-100%);
  }
  58% {
            transform: translateX(-100%);
  }
  70% {
            transform: translateX(-300%);
  }
  100% {
            transform: translateX(-300%);
  }
}
@keyframes text-right {
  0% {
            transform: translateX(-200%);
  }
  10% {
            transform: translateX(-100%);
  }
  58% {
            transform: translateX(-100%);
  }
  70% {
            transform: translateX(-300%);
  }
  100% {
            transform: translateX(-300%);
  }
}
@-webkit-keyframes side-top {
  0%, 14% {
            transform: translateX(-101%);
  }
  24%, 55% {
            transform: translateX(0);
  }
  65% {
            transform: translateX(101%);
  }
  100% {
            transform: translateX(101%);
  }
}
@keyframes side-top {
  0%, 14% {
            transform: translateX(-101%);
  }
  24%, 55% {
            transform: translateX(0);
  }
  65% {
            transform: translateX(101%);
  }
  100% {
            transform: translateX(101%);
  }
}
@-webkit-keyframes side-right {
  0%, 14%, 23% {
            transform: translateY(-101%);
  }
  30%, 62% {
            transform: translateY(0);
  }
  72% {
            transform: translateY(101%);
  }
  100% {
            transform: translateY(101%);
  }
}
@keyframes side-right {
  0%, 14%, 23% {
            transform: translateY(-101%);
  }
  30%, 62% {
            transform: translateY(0);
  }
  72% {
            transform: translateY(101%);
  }
  100% {
            transform: translateY(101%);
  }
}
@-webkit-keyframes side-bottom {
  0%, 14%, 24%, 28% {
            transform: translateX(101%);
  }
  37%, 70% {
            transform: translateX(0);
  }
  79% {
            transform: translateX(-101%);
  }
  100% {
            transform: translateX(-101%);
  }
}
@keyframes side-bottom {
  0%, 14%, 24%, 28% {
            transform: translateX(101%);
  }
  37%, 70% {
            transform: translateX(0);
  }
  79% {
            transform: translateX(-101%);
  }
  100% {
            transform: translateX(-101%);
  }
}
@-webkit-keyframes side-left {
  0%, 14%, 24%, 34%, 35% {
            transform: translateY(101%);
  }
  44%, 79% {
            transform: translateY(0);
  }
  86% {
            transform: translateY(-101%);
  }
  100% {
            transform: translateY(-101%);
  }
}
@keyframes side-left {
  0%, 14%, 24%, 34%, 35% {
            transform: translateY(101%);
  }
  44%, 79% {
            transform: translateY(0);
  }
  86% {
            transform: translateY(-101%);
  }
  100% {
            transform: translateY(-101%);
  }
}

/* 头部图片 */
 .user-box{
     margin-top:3rem;
 }   
 .member_title{
     text-align: center;
 }
 .member_title span{
    font-size: 12px;
    color: #767676;
 }
 .member_content{
     padding: 2rem;
 }
</style>
<script>
    export default {
        data(){
            return {
              centent_show:1 
            }
        },
        methods:{
          order_show(){
            this.centent_show=1;
          },
          datum_show(){
            this.centent_show=2;
          },
          discount_show(){
            this.centent_show=3;
          },
          balance_show(){
            this.centent_show=4;
          }
        },
        created() {
             if(!window.sessionStorage.getItem("userName")){
               this.$router.push('/login')
             }  
        }
    }
</script>