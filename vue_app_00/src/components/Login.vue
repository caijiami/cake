<template>
    <div class="app-login">
        <div id="page_mainer" :style="'background: url('+img1.src+') top center no-repeat;'">
            <div class="login_box">
                <div class="login_right">
                    <h2>登录</h2>
                    <div class="login_cut">
                        <span :class="act==true?'active':''" @click="phone_login">手机验证码登录</span>
                        <span :class="act==false?'active':''" @click="msg_login">账号密码登录</span>
                    </div>
                    <div class="phone_login" v-if="act">
                        <p><input type="text" placeholder="请输入手机号" class="ipt_txt"></p>
                        <p><input type="text" placeholder="请输入手机验证码" class="ipt_txt"></p>
                        <p><input type="button" value="登录" class="btn_submit"></p>
                    </div>
                    <div class="phone_login" v-else-if="!act">
                        <p><input type="text" placeholder="请输入账号" class="ipt_txt" v-model="uname"></p>
                        <p><input type="password" placeholder="请输入密码" class="ipt_txt" v-model="upwd"></p>
                        <p><input type="button" value="登录" class="btn_submit" @click="loginGo"></p>
                    </div>
                </div>
                <div class="others_login">
                    <h2>其他登录方式</h2>
                    <div class="login_wx">
                        <span :style="'background: url('+img2.src+');'"></span>
                        <span :style="'background: url('+img3.src+');'"></span>
                    </div>
                    <div class="register">
                        还没有账号？
                        <router-link to="/reg">立即注册</router-link>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
span.active{
    color:#000;
    font-size: 22px;
}
.login_cut{
    margin:2rem 0;
}
.login_cut span{
    display: inline-block;
    padding: 0 34px 0 0;
    cursor: pointer;
    float: left;;
    font-size: 18px;
    font-weight: normal;
}
.phone_login{
    margin-top:5rem;
}
#page_mainer {
    margin: 0 auto;
    min-height: 500px;
    background-size: 100%;
    width: 100%;
    height: auto;
    overflow: hidden;
}  
.login_box{
    background: #fff;
    margin: 5% auto 5%;
    height: 500px;
    border-radius: 5px;
    width: 960px;
}
.login_right {
    border-right: #dddddd 1px solid;
    padding: 40px 90px 60px 90px;
    float: left;
    width: 405px;
    min-height: 400px;
    color: #767676;
}  
.login_right>h2{
    font-size: 34px;
    color: #000;
    font-weight: normal;
}
.login_right>div>p{
    margin-top:2rem;
}
.login_right p input.ipt_txt{
    background: none;
    border:0;
    border-bottom: #cdcdcd 1px solid;
    padding: 14px 135px 5px 0;
    width: 270px;
    height: 40px;
    line-height: 40px;
    float: left;
    font-size: 14px;
    color: #a3a3a3;
    margin: 0;
    outline: none;
}
.btn_submit{
    background: #b0916a;
    padding: 0 65px;
    border: none;
    margin-left: 2px;
    margin-top:2rem;
    height: 34px;
    color: #FFF;
    cursor: pointer;
    border-radius: 2px;
    width: 402px ;
    line-height: 54px ;
    height: 54px ;
    font-size: 17px;
}
.others_login {
    width: 370px;
    margin: 106px 0 0;
    float: left;
    text-align: center;
}
.others_login>h2{
    font-size: 12px;
}
.others_login .login_wx {
    margin: 75px auto 75px;
}
.others_login .login_wx span {
    display: inline-block;
    margin: 0 15px;
    width: 48px;
    height: 48px;
    cursor: pointer;
}
.register{
    text-align: center
}
.register>a{
    display: block;
    background: #b0916a;
    border-radius: 15px;
    color: #fff;
    text-decoration: none;
    width: 90px;
    line-height: 30px;
    margin: 20px auto;
    font-weight: normal;
    font-size: 14px;
}
</style>
<script>
export default {
    data(){
        return {
            img1:[],
            img2:[],
            img3:[],
            act:true,
            uname:'',
            upwd:''
        }
    },
    methods:{
        open() {
            this.$notify({
                title: '成功',
                message: '恭喜您登陆成功！三秒后自动前往首页',
                type: 'success'
            })
        },
        loginGo(){
            var uname=this.uname;
            var upwd=this.upwd;
            var reg1=/^[0-9a-zA-Z]{6,12}|[\u4e00-\u9fa5]{3,6}/;
            var reg2=/^[0-9a-zA-Z]{8,16}/;
            if(!reg1.test(uname)){
                console.log("用户名不符合规则");
                return;
            }
            if(!reg2.test(upwd)){
                console.log("密码不符合规则");
                return;
            }
            var url="http://127.0.0.1:3000/users/login";
            this.axios.post(url,`uname=${uname}&upwd=${upwd}`).then(res=>{
                console.log(res);
                if(res.data.code==1){
                    window.sessionStorage.setItem("userName",res.data.uname);
                    window.sessionStorage.setItem("userId",res.data.uid);
                    this.open();
                    setTimeout(()=>{
                        this.$router.push("/");
                        window.location.reload();
                    },3000)
                }else{
                    console.log("用户名或密码错误")
                }
            })
        },
        phone_login(){
            this.act=true;
        },
        msg_login(){
            this.act=false;
        },
        loginLoad(){
            var url="http://127.0.0.1:3000/reg/bg";
            this.axios.get(url).then(result=>{
                //console.log(result.data);
                this.img1=result.data.img1[0];
                this.img2=result.data.img2[0];
                this.img3=result.data.img2[1];
            })
        }
    },
    created() {
        this.loginLoad()
    }
}
</script>

