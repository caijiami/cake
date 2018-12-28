/**
 * Created by 蔡迦密 on 2018/10/28.
 */
//导入模块
const express=require("express");
const bodyParser=require("body-parser");
const cors=require("cors");
const footer=require("./routers/footer");
const index=require("./routers/index");
const napoleon=require("./routers/napoleon");
const activity=require("./routers/activity");
const reg=require("./routers/reg");
const users=require("./routers/users");
const product=require("./routers/product");
const shopp=require("./routers/shopp");
//引入路由文件
var app=express();
app.use(cors({
    origin:[
        "http://127.0.0.1:3001",
        "http://localhost:4200"
    ],
    credentials:true
}));

app.listen(3000,function(){
    console.log("创建服务器成功")
});

//   加载第三方模块 express-session
const session = require("express-session")
//7.2:对模块配置   
app.use(session({
  secret:"128位随机字符",    //安全字符串
  resave:false,             //请求保存
  saveUninitialized:true,   //初始化保存
  cookie:{
    maxAge:1000 * 60 * 60 * 24 
  }
}));

app.use(bodyParser.urlencoded({
    extended:false
}));
app.use(express.static("public"));


//路由挂载
app.use("/index",index);
app.use("/footer",footer);
app.use("/napoleon",napoleon);
app.use("/activity",activity);
app.use("/reg",reg);
app.use("/users",users);
app.use("/product",product);
app.use("/shopp",shopp);