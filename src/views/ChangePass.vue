<template lang="html">
  <div class="login ">
    <div class="cp-div">
      <h1 class="thin-header">Change Password</h1>
      <div class="login-form">
        <!-- need to prevent form from posting right away and redirect to welcome -->
        <form>
          <input v-model="password" class="login-input" type="password" name="password" placeholder="Password">
          <input v-model="password" class="login-input" type="password" name="password" placeholder="Re-enter Password">
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
.forgot {
  color: white;
  text-align: center;
}

.cp-div {
  height: 400px;
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
  font-size: 20px;
}

.login-input::placeholder {
  color: white;
  font-size: 20px;
  font-weight: normal;
  opacity: 1
}

.login-label{
  text-align: center !important;
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
  font-weight: normal;
  cursor: pointer;
  transition: all 0.25s ease;
}

.form-button:hover {
  color:white;
  background: #96DFE2;
}
.form-button:active {
  letter-spacing: 2px;
}
.form-button:after {
  content:"SUBMIT";
}

.onclic {
  width: 40px;
  border-color: white;
  border-width:3px;
  font-size:0;
  border-left-color: #0886a2;
  animation: rotating 2s 0.25s linear infinite;
}
.onclic:after {
  content:"";
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
