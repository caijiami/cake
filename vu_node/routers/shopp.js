const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/",(req,res)=>{
    var uid=req.query.uid;
    var obj={
        pro_list:[],
        pro_sum:[],
        pro_count:[]
    }
    var sql='SELECT * from cake_shopp WHERE uid=?';
    pool.query(sql,[uid],(err,result)=>{
        if(err) throw err;
        obj.pro_list=result;
        var sql='SELECT sum(price*count) AS c from cake_shopp WHERE uid=?';
        pool.query(sql,[uid],(err,result)=>{
            if(err) throw err;
            //console.log(result);
            obj.pro_sum=result[0].c;
            var sql='SELECT sum(count) AS s from cake_shopp WHERE uid=?';
            pool.query(sql,[uid],(err,result)=>{
                if(err) throw err;
                //console.log(result);
                obj.pro_count=result[0].s;
                res.send(obj);
            })
        })
    })
})

router.get("/recount",(req,res)=>{
    var num=req.query.num;
    var uid=req.query.uid;
    var lid=req.query.lid;
    var sql='UPDATE cake_shopp SET count=(count+?) WHERE uid=? AND lid=?';
    pool.query(sql,[num,uid,lid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

router.get("/del",(req,res)=>{
    var uid=req.query.uid;
    var lid=req.query.lid;
    var sql='DELETE FROM `cake_shopp` WHERE uid=? AND lid=?';
    pool.query(sql,[uid,lid],(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

router.get("/add",(req,res)=>{
    var uid=req.query.uid;
    var lid=req.query.lid;
    var price=req.query.price;
    var lname=req.query.lname;
    var count=req.query.count;
    //console.log(uid,lid,price,lname,count);
    var sql="SELECT * FROM cake_shopp WHERE lid=? AND uid=?";
    pool.query(sql,[lid,uid],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            var sql='UPDATE cake_shopp SET count=(count+?) WHERE uid=? AND lid=?';
            pool.query(sql,[count,uid,lid],(err,result)=>{
                if(err) throw err;
                if(result.affectedRows>0){
                    res.send({code:1,msg:'添加购物车成功'});
                }else{
                    res.send({code:0,msg:'添加购物车失败'});
                }    
            })
        }else{
            var sql='INSERT INTO cake_shopp(`id`, `uid`, `lid`, `lname`, `price`, `count`) VALUES (null,?,?,?,?,?)';
            pool.query(sql,[uid,lid,lname,price,count],(err,result)=>{
                if(err) throw err;
                if(result.affectedRows>0){
                    res.send({code:1,msg:'添加购物车成功'});
                }else{
                    res.send({code:0,msg:'添加购物车失败'});
                }    
            })
        }

    })

    
})


module.exports=router;