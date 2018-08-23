<template lang="html">
  <div class="login">
    <div class="login-div">
      <h1 class="thin-header">Login</h1>
      <div class="login-form">
        <!-- need to prevent form from posting right away -->
        <form method="post">
          <input v-model="email" class="login-input" type="email" name="email" placeholder="E-mail">
          <input v-model="password" class="login-input" type="password" name="password" placeholder="Password">
          <div class="btn-container">
            <input @click="showProgress($event)" class="form-button" type="submit" name="login" value="Submit">
          </div>
        </form>
      </div>
    </div>

  </div>
</template>

<script>
export default {
  data() {
    return{
      email: '',
      password: ''
    }
  },
  methods: {
    showProgress(evt) {
      evt.preventDefault()
      let e = evt.target
      e.classList.add('onclic', this.loading(e, evt))
    },
    loading(e, evt){
      setTimeout(() => {
          e.classList.remove('onclic')
      }, 2500)
    }
  }
}
</script>

<style lang="css">
.login-div {
  height: 500px;
  width: 400px;
  background-color: red;
  border-radius: 20px;
  background: linear-gradient(top, #96DFE2, #18B2F7);
  color: white;
  box-shadow: -2px 3px 12px #B4B4B4;

/* center it */
	position: absolute;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto;
}

.thin-header {
  font-weight: lighter;
  color: inherit;
  text-align: center;
  margin-top: 10%;
}

.login-form {
  padding-left: 10%;
  padding-right: 10%;
  padding-top: 20%;
}

.login-input {
  background-color: transparent;
  border: none;
  padding-bottom: 10px;
  border-bottom: 1px solid white;
  text-align: center;
  border-radius: 0;
  margin-bottom: 10%;
  width: 100%;
}

.login-input::placeholder {
  color: white;
  font-size: 20px;
  font-weight: lighter;
  opacity: 1
}

/* dope login button  */
.btn-container {
  width: 130px;
  height: 40px;
  text-align: center;
  margin: 0 auto;
  margin-top: 10%;
}
.form-button {
  outline:none;
  height: 40px;
  text-align: center;
  width: 130px;
  border-radius:40px;
  background: transparent;
  border: 1px solid white;
  color: white;
  text-transform: uppercase;
  letter-spacing: .02em;
  font-weight: lighter;
  cursor: pointer;
  transition: all 0.25s ease;

  .form-button:hover {
    color:white;
    background: #96DFE2;
  }
  .form-button:active {
    //letter-spacing: 2px;
    letter-spacing: 2px ;
  }
  .form-button:after {
    content:"SUBMIT";
  }
}
.onclic {
  width: 40px;
  border-color: white;
  border-width:3px;
  font-size:0;
  border-left-color: #0886a2;
  animation: rotating 2s 0.25s linear infinite;

  .onclic:after {
    content:"";
  }
}

@keyframes rotating {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
</style>
