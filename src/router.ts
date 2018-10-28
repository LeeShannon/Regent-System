import Vue from 'vue';
import Router from 'vue-router';
import Login from './views/Login.vue';
import ChangePass from './views/ChangePass.vue';
import Home from './views/Home.vue';
import Orders from './views/Orders.vue';
import Dashboard from './views/Dashboard.vue';
import Inventory from './views/Inventory.vue';
import Welcome from './views/Welcome.vue';
//test need to change later
import Users from './views/Users.vue';
import Suppliers from './views/Suppliers.vue';
import Statistics from './views/Statistics.vue';

Vue.use(Router);

export default new Router({
  routes: [
    {
      path: '/',
      name: 'login',
      component: Login,
    },
    {
      path: '/changePassword',
      name: 'changePassword',
      component: ChangePass,
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
          path: '/orders',
          name: 'orders',
          component: Orders,
        },
        {
          path: '/inventory',
          name: 'inventory',
          component: Inventory,
        },
        {
          path: '/users',
          name: 'users',
          component: Users,
        },
        {
          path: '/statistics',
          name: 'statistics',
          component: Statistics,
        },
        {
          path: '/suppliers',
          name: 'suppliers',
          component: Suppliers
        }
      ]
    }

  ]
});
