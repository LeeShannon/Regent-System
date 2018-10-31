/* eslint-disable */
const State = {
  data: {
    loggedIn: false,
    adminInfo: {
      adminId: null,
      adminName: null,
      adminSurname: null,
      admindUsername: null,
      adminPhoneNumber: null,
      adminEmail: null,
      adminType: 0,
      adminStamp: null
    }
  },
  methods: {
      setInformation(info){
          console.log("State: set logged in: "+info)
          State.data.adminInfo = info
          State.data.loggedIn = true
      },
      revokeLogin(){
        console.log('revoke login')
        State.data.loggedIn = false
        State.data.adminInfo = {
          adminId: null,
          adminName: null,
          adminSurname: null,
          admindUsername: null,
          adminPhoneNumber: null,
          adminEmail: null,
          adminType: 0,
          adminStamp: null
        }
      },
      getLoggedIn(){
          console.log("State: get logged in: "+State.data.loggedIn)
          return State.data.loggedIn
      }
  }
}
export default State
