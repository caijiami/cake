const express=require("express");
const pool=require("../pool");
var router=express.Router();

router.get("/",(req,res)=>{
  var lid=req.query.lid;
  var obj={
    msgs:[],
    pics:[]
  }
  if(!lid){
    lid=1;
  }
  var sql="SELECT * FROM cake_product WHERE lid=?";
  pool.query(sql,[lid],(err,result)=>{
    if(err) throw err;
    obj.msgs=result;
    var sql="SELECT * FROM cake_product_pic WHERE pid=?";
    pool.query(sql,[lid],(err,result)=>{
        if(err) throw err;
        obj.pics=result;
        res.send(obj);
    })
  })
})


module.exports=router;