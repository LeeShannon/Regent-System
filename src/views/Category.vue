<template>
<div class="space-top ">

  <ul class="nav nav-tabs tabs">
    <li class="nav-item"><router-link to="/inventory" class="nav-link tab-link" style="border-bottom: grey">Inventory</router-link></li>
    <li class="nav-item"><router-link to="/category" class="nav-link active tab-link"  style="border-bottom: grey">Category</router-link></li>
    <li class="nav-item"><router-link to="/subcategory" class="nav-link tab-link">Subcategory</router-link></li>
  </ul>

      <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header>
        <md-table-toolbar class="table-header">
          <div class=" md-toolbar-section-start">
            <h1 class="md-title page-headers">Category</h1>
          </div>
          <button type="button" class=" my-btn" data-toggle="modal" data-target="#addCategoryModal">
            Add Category
          </button>
          <md-field md-clearable class="md-toolbar-section-end">
            <i class="fas fa-search" style="padding-right: 1em"></i>
            <md-input class="search-bar" placeholder="Search by name..." v-model="search" @input="searchOnTable" />
          </md-field>
        </md-table-toolbar>

        <md-table-empty-state md-label="Loading..." :md-description="`If this takes more than 10 seconds please hit the reload button`">{{errorData}}
        </md-table-empty-state>

        <md-table-row slot="md-table-row" slot-scope="{ item }">
          <md-table-cell md-label="ID" md-sort-by="categoryId" md-numeric>{{ item.categoryId }}</md-table-cell>
          <md-table-cell md-label="Category" md-sort-by="categoryName">{{ item.categoryName }}</md-table-cell>
          <md-table-cell md-label="Position" md-sort-by="categoryPosition">{{ item.categoryPosition }}</md-table-cell>
          <md-table-cell md-label="Position" md-sort-by="adminId">{{ item.adminId }}</md-table-cell>
          <md-table-cell md-label="Actions">
            <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#editCategoryModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
            <button  @click="onSelect(item)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#deleteCategoryModal">
            <i class="fas fa-trash-alt"></i>
          </button>
          </md-table-cell>
        </md-table-row>
      </md-table>

      <!-- add user modal -->
      <div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog" aria-labelledby="addCategoryModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addCategoryModalLabel">Add Category</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="row">
                <div class="col-lg-6">
                  <md-field class="modal-input">
                    <label> Category Name</label>
                    <md-input type="text" required></md-input>
                  </md-field>
                </div>
                <div class="col-lg-6">
                  <md-field class="modal-input">
                    <label>Category Position</label>
                    <md-input type="text" required></md-input>
                  </md-field>
                </div>
              </div>
              <br>
            </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" @click="addCategory()" data-dismiss="modal">Submit</button>
              </div>
            </div>
          </div>
        </div>

        <!-- editCategoryModal -->
        <div class="modal fade" id="editCategoryModal" tabindex="-1" role="dialog" aria-labelledby="editCategoryModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="editCategoryModalLabel">Edit Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="row">
                  <div class="col-lg-6">
                    <md-field class="modal-input">
                      <label> Category Name</label>
                      <md-input type="text" required></md-input>
                    </md-field>
                  </div>
                  <div class="col-lg-6">
                    <md-field class="modal-input">
                      <label>Category Position</label>
                      <md-input type="text" required></md-input>
                    </md-field>
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

          <!-- deleteCategoryModal -->
          <div class="modal fade" id="deleteCategoryModal" tabindex="-1" role="dialog" aria-labelledby="deleteCategoryModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="deleteCategoryModalLabel">Delete Category</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <h3 class="del-headers">Are you sure you wish to delete Category: <b>{{ selected.name }}</b> ?</h3>
                  <br>
                </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
                    <button @click="deleteCategory()" type="button" class="btn btn-primary" data-dismiss="modal">Confirm</button>
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
    categoryData: [],
    categories: [],
    category: [],
    errorData: '',
    dataAccessSuccess: true
  }),
  methods: {
    async populate() {
      this.categoryData = []
      this.errorData = '';
      try {
        this.categoryData = await HTTP.get('/category');
        this.categoryData = this.categoryData.data.category.records;
      } catch (error) {
        this.dataAccessSuccess = false;
        this.errorData = 'The database connection is offline';
      }
      if (this.dataAccessSuccess) {
        //Category
        let count = 0;
        while (count < this.categoryData[this.categoryData.length - 1][0]) {
          //Default values for missing entries
          this.category.push({
            categoryId: 0,
            categoryName: 'Not Found',
            categoryPosition: 0,
            adminId: 0,
            visible: false
          })
          count++;
        }
        count = 0;
        while (count < this.categoryData.length) {
          this.category[this.categoryData[count][0]] = {
            categoryId: this.categoryData[count][0],
            categoryName: this.categoryData[count][1],
            categoryPosition: this.categoryData[count][2],
            adminId: this.categoryData[count][3],
            visible: true
          }
          this.categoryData[count];
          count++;
        }
        console.log(this.category)
        // Place where I am probably gonna fuck this shit up
        let counter = 0
        while (counter < this.category.length) {
          if ( this.category[counter].visible ) {
            this.categories.push(this.category[counter])
          }
          counter++
        }
        console.log(this.categories);
      }
    },
    // async addCategory(){
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
    this.populate()
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
