import Vue from 'vue';
import './plugins/vuetify';
import App from './App.vue';
import router from './router';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'mdbvue/build/css/mdb.css';
import VueMaterial from 'vue-material';
import 'vue-material/dist/vue-material.min.css';
import firebase from 'firebase';

Vue.use(VueMaterial);

Vue.config.productionTip = false;

new Vue({
  router,
  render: (h) => h(App),
  created() {
    firebase.initializeApp({
      apiKey: 'AIzaSyA5lEALGoSMsmMH0ji-E1kgbIQZFPDgfF8',
      authDomain: 'regent-produce.firebaseapp.com',
      databaseURL: 'regent-produce.firebaseio.com',
      storageBucket: 'gs://regent-produce.appspot.com',
    });
  }
}).$mount('#app');
