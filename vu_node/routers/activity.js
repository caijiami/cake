const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/",(req,res)=>{
    var obj={
        img1:[],
        img2:[],
        img3:[],
        img4:[],
        img5:[],
        img6:[]
    }
    var sql='SELECT * from cake_activity WHERE number=1';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.img1=result;
        var sql='SELECT * from cake_activity WHERE number=2';
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            obj.img2=result;
            var sql='SELECT * from cake_activity WHERE number=3';
            pool.query(sql,(err,result)=>{
                if(err) throw err;
                obj.img3=result;
                var sql='SELECT * from cake_activity WHERE number=4';
                pool.query(sql,(err,result)=>{
                    if(err) throw err;
                    obj.img4=result;
                    var sql='SELECT * from cake_activity WHERE number=5';
                    pool.query(sql,(err,result)=>{
                        if(err) throw err;
                        obj.img5=result;
                        var sql='SELECT * from cake_activity WHERE number=6';
                        pool.query(sql,(err,result)=>{
                            if(err) throw err;
                            obj.img6=result;
                            res.send(obj);
                        })
                    })
                })
            })
        })
    })
})


module.exports=router;