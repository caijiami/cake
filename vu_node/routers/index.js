const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/",(req,res)=>{
    var obj={
        carousel:[],
        fixation:[],
        break:[],
        floor:[],
        content1:[],
        content2:[],
        content3:[],
        content4:[],
        activity:[]
    }
    var sql='SELECT * from cake_carousel';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        obj.carousel=result;
        var sql='SELECT * from cake_fixation where number=1';
        pool.query(sql,(err,result)=>{
            if(err) throw err;
            obj.fixation=result;
            var sql='SELECT * from cake_break where number=1';
            pool.query(sql,(err,result)=>{
                if(err) throw err;
                obj.break=result;
                var sql='SELECT * from cake_floor';
                pool.query(sql,(err,result)=>{
                    if(err) throw err;
                    obj.floor=result;
                    var sql='SELECT * from cake_content where number=1';
                    pool.query(sql,(err,result)=>{
                        if(err) throw err;
                        obj.content1=result;
                        var sql='SELECT * from cake_content where number=2';
                        pool.query(sql,(err,result)=>{
                            if(err) throw err;
                            obj.content2=result;
                            var sql='SELECT * from cake_content where number=3';
                            pool.query(sql,(err,result)=>{
                                if(err) throw err;
                                obj.content3=result;
                                var sql='SELECT * from cake_content where number=4';
                                pool.query(sql,(err,result)=>{
                                    if(err) throw err;
                                    obj.content4=result;
                                    var sql='SELECT * from cake_event';
                                    pool.query(sql,(err,result)=>{
                                        if(err) throw err;
                                        obj.activity=result;
                                        res.send(obj);
                                    })
                                })
                            })
                        })
                    })
                })
            })
        })
    })
})

module.exports=router;