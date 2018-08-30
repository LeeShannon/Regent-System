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
          <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#editUserModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
          <button type="button" class="my-btn-icon">
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
          <button type="button" class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>
  </div>
</div>
</template>

<script>
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
    users: [{
        id: 1,
        name: "Shawna Dubbin",
        email: "sdubbin0@geocities.com",
        phone: "123 456 789",
        title: "Assistant Media Planner"
      },
      {
        id: 2,
        name: "Odette Demageard",
        email: "odemageard1@spotify.com",
        phone: "123 456 789",
        title: "Account Coordinator"
      },
      {
        id: 3,
        name: "Vera Taleworth",
        email: "vtaleworth2@google.ca",
        phone: "123 456 789",
        title: "Community Outreach Specialist"
      },
      {
        id: 4,
        name: "Lonnie Izkovitz",
        email: "lizkovitz3@youtu.be",
        phone: "123 456 789",
        title: "Operator"
      },
      {
        id: 5,
        name: "Thatcher Stave",
        email: "tstave4@reference.com",
        phone: "123 456 789",
        title: "Software Test Engineer III"
      },
      {
        id: 6,
        name: "Karim Chipping",
        email: "kchipping5@scribd.com",
        phone: "123 456 789",
        title: "Safety Technician II"
      },
      {
        id: 7,
        name: "Helge Holyard",
        email: "hholyard6@howstuffworks.com",
        phone: "123 456 789",
        title: "Internal Auditor"
      },
      {
        id: 8,
        name: "Rod Titterton",
        email: "rtitterton7@nydailynews.com",
        phone: "123 456 789",
        title: "Technical Writer"
      },
      {
        id: 9,
        name: "Gawen Applewhite",
        email: "gapplewhite8@reverbnation.com",
        phone: "123 456 789",
        title: "GIS Technical Architect"
      },
      {
        id: 10,
        name: "Nero Mulgrew",
        email: "nmulgrew9@plala.or.jp",
        phone: "123 456 789",
        title: "Staff Scientist"
      },
      {
        id: 11,
        name: "Cybill Rimington",
        email: "crimingtona@usnews.com",
        phone: "123 456 789",
        title: "Assistant Professor"
      },
      {
        id: 12,
        name: "Maureene Eggleson",
        email: "megglesonb@elpais.com",
        phone: "123 456 789",
        title: "Recruiting Manager"
      },
      {
        id: 13,
        name: "Cortney Caulket",
        email: "ccaulketc@cbsnews.com",
        phone: "123 456 789",
        title: "Safety Technician IV"
      },
      {
        id: 14,
        name: "Selig Swynfen",
        email: "sswynfend@cpanel.net",
        phone: "123 456 789",
        title: "Environmental Specialist"
      },
      {
        id: 15,
        name: "Ingar Raggles",
        email: "iragglese@cbc.ca",
        phone: "123 456 789",
        title: "VP Sales"
      },
      {
        id: 16,
        name: "Karmen Mines",
        email: "kminesf@topsy.com",
        phone: "123 456 789",
        title: "Administrative Officer"
      },
      {
        id: 17,
        name: "Salome Judron",
        email: "sjudrong@jigsy.com",
        phone: "123 456 789",
        title: "Staff Scientist"
      },
      {
        id: 18,
        name: "Clarinda Marieton",
        email: "cmarietonh@theatlantic.com",
        phone: "123 456 789",
        title: "Paralegal"
      },
      {
        id: 19,
        name: "Paxon Lotterington",
        email: "plotteringtoni@netvibes.com",
        phone: "123 456 789",
        title: "Marketing Assistant"
      },
      {
        id: 20,
        name: "Maura Thoms",
        email: "mthomsj@webeden.co.uk",
        phone: "123 456 789",
        title: "Actuary"
      }
    ]
  }),
  methods: {
    newUser() {
      window.alert('Noop')
    },
    searchOnTable() {
      this.searched = searchByName(this.users, this.search)
    }
  },
  created() {
    this.searched = this.users
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
