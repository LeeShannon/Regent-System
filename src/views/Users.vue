<template>
<div class="space-top ">
  <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header>
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

    <md-table-empty-state md-label="No users found" :md-description="`No user found for this '${search}' query. Try a different search term or create a new user.`">
    </md-table-empty-state>

      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="ID" md-sort-by="id" md-numeric>{{ item.id }}</md-table-cell>
        <md-table-cell md-label="Name" md-sort-by="name">{{ item.name }}</md-table-cell>
        <md-table-cell md-label="Email" md-sort-by="email">{{ item.email }}</md-table-cell>
        <md-table-cell md-label="phone" md-sort-by="phone">{{ item.phone }}</md-table-cell>
        <md-table-cell md-label="Job Title" md-sort-by="title">{{ item.title }}</md-table-cell>
        <md-table-cell md-label="Actions">
          <button @click="onSelect(item)"  type="button" class="my-btn-icon" data-toggle="modal" data-target="#editUserModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
          <button  @click="onSelect(item)" type="button" class="my-btn-icon">
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
                <md-input type="text"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Surname</label>
                <md-input type="text"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="email"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Password</label>
                <md-input type="password"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="number"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <label for="userType">User Type</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option value="1">Admin</option>
                <option value="2">Manager</option>
                <option value="2">Employee</option>
              </select>
            </div>
          </div>
          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
      </div>
    </div>
  </div>

  <!-- EditUserModal -->
  <div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editUserModalLabel">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Name</label>
                <md-input type="text" v-model="selected.name" value="selected.name"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Surname</label>
                <md-input type="text" v-model="selected.surname" value="selected.surname"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="email" v-model="selected.email" value="selected.email"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="text" v-model="selected.phone" value="selected.phone"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <label for="userType">User Type</label>
              <select class="form-control" id="exampleFormControlSelect1" v-model="selected.title" value="selected.title">
                <option value="1">Admin</option>
                <option value="2">Manager</option>
                <option value="2">Employee</option>
              </select>
            </div>
          </div>
          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
import {HTTP} from '../http-common'

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
    selected: {},
    usersData: [],
    users: []
  }),
  methods: {
    async populate() {
      this.usersData = await HTTP.get('/admin')
     console.log(this.usersData.data.admin.records);
     console.log(this.usersData.data.admin.records.length);


let count =0;
     while (count < this.usersData.data.admin.records.length) {

       console.log(this.usersData.data.admin.records[count][2]);

       this.users.push({
         id: this.usersData.data.admin.records[count][0],
         name: this.usersData.data.admin.records[count][1],
         email: this.usersData.data.admin.records[count][7],
         phone: this.usersData.data.admin.records[count][5],
         title: this.usersData.data.admin.records[count][8]
       })

       count++
     }


    },
    newUser() {
      window.alert('Noop')
    },
    searchOnTable() {
      this.searched = searchByName(this.users, this.search)
    },
    onSelect (item) {
      this.selected = item
    }
  },
  created() {
    this.searched = this.users
  },
  beforeMount () {
    this.populate()
  }
}
</script>

<style lang="css">
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
</style>
