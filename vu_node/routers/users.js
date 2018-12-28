const express=require("express");
const pool=require("../pool");
var router=express.Router();


router.post("/login",(req,res)=>{
    var uname=req.body.uname;
    var upwd=req.body.upwd;
    if(!uname){
        res.send("用户名不能为空");
    }
    if(!upwd){
        res.send("密码不能为空");
    }
    var sql="SELECT * FROM cake_users WHERE uname=? AND upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        
        if(result.length>0){
            var uid=result[0].id;
            res.send({code:1,msg:"登陆成功",uname:uname,uid:uid});
        }else{
            res.send({code:0,msg:"登陆失败"})
        }
    })
})



router.post("/reg",(req,res)=>{
    var uname=req.body.uname;
    var phone=req.body.phone;
    var upwd=req.body.upwd;
    if(!uname){
        res.send("用户名不能为空");
    }
    if(!phone){
        res.send("手机号不能为空");
    }
    if(!upwd){
        res.send("密码不能为空");
    }
    var sql="INSERT INTO cake_users(`id`, `uname`, `phone`, `upwd`, `num`) VALUES (null,?,?,?,0)"
    pool.query(sql,[uname,phone,upwd],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send({code:1,msg:"注册成功"})
        }else{
            res.send({code:0,msg:"注册失败"})
        }
    })
})


module.exports=router;