<template lang="html">
    <div class="welcome-pg">
      <div class="row">
        <h1 class="hi-there animated fadeIn"><span class="welc">Welcome  </span> <span class="im-blue">{{ user}}</span></h1>
      </div>
    </div>
</template>

<script>
import State from "../store/state";

export default {
  data() {
    return {
      //how to get the user's name from the store?
      user: State.data.adminInfo.adminName
    }
  },
  mounted() {
    window.onload(setTimeout(function(){
        window.location.href="http://localhost:8081/#/home"
      },3500))
  }
}
</script>

<style lang="css">
/* table loader */
.loader {
    border: 10px solid #f3f3f3; /* Light grey */
    border-top: 10px solid #3498db; /* Blue */
    border-radius: 50%;
    width: 120px;
    height: 120px;
    animation: spin 2s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}


/* rest of the styles */
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
