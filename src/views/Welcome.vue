<template lang="html">
  <div class="welcome-pg">
      <h1 class="hi-there animated fadeIn"><span class="welc">Welcome  </span> <span class="im-blue">{{ user}}</span></h1>
  </div>
</template>

<script>
import State from "../store/state";

export default {
  data() {
    return {
      //how to get the user's name from the store?
      user: 'User'
    }
  },
  mounted() {
    window.onload(setTimeout(function(){
        window.location.href="http://localhost:8081/#/home"
      },4000))
  }
}
</script>

<style lang="css">
.welcome-pg {
  height: 100vh;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
}

.hi-there {
  font-size: 60px;
}
.welc {
  font-weight: lighter;
}
.im-blue {
  color: #0B9ED5;
}
</style>
