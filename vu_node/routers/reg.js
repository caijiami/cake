const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/bg",(req,res)=>{
    var obj={
        img1:[],
        img2:[]
    }
    var sql='SELECT * From cake_reg WHERE number=1';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.img1=result;
        var sql='SELECT * From cake_reg WHERE number=2';
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            obj.img2=result;
            res.send(obj);
        })
    })
})


module.exports=router;