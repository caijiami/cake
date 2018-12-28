import Vue from 'vue'
import App from './App.vue'
import router from './router'
import vueResource from 'vue-resource'
import Header from './components/conponAll/Header.vue'
import Footer from './components/conponAll/Footer.vue'

Vue.component("my-footer",Footer)
Vue.component("my-header",Header)
//引入element  ui包
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
//注册element  ui
Vue.use(ElementUI);

import './lib/mui/css/animate.css';

//3.1:引入axios库(VueResource)
import axios from "axios"
//3.2:跨域保存session值
axios.defaults.withCredentials=true
//3.3:注册组件
Vue.prototype.axios=axios
Vue.directive("snowflake",{
  inserted(el,binding){
    var c = document.getElementById('canvas'), 
    $ = c.getContext("2d"),
	  w = c.width = window.innerWidth, 
    h = c.height = window.innerHeight;
    function makeItSnow() {
      var snow,  
        arr = [],
        num = 500,
        tsc = 1, 
        sp = 1,
        sc = 1.3, 
        t = 0, 
        mv = 20, 
        min = 1;
      for (var i = 0; i < num; ++i) {
          snow = new Flake();
          snow.y = Math.random() * (h + 50);
          snow.x = Math.random() * w;
          snow.t = Math.random() * (Math.PI * 2);
          snow.sz = (100 / (10 + (Math.random() * 100))) * sc;
          snow.sp = (Math.pow(snow.sz * .8, 2) * .15) * sp;
          snow.sp = snow.sp < min ? min : snow.sp;
          arr.push(snow);
        }
        go();
        function go(){
          var f;
        window.requestAnimationFrame(go);
          $.clearRect(0, 0, w, h);
          $.fillRect(0, 0, w, h);
          $.fill();
            for (var i = 0; i < arr.length; ++i) {
              f = arr[i];
              f.t += .05;
              f.t = f.t >= Math.PI * 2 ? 0 : f.t;
              f.y += f.sp;
              f.x += Math.sin(f.t * tsc) * (f.sz * .3);
              if (f.y > h + 50) f.y = -10 - Math.random() * mv;
              if (f.x > w + mv) f.x = - mv;
              if (f.x < - mv) f.x = w + mv;
              f.draw();
          }
      }
      function Flake() {
        this.draw = function() {
            this.g = $.createRadialGradient(this.x, this.y, 0, this.x, this.y, this.sz);
          this.g.addColorStop(0, 'hsla(255,255%,255%,1)');
          this.g.addColorStop(1, 'hsla(255,255%,255%,0)');
          $.moveTo(this.x, this.y);
          $.fillStyle = this.g;
          $.beginPath();
          $.arc(this.x, this.y, this.sz, 0, Math.PI * 2, true);
          $.fill();
        }
      }
    }
    window.addEventListener('resize', function(){
      c.width = w = window.innerWidth;
      c.height = h = window.innerHeight;
    }, false);

    makeItSnow();
  }
})

Vue.use(vueResource)
Vue.config.productionTip = false
Vue.http.options.emulateJSON = true;  //6:全局设置post 时候表音的数据组织格式为 application/x-www-form-urlencoded
//5: 设置请求的根路径 
//Vue.http.options.root = "http://127.0.0.1/vue_ser/";
new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
