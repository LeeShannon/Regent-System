<template>
<div class="space-top ">

  <!-- alerts -->
  <div class="info-msg" v-show="alertBlue">
    <i class="fa fa-info-circle"></i>
    User has been successfully <strong>updated</strong>
    <i style="float: right; cursor: pointer" @click="alertBlue = !alertBlue" class="fas fa-times"></i>
  </div>

  <div class="success-msg" v-show="alertGreen">
    <i class="fa fa-check"></i>
    User has been successfully <strong>added</strong>
    <i style="float: right; cursor: pointer" @click="alertGreen = !alertGreen" class="fas fa-times"></i>
  </div>

  <div class="warning-msg" v-show="alertOrange">
    <i class="fa fa-warning"></i>
    User has been successfully <strong>deleted</strong>
    <i style="float: right; cursor: pointer" @click="alertOrange = !alertOrange" class="fas fa-times"></i>
  </div>

  <div class="error-msg" v-show="alertRed">
    <i class="fa fa-times-circle"></i>
    <strong>Error</strong> something went wrong
    <i style="float: right; cursor: pointer" @click="alertRed = !alertRed" class="fas fa-times"></i>
  </div>


  <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header class="table-bg">
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers">Users</h1>
      </div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addUserModal">
          Add User
      </button>
      <md-field md-clearable class="md-toolbar-section-end">
        <i class="fas fa-search" style="padding-right: 1em"></i>
        <md-input class="search-bar" placeholder="Search by name..." v-model="search" @input="searchOnTable" />
      </md-field>
    </md-table-toolbar>

    <md-table-empty-state md-label="Loading..." :md-description="`If this takes more than 10 seconds please hit the reload button`">
      <div class="loader"></div>
    </md-table-empty-state>

    <md-table-row slot="md-table-row" slot-scope="{ item }">
      <md-table-cell md-label="ID" md-sort-by="id" md-numeric>{{ item.id }}</md-table-cell>
      <md-table-cell md-label="Name" md-sort-by="name">{{ item.name }}</md-table-cell>
      <md-table-cell md-label="Surname" md-sort-by="name">{{ item.surname }}</md-table-cell>
      <md-table-cell md-label="Email" md-sort-by="email">{{ item.email }}</md-table-cell>
      <md-table-cell md-label="phone" md-sort-by="phone">{{ item.phone }}</md-table-cell>
      <md-table-cell md-label="Job Title" md-sort-by="title">{{ item.title }}</md-table-cell>
      <md-table-cell md-label="Actions">
        <button @click="getUserInfo(item.id)"  type="button" class="my-btn-icon" data-toggle="modal" data-target="#editUserModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
        <button  @click="getUserInfo(item.id)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#deleteUserModal">
            <i class="fas fa-trash-alt"></i>
          </button>
      </md-table-cell>
    </md-table-row>
  </md-table>



  <!-- add user modal -->
  <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addUserModalLabel">Add User</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Name</label>
                <md-input type="text" v-model="newUser.adminName" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Surname</label>
                <md-input type="text" v-model="newUser.adminSurname" required></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="email" v-model="newUser.adminEmail" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Password</label>
                <md-input type="password" v-model="newUser.adminPassword" required></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="number" v-model="newUser.adminPhoneNumber" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <label for="userType">User Type</label>
              <select class="form-control" id="exampleFormControlSelect1" v-model="newUser.adminType" required>
                <option value="1">Admin</option>
                <option value="2">Manager</option>
                <option value="3">Employee</option>
              </select>
            </div>
          </div>
          <br>
        </div>
          <div class="modal-footer">
            <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary submit-btn" @click="addUser()" data-dismiss="modal">Submit</button>
          </div>
        </div>
      </div>
    </div>

    <!-- EditUserModal -->
    <div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="editUserModalLabel">Edit User</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
          </div>
          <div class="modal-body">
            <div class="row">
              <div class="col-lg-6">
                <md-field class="modal-input">
                  <label>Name</label>
                  <md-input type="text" v-model="userDetails.adminName" value="userDetails.adminName"></md-input>
                </md-field>
              </div>
              <div class="col-lg-6">
                <md-field class="modal-input">
                  <label>Surname</label>
                  <md-input type="text" v-model="userDetails.adminSurname" value="userDetails.adminSurname"></md-input>
                </md-field>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-12">
                <md-field class="modal-input">
                  <label>E-mail</label>
                  <md-input type="email" v-model="userDetails.adminEmail" value="userDetails.adminEmail"></md-input>
                </md-field>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <md-field class="modal-input">
                  <label>Phone</label>
                  <md-input type="text" v-model="userDetails.adminPhoneNumber" value="userDetails.adminPhoneNumber"></md-input>
                </md-field>
              </div>
              <div class="col-lg-6">
                <label for="userType">User Type</label>
                <select class="form-control" id="exampleFormControlSelect1" v-model="userDetails.adminType" value="userDetails.adminType">
                <option value="1">Admin</option>
                <option value="2">Manager</option>
                <option value="2">Employee</option>
              </select>
              </div>
            </div>
            <br>
        </div>
            <div class="modal-footer">
              <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
              <button @click="updateUser(userDetails.adminId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal">Save changes</button>
            </div>
          </div>
        </div>
      </div>

      <!-- deleteUserModal -->
      <div class="modal fade" id="deleteUserModal" tabindex="-1" role="dialog" aria-labelledby="deleteUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="deleteUserModalLabel">Delete User</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
            </div>
            <div class="modal-body">
              <h3 class="del-headers">Are you sure you wish to delete user: <b>{{ selected.name }} {{selected.surname}}</b> ?</h3>
              <br>
        </div>
              <div class="modal-footer">
                <button type="button" class="btn cancel-btn" data-dismiss="modal">Cancel</button>
                <button @click="deleteUser(userDetails.adminId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal">Confirm</button>
              </div>
            </div>
          </div>
        </div>
      </div>
