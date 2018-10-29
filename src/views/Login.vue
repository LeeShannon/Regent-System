<template lang="html">
  <div class="login ">
    <div class="login-div">
      <h1 class="thin-header">Login</h1>
      <div class="login-form">
        <!-- need to prevent form from posting right away and redirect to welcome -->
        <form>
          <input v-model="email" class="login-input" type="email" name="email" placeholder="E-mail" required>
          <input v-model="password" class="login-input" type="password" name="password" placeholder="Password" required>

        <!-- error message -->
          <div v-show="error" class="error-message">
            <span class="alert">Error!</span>
            <br>
            Invalid login details
          </div>

          <div class="btn-container">
            <input @click="showProgress($event)" class="form-button" type="submit" name="login" value="Submit">
          </div>
        </form>
        <br>
        <br>
        <div class="forgot">
          <router-link to="/changepassword" class="forgot">Forgot Password?</router-link>
        </div>
      </div>
    </div>


  </div>
</template>

<script>
import State from "../store/state";
import {HTTP} from '../http-common';
import router from '../router';
export default {
  data() {
    return{
      email: '',
      password: '',
      loginTable: [],
      error: false
    };
  },
  methods: {
    showProgress(evt) {
      this.checkLogInInfo(this.email);
      evt.preventDefault();
      const e = evt.target;
      e.classList.add('onclic', this.loading(e, evt));
      this.commitState();
    },
    async checkLogInInfo(email) {
      this.loginTable = await HTTP.get('/admin?filter=adminEmail,eq,'+email)
      this.loginTable = this.loginTable.data.admin.records
      console.log(this.loginTable.length)
      //TODO - could be more secure
      if (this.loginTable.length>0) {
        let found = false;
        let count = 0;
        while (!found && count<this.loginTable.length){
          // console.log(this.loginTable[count][4])
          if (this.loginTable[count][4]==this.password) {
            console.log('Correct')
            // Set the state data to the login data
            const adminInfo = {
              adminName: this.loginTable[count][1],
              adminSurname: this.loginTable[count][2],
              admindUsername: this.loginTable[count][3],
              adminPhoneNumber: this.loginTable[count][5],
              addminAddress: this.loginTable[count][6],
              adminEmail: this.loginTable[count][7],
              adminType: this.loginTable[count][8],
              adminStamp: this.loginTable[count][9]
            }
            State.methods.setInformation(adminInfo);
            // router.push('welcome') TODO - need inventory for testing - still a bug with welcome
            router.push('inventory')
            // console.log(adminInfo)
          } else {
            console.log('TODO - invalide password')
            // Set the invalid state data
            State.methods.revokeLogin();
          }
          count++;
        }
      } else {
        console.log('TODO - invalid username')
        this.error = true;
        State.methods.revokeLogin();
      }
    },
    commitState() {

    },
    loading(e, evt) {
      setTimeout(() => {
          e.classList.remove('onclic');
      }, 2500);
    },
  },
  beforeMount() {
    // this.populate();
    console.log('State')
    console.log(State.data.loggedIn)
    console.log(State.data.adminInfo.adminName)
    console.log(State.data.adminInfo.adminSurname)
    console.log(State.data.adminInfo.admindUsername)
    console.log(State.data.adminInfo.adminName)
    // console.log(State.data.loggedIn)
  },
};
</script>

<style lang="css">
.forgot {
  color: white;
  text-align: center;
}

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
  font-size: 20px;
  color: white;
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
  letter-spacing: 2px ;
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

.error-message {
  width: 100%;
  border-radius: 5px;
  background: linear-gradient(to bottom left, #EF8D9C 40%, #f97c8f 100%);
  color: white;
  text-align: center;
  padding-top: 5px;
  padding-bottom: 5px;
   box-shadow: 5px 5px 20px rgba(#303030, 10%);
   z-index: 1;
}

.alert {
  font-weight: 700;
  letter-spacing: 5px;
  font-size: 0.9em;
  text-transform: uppercase;
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
