<template>
<div class="space-top ">

  <ul class="nav nav-tabs tabs">
    <li class="nav-item"><router-link to="/inventory" class="nav-link tab-link" style="border-bottom: grey">Inventory</router-link></li>
    <li class="nav-item"><router-link to="/category" class="nav-link tab-link"  style="border-bottom: grey">Category</router-link></li>
    <li class="nav-item"><router-link to="/subcategory" class="nav-link active tab-link" style="border-bottom: grey">Subcategory</router-link></li>
  </ul>

      <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header>
        <md-table-toolbar class="table-header">
          <div class=" md-toolbar-section-start">
            <h1 class="md-title page-headers">Subcategory</h1>
          </div>
          <button type="button" class=" my-btn" data-toggle="modal" data-target="#addSubcategoryModal">
            Add Subcategory
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
          <md-table-cell md-label="Subcategory" md-sort-by="name">{{ item.name }}</md-table-cell>
          <md-table-cell md-label="Position" md-sort-by="name">{{ item.position }}</md-table-cell>
          <md-table-cell md-label="Category" md-sort-by="name">{{ item.category }}</md-table-cell>
          <md-table-cell md-label="Actions">
            <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#editSubcategoryModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
            <button  @click="onSelect(item)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#deleteSubcategoryModal">
            <i class="fas fa-trash-alt"></i>
          </button>
          </md-table-cell>
        </md-table-row>
      </md-table>

      <!-- add user modal -->
      <div class="modal fade" id="addSubcategoryModal" tabindex="-1" role="dialog" aria-labelledby="addSubcategoryModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addSubcategoryModalLabel">Add Subcategory</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-lg-6">
                  <md-field class="modal-input">
                    <label> Subcategory Name</label>
                    <md-input type="text"required></md-input>
                  </md-field>
                </div>
                <div class="col-lg-6">
                  <md-field class="modal-input">
                    <label>Subcategory Position</label>
                    <md-input type="text" required></md-input>
                  </md-field>
                </div>
              </div>
              <div class="row">
                <div class="form-group col">
                  <label for="exampleFormControlSelect1">Category</label>
                  <select class="form-control" id="exampleFormControlSelect1">
                  <option>
                    Fruit
                  </option>
                </select>
                </div>
              </div>
              <br>
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" @click="addSubcategory()" data-dismiss="modal">Submit</button>
              </div>
            </div>
          </div>
        </div>

        <!-- editSubcategoryModal -->
        <div class="modal fade" id="editSubcategoryModal" tabindex="-1" role="dialog" aria-labelledby="editSubcategoryModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="editSubcategoryModalLabel">Edit Subcategory</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-lg-6">
                    <md-field class="modal-input">
                      <label> Subcategory Name</label>
                      <md-input type="text"required></md-input>
                    </md-field>
                  </div>
                  <div class="col-lg-6">
                    <md-field class="modal-input">
                      <label>Subcategory Position</label>
                      <md-input type="text" required></md-input>
                    </md-field>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col">
                    <label for="exampleFormControlSelect1">Category</label>
                    <select class="form-control" id="exampleFormControlSelect1">
                    <option>
                      Fruit
                    </option>
                  </select>
                  </div>
                </div>
                <br>
              </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                  <button @click="updateUser(userDetails.adminId)" type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
                </div>
              </div>
            </div>
          </div>

          <!-- deleteSubcategoryModal -->
          <div class="modal fade" id="deleteSubcategoryModal" tabindex="-1" role="dialog" aria-labelledby="deleteSubcategoryModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="deleteSubcategoryModalLabel">Delete Subcategory</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <h3 class="del-headers">Are you sure you wish to delete Subcategory: <b>{{ selected.name }}</b> ?</h3>
                  <br>
                </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
                    <button @click="deleteSubcategory()" type="button" class="btn btn-primary" data-dismiss="modal">Confirm</button>
                  </div>
                </div>
              </div>
            </div>
</div>
</template>

<script>
import {
  HTTP
} from '../http-common'

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
    categories: [{
      id: '23',
      name: 'Berries',
      position: '3',
      category: 'Fruit'
    }]
  }),
  methods: {
    //  async populate() {
    //
    // },
    // async addSubcategory(){
    //
    //  },
    //  async getSupplierInfo(id) {
    //    console.log(id);
    //
    //  },
    searchOnTable() {
      this.searched = searchByName(this.categories, this.search)
    },
    onSelect(item) {
      this.selected = item
    },
    async updateSupplier(id) {

    }
  },
  created() {
    this.searched = this.categories
  },
  beforeMount() {
    // this.populate()
  }
}
</script>

<style lang="css">

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
