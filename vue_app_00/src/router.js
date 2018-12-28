import Vue from 'vue'
import Router from 'vue-router'
import Index from './components/Index.vue'
import Napoleon from './components/Napoleon.vue'
import Activity from './components/Activity.vue'
import Login from './components/Login.vue'
import Reg from './components/Reg.vue'
import Member from './components/Member.vue'
import Product from './components/Product.vue'
import ShoppCar from './components/ShoppCar.vue'
Vue.use(Router)

export default new Router({
  routes: [
    {path:'/',component:Index},
    {path:'/napoleon',component:Napoleon},
    {path:'/activity',component:Activity},
    {path:'/login',component:Login},
    {path:'/reg',component:Reg},
    {path:'/member',component:Member},
    {path:'/product',component:Product},
    {path:'/shoppCar',component:ShoppCar}
  ]
})
