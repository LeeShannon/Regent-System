import Vue from 'vue';
import App from './App.vue';
import router from './router';
import vueCalendar from 'vue2-simple-calendar';
import 'mdbvue/build/css/mdb.css';

Vue.use(vueCalendar, {
  // configuration goes here.
});

Vue.config.productionTip = false;

new Vue({
  router,
  render: (h) => h(App),
}).$mount('#app');
