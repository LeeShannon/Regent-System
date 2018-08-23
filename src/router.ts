import Vue from 'vue';
import Router from 'vue-router';
import Login from './views/Login.vue';
import Home from './views/Home.vue';
import Shipping from './views/Shipping.vue';
import Dashboard from './views/Dashboard.vue';
import Inventory from './views/Inventory.vue';
import Welcome from './views/Welcome.vue';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'login',
      component: Login,
    },
    {
      path: '/welcome',
      name: 'welcome',
      component: Welcome,
    },
    {
      path: '/home',
      component: Home,
      children: [
        {
          path: '/',
          name: 'dashboard',
          component: Dashboard,
        },
        {
          path: '/shipping',
          name: 'shipping',
          component: Shipping,
        },
        {
          path: '/inventory',
          name: 'inventory',
          component: Inventory,
        }
      ]
    }

  ]
});
