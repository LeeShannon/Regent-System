<template>
<div id="app">
  <div id="wrapper" :class="{ show: showMenu }" @click="showMenu = !showMenu">

    <!-- sidebar -->
    <div class="sidebar-wrapper">
      <div class="logo" align="center">

      </div>
      <ul class="sidebar-nav">
        <li>
          <router-link to="/" tag="a"> <i class="fas fa-home" id="icon"></i> <span class="test">Dashboard</span></router-link>
        </li>
        <li>
          <router-link to="/"> <i class="fas fa-truck" id="icon"></i> <span class="test">Shipping</span></router-link>
        </li>
        <li>
          <router-link to="/"> <i class="fas fa-box-open" id="icon"></i> <span class="test">Inventory</span></router-link>
        </li>
        <li>
          <router-link to="/"> <i class="far fa-chart-bar" id="icon"></i> <span class="test">Statistics</span> </router-link>
        </li>
        <li>
          <router-link to="/"> <i class="fas fa-envelope" id="icon"></i> <span class="test">Mail</span> </router-link>
        </li>
        <li>
          <router-link to="/"> <i class="fas fa-comment-alt" id="icon"></i> <span class="test">Forum</span></router-link>
        </li>
        <li> <i class="fas fa-user" id="icon"></i>
          <router-link to="/"> <span class="test">Users</span></router-link>
        </li>
        <li>
          <router-link to="/"> <i class="fas fa-sign-out-alt" id="icon"></i> <span class="test">Logout</span></router-link>
        </li>
      </ul>
    </div>

    <!-- main content -->

    <div class="content-wrapper">
      <div class="container-fluid">
        <a href="#" id="menu-toggle">
            <i class="fas fa-bars bar"></i>
          </a>
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
export default {
  data() {
    return {
      showMenu: false
    }
  }
}
</script>

<style>
/* sidebar (currently hidden) */

.sidebar-wrapper {
  z-index: 1;
  position: absolute;
  width: 55px;
  height: 100%;
  overflow: hidden;
  background-color: #3a4a63;
  padding-top: 10px;
  scroll: none;
}

.sidebar-nav {
  padding: 0;
  list-style: none;
  margin-top: 100px;
}

.sidebar-nav li {
  /* text-indent: 15px; */
  line-height: 40px;
}

.sidebar-nav li a {
  text-decoration: none;
  color: #ddd;
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
  color: #ddd;
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
  margin-bottom: 6%;
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
</style>
