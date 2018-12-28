<template>
    <div class="app-header">
       <header>
         <div id="nav">
           <div class="logo"><a href=""><img src="img/logo.png" alt=""></a></div>
            <ul class="navbar">
              <li class=" animated bounceInDown" :class="act==10?'active':''"  @click="index" ><a href="javascript:;"><span>Nos Produits</span><br><span>全部产品</span></a></li>
              <li class=" animated bounceInDown" :class="act==20?'active':''" @click="napoleon"><a href="javascript:;" ><span>Napoléon</span><br><span>拿破仑系列</span></a></li>
              <li class=" animated bounceInDown" :class="act==30?'active':''" @click="activity"><a href="javascript:;" ><span>Nouveauté</span><br><span>最新活动</span></a></li>
              <li class=" animated bounceInDown" :class="act==40?'active':''" @click="member"><a href="javascript:;" ><span>Mon M'CAKE</span><br><span>会员中心</span></a></li>   
            </ul> 
            <div class="nav_right">
              <ul class="navbar animated bounceInRight right_ul">
                <li>APP下载</li>
                <li>杭州</li>
                <li v-if="!loginOk" class="username" @mouseover="loginShow" @mouseout="loginHide">
                  欢迎您:<br> {{uname}}
                  <div class="nologin" v-show="noLogin" @click="outLogin">
                    <span>注销</span>  
                  </div>
                </li>
                <li v-else-if="loginOk">
                  <router-link to="/login">登陆</router-link>/<router-link to="/reg">注册</router-link>
                </li>
                <li><router-link to="/shoppCar"><img src="img/shopping.png" alt="" class="shopping"></router-link></li>
              </ul>
            </div>   
         </div>    
       </header>
                           
    </div>
</template>
<style scoped>
.app-header{
  width:100%;
  height:77px;
}
/* 头部导航 */

header{
  width:100%;
  background: #fff;
  position: fixed;
  top:0;
  left:0;
  z-index: 998;
}
.logo>a>img{
  width:12rem;
  height:70px;
}
#nav{
  display: flex;
  justify-content: space-between;
  border-top:3px solid #f5f5f5;
}
.navbar{
  display: flex;
  justify-content: space-between;
  list-style: none;
  align-items: center;
}
.navbar>li{
  display: block;
  width:155px;
  height:70px;
  text-align: center;
  box-sizing: border-box;
  cursor:pointer;
}
.active{
  border-bottom:3px solid #7b9196;
}
.navbar>li>a{
  text-decoration: none;
  color:#767676;
  font-family: "微软雅黑";
  line-height: 35px;
}
.navbar>li:not(:first-child)>a>span{
  border-left: 1px solid #f5f5f5; 
}
.nav_right>ul.navbar>li{
   width:100px;
}
.right_ul li{
  display: flex;
  justify-content: center;
  align-items: center;
}

.shopping{
  width:1.5rem;
  margin-top:1.5rem;
}
.username{
  position: relative;
}
.nologin{
  position: absolute;
  bottom:-32px;
  left:0;
  display: block;
  background: #fff;
  width:100%;
  height:2rem;
  color: rgb(129, 119, 119);
  text-align: center;
  z-index: 50;
}
</style>
<script>

  export default {
    data(){
      return {
        act:10,
        uname:'',
        loginOk:true,
        noLogin:false
      }
    },
    methods:{
      outLogin(){
        window.sessionStorage.removeItem('userName');
        this.loginOk=true;

      },
      loginShow(){
        this.noLogin=true;
      },
      loginHide(){
        this.noLogin=false;
      },
      index(){
        this.act=10;
        this.$router.push("/");
      },
      napoleon(){
        this.act=20;
        this.$router.push("/napoleon")
      },
      activity(){
        this.act=30;
        this.$router.push("/activity")
      },
      member(){
        this.act=40;
        this.$router.push("/member")
      },
      loginYes(){
        var uname=window.sessionStorage.getItem("userName");
        if(uname){
          this.uname=uname;
          this.loginOk=false;
        }
      }
    },
    created(){
        this.loginYes()
    }
  }  

</script>
