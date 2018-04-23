import Vue from 'vue'
import App from './App'
import router from './router'
import VueResource from 'vue-resource';

Vue.config.productionTip = false

Vue.use(VueResource);
Vue.http.options.root = '../static/';

new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>'
})
