<template>
<div id="home animated fadeIn">
  <div id="wrapper" :class="{ show: showMenu }">

    <!-- sidebar -->
    <div class="sidebar-wrapper">
      <div class="logo" align="center">
      </div>
      <ul class="sidebar-nav">
        <li>
          <router-link to="/home" tag="a"> <i class="fas fa-home" id="icon"></i> <span class="test">Dashboard</span></router-link>
        </li>
        <li>
          <router-link to="/orders"> <i class="fas fa-ship" id="icon"></i> <span class="test">Orders</span></router-link>
        </li>
        <li>
          <router-link to="/inventory"> <i class="fas fa-box-open" id="icon"></i> <span class="test">Inventory</span></router-link>
        </li>
        <li>
          <router-link to="/suppliers"> <i class="fas fa-truck" id="icon"></i> <span class="test">Suppliers</span></router-link>
        </li>
        <li>
          <router-link to="/statistics"> <i class="fas fa-chart-bar" id="icon"></i> <span class="test">Statistics</span> </router-link>
        </li>
        <li>
          <router-link to="/users"> <i class="fas fa-user" id="icon"></i> <span class="test">Users</span></router-link>
        </li>
        <li>
          <span @click="logout()"> <i class="fas fa-sign-out-alt" id="icon"></i> <span class="test">Logout</span></span>
        </li>
      </ul>
    </div>

    <!-- main content -->

    <div class="content-wrapper">
      <div class="container-fluid">
        <div class="some-grid">
          <a href="#" id="menu-toggle" @click="showMenu = !showMenu" style="margin-left: 15px" class="menu-btn">
            <i class="fas fa-bars bar"></i>
          </a>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <router-view/>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>
</template>

<script>
import State from "../store/state";
import router from '../router';
export default {
  data() {
    return {
      showMenu: false
    }
  },
  methods: {
    logout() {
      State.methods.revokeLogin()
      router.push('/')
      console.log('User has been logged out')
      console.log(State.data.loggedIn)
    }
  }
}
</script>

<style>
body {
  background-color: #F2F4F7 !important;
}
/* sidebar (currently hidden) */

.sidebar-wrapper {
  z-index: 1;
  position: absolute;
  width: 55px;
  height: 100%;
  overflow: hidden;
  /* background-color: #3a4a63; */
  background: linear-gradient(to right, #37ace3, #3482ba);
  padding-top: 10px;
  position: fixed;
}

.sidebar-nav {
  padding: 0;
  list-style: none;
  margin-top: 100px;
}

.sidebar-nav li {
  /* text-indent: 15px; */
  line-height: 40px;
  padding-top: 5px;
  padding-bottom: 5px;
}

.sidebar-nav li a {
  text-decoration: none;
  /* color: #ddd; */
  color: white;
}

.test {
  display: none;
}

.sidebar-nav li:hover {
  background-color: #2b80bc;
}

#icon {
  padding-left: 20px;
  padding-right: 35px;
  /* color: #ddd; */
  color: white;
}

.logo {
  width: 70px;
  height: 70px;
  background-color: white;
  border-radius: 50px;
  align-self: center;
  margin: 0 auto;
  margin-top: 10px;
  margin-bottom: 20px;
  display: none;
}

.welcome {
  text-align: center;
  height: auto;
}

#menu-toggle {
  margin-bottom: 2%;
  font-size: 30px;
  color: #2b80bc;
}

.bar {
  margin-bottom: 3%;
}

/* main content */

.content-wrapper {
  width: 100%;
  position: absolute;
  padding-left: 60px;
}

/* when sidenav is displayed */

#wrapper.show .sidebar-wrapper {
  width: 250px;
}

#wrapper.show .sidebar-nav li a span {
  display: inline-block;
}

#wrapper.show .content-wrapper {
  padding-left: 250px;
}

#wrapper.show .logo {
  display: block;
}

#wrapper.show .sidebar-nav {
  margin-top: 0;
}

.some-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  height: auto;
}

.greeting {
  font-weight: lighter;
  margin-top: 3px;
  font-size: 25px;
  margin-right: 3%;
}
</style>
