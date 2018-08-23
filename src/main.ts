import Vue from 'vue';
import App from './App.vue';
import router from './router';
import vueCalendar from 'vue2-simple-calendar';

Vue.use(vueCalendar, {
  // configuration goes here.
});

Vue.config.productionTip = false;

new Vue({
  router,
  render: (h) => h(App),
}).$mount('#app');