</template>

<script>
import {HTTP} from '../http-common';
import State from "../store/state";
const toLower = text => {
  return text.toString().toLowerCase()
}

const searchByName = (items, term) => {
  if (term) {
    return items.filter(item => toLower(item.name).includes(toLower(term)))
  }

  return items
}

export default {
  name: 'TableSearch',
  data: () => ({
    search: null,
    searched: [],
    alertBlue: false,
    alertGreen: false,
    alertOrange: false,
    alertRed: false,
    selected: {},
    usersData: [],
    userDetails: [],
    newUser: {
      adminName: '',
      adminSurname: '',
      adminUsername: '',
      adminPassword: '',
      adminPhoneNumber: '',
      adminAddress: 'test',
      adminEmail: '',
      adminType: 0
    },
    users: []
  }),
  methods: {
    async populate() {
      this.usersData = await HTTP.get('/admin')

      let count = 0;
      while (count < this.usersData.data.admin.records.length) {

        this.users.push({
          id: this.usersData.data.admin.records[count][0],
          name: this.usersData.data.admin.records[count][1],
          surname: this.usersData.data.admin.records[count][2],
          email: this.usersData.data.admin.records[count][7],
          phone: this.usersData.data.admin.records[count][5],
          title: this.usersData.data.admin.records[count][8],
          surname: this.usersData.data.admin.records[count][2]
        })
        count++
      }
    },
    async addUser() {
      let item = this.newUser;
      console.log('item is ', item);

      await HTTP.post('/admin', item).then((res) => {
        console.log(res.data)
        console.log("success adding");
        this.alertGreen = true;
        this.users.push({
          id: res.data,
          name: this.newUser.adminName,
          surname: this.newUser.adminSurname,
          email: this.newUser.adminEmail,
          phone: this.newUser.adminPhoneNumber,
          title: this.newUser.adminType,
          surname: this.newUser.surname
        })
      })
    },
    async getUserInfo(id) {
      console.log(id);
      await HTTP.get('/admin/' + id).then((res) => {
        // console.log(res.data);
        this.userDetails = res.data;
      })
    },
    searchOnTable() {
      this.searched = searchByName(this.users, this.search)
    },
    onSelect(item) {
      this.selected = item
    },
    async updateUser(id) {
      console.log(id);
      let item = this.userDetails;

      console.log(item.adminName);
      await HTTP.put('/admin/' + id, item).then((res) => {
        this.alertBlue = true;
      })
    },
    async deleteUser(id) {
      console.log("delete function:" + id)
      let userID = this.userDetails.adminId;

      await HTTP.delete('/admin/' + userID).then((res) => {
        console.log("user has been deleted");
        this.alertOrange = true;
      })
    }
  },
  created() {
    this.searched = this.users
  },
  beforeMount() {
    if (State.data.loggedIn) {
      this.populate();
    } else {
      this.errorData = 'You need to be logged in to make a view data';
    }
  }
}
</script>

<style lang="css">
/* alerts */
.info-msg,
.success-msg,
.warning-msg,
.error-msg {
  margin: 10px 0;
  padding: 10px;
  border-radius: 3px 3px 3px 3px;
}

.success-msg {
  color: #270;
  background-color: #DFF2BF;
}
.info-msg {
  color: #059;
  background-color: #BEF;
}
.warning-msg {
  color: #9F6000;
  background-color: #FEEFB3;
}
.error-msg {
  color: #D8000C;
  background-color: #FFBABA;
}

.my-btn-icon{
  cursor: pointer;
}

.md-field {
  max-width: 300px;
}

.search-bar {
  color: white;
}
.search-bar::placeholder  {
  color: white;
  opacity: 1;
}
.page-headers {
  margin-bottom: .8rem;
  padding-top: .8rem;
  text-transform: uppercase;
  letter-spacing: .02em;
  font-size: 1.5rem;
  margin-top: 0;
}

.my-btn {
  outline:none;
  height: auto;
  text-align: center;
  width: auto;
  border-radius:50px;
  background: none;
  border: 1px solid white;
  color: white;
  letter-spacing:1px;
  padding: 5px 10px 5px 10px;
  margin-right: 1em;
}

.my-btn-icon {
  outline:none;
  height: auto;
  text-align: center;
  width: auto;
  color: black;
  padding: 5px 10px 5px 10px;
  border: none;
  background: none;
}

.space-top {
  margin-top: 10px;
}

.del-headers {
  text-align: center;
  margin-bottom: .8rem;
  padding-top: .8rem;
  letter-spacing: .02em;
  font-size: 1.1rem;
  margin-top: 0;
}

</style>
