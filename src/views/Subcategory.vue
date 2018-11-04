<template>
<div class="space-top ">

  <ul class="nav nav-tabs tabs">
    <li class="nav-item"><router-link to="/inventory" class="nav-link tab-link" style="border-bottom: grey">Inventory</router-link></li>
    <li class="nav-item"><router-link to="/category" class="nav-link tab-link"  style="border-bottom: grey">Category</router-link></li>
    <li class="nav-item"><router-link to="/subcategory" class="nav-link active tab-link" style="border-bottom: grey">Subcategory</router-link></li>
  </ul>

  <!-- alerts -->
  <div class="info-msg" v-show="alertBlue">
    <i class="fa fa-info-circle"></i>
    Subcategory has been successfully <strong>updated</strong>
    <i style="float: right; cursor: pointer" @click="alertBlue = !alertBlue" class="fas fa-times"></i>
  </div>

  <div class="success-msg" v-show="alertGreen">
    <i class="fa fa-check"></i>
    Subcategory has been successfully <strong>added</strong>
    <i style="float: right; cursor: pointer" @click="alertGreen = !alertGreen" class="fas fa-times"></i>
  </div>

  <div class="warning-msg" v-show="alertOrange">
    <i class="fa fa-warning"></i>
    Subcategory has been successfully <strong>deleted</strong>
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

        <md-table-empty-state md-label="Loading..." :md-description="`If this takes more than 10 seconds please hit the reload button`">
          <div class="loader"></div>
        </md-table-empty-state>

        <md-table-row slot="md-table-row" slot-scope="{ item }">
          <md-table-cell md-label="ID" md-sort-by="subCategoryId" md-numeric>{{ item.subCategoryId }}</md-table-cell>
          <md-table-cell md-label="Name" md-sort-by="subCategoryName">{{ item.subCategoryName }}</md-table-cell>
          <md-table-cell md-label="Category" md-sort-by="category">{{ item.category }}</md-table-cell>
          <md-table-cell md-label="Position" md-sort-by="subCategoryPosition">{{ item.subCategoryPosition }}</md-table-cell>
          <md-table-cell md-label="Admin ID" md-sort-by="adminId">{{ item.adminId }}</md-table-cell>
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
                    <md-input type="text" v-model="newSubCategory.subCategoryName" value="newSubCategory.subCategoryName" required></md-input>
                  </md-field>
                </div>
                <div class="col-lg-6">
                  <md-field class="modal-input">
                    <label>Subcategory Position</label>
                    <md-input type="number" v-model="newSubCategory.subCategoryPosition" value="newSubCategory.subCategoryPosition" required></md-input>
                  </md-field>
                </div>
              </div>
              <div class="row">
                <div class="form-group col">
                  <label for="exampleFormControlSelect1">Category</label>
                  <select class="form-control" id="addSubCategoryForm" v-model="newSubCategory.category" value="newProduct.category">
                  <option v-for="cat in addCategory" v-if="cat[1] != null" :key="cat.id">
                    {{ cat[1] }}
                  </option>
                </select>
                </div>
              </div>
              <br>
            </div>
              <div class="modal-footer">
                <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary submit-btn" @click="addSubcategory()" data-dismiss="modal">Submit</button>
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
                      <md-input type="text" required></md-input>
                    </md-field>
                  </div>
                  <div class="col-lg-6">
                    <md-field class="modal-input">
                      <label>Subcategory Position</label>
                      <md-input type="number" required></md-input>
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
                  <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
                  <button @click="updateUser(userDetails.adminId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal">Save changes</button>
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
                  <h3 class="del-headers">Are you sure you wish to delete Subcategory: <b>{{ selected.subCategoryName }}</b> ?</h3>
                  <br>
                </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-info cancel-btn" data-dismiss="modal">Cancel</button>
                    <button @click="deleteSubcategory()" type="button" class="btn btn-primary submit-btn" data-dismiss="modal">Confirm</button>
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
    return items.filter(item => toLower(item.subCategoryName).includes(toLower(term)))
  }
  return items
}

export default {
  name: 'TableSearch',
  data: () => ({
    search: null,
    alertBlue: false,
    alertGreen: false,
    alertOrange: false,
    alertRed: false,
    searched: [],
    selected: {},
    newSubCategory: {
      subCategoryName: null,
      subCategoryPosition: null,
      category: null,
      // categoryId: null,
      adminId: null,
    },
    subCategoryData: [],
    subCategories: [],
    subCategory: [],
    errorData: '',
    dataAccessSuccess: true,
    categoryData: [],
    addCategory: [],
    category: []
  }),
  methods: {
    async populate() {
      this.subCategoryData = []
      this.errorData = '';
      try {
        this.categoryData = await HTTP.get('/category');
        this.categoryData = this.categoryData.data.category.records;
        this.subCategoryData = await HTTP.get('/subcategory');
        this.subCategoryData = this.subCategoryData.data.subcategory.records;
      } catch (error) {
        this.dataAccessSuccess = false;
        this.errorData = 'The database connection is offline';
      }
      if (this.dataAccessSuccess) {
        //Category
        let count = 0;
        while (count < this.categoryData[this.categoryData.length - 1][0]) {
          //Default values for missing entries
          this.category.push([0, 'Not Found', 0, 0,])
          count++;
        }
        count = 0;
        while (count < this.categoryData.length) {
          this.category[this.categoryData[count][0]] = this.categoryData[count];
          count++;
        }
        //SubCategory
        count = 0;
        while (count < this.subCategoryData[this.subCategoryData.length - 1][0]) {
          //Default values for missing entries
          this.subCategory.push({
            subCategoryId: 0,
            subCategoryName: 'Not Found',
            subCategoryPosition: 0,
            category: 'Not Found',
            adminId: 0,
            visible: false
          })
          count++;
        }
        count = 0;
        while (count < this.subCategoryData.length) {
          this.subCategory[this.subCategoryData[count][0]] = {
            subCategoryId: this.subCategoryData[count][0],
            subCategoryName: this.subCategoryData[count][1],
            subCategoryPosition: this.subCategoryData[count][2],
            category: this.category[this.subCategoryData[count][3]][1],
            adminId: this.subCategoryData[count][4],
            visible: true
          }
          this.subCategoryData[count];
          count++;
        }
        console.log(this.subCategory)
        // Place where I am probably gonna fuck this shit up
        let counter = 0
        while (counter < this.subCategory.length) {
          if ( this.subCategory[counter].visible ) {
            this.subCategories.push(this.subCategory[counter])
          }
          counter++
        }
        console.log(this.subCategories);
      }
      // addCategory
      let count = 0
      while (count<this.category.length) {
        if (this.category[count][0] != 0) {
          this.addCategory.push(this.category[count])
        }
        count++
      }
      console.log(this.addCategory)
    },
    async addSubcategory(){
      if (State.data.loggedIn) {
        console.log('Add SubCategory')
        console.log(this.newSubCategory)
        let catId = 0
        let count = 0
        let found = false
        var e = document.getElementById("addSubCategoryForm");
        if (e) {
          var name = e.options[e.selectedIndex].text;
          while (count<this.category.length && !found) {
            if (this.category[count][1] == name) {
              catId = this.category[count][0]
            }
            count++
          }
          if (catId>0 && 
          this.newSubCategory.subCategoryName != null &&
          this.newSubCategory.subCategoryPosition != null) {
            console.log('New Sub Category')
            console.log({
              subCategoryName: this.newSubCategory.subCategoryName,
              subCategoryPosition: this.newSubCategory.subCategoryPosition,
              categoryId: catId,
              adminId: State.data.adminInfo.adminId
              })
            await HTTP.post('/subcategory', {
              // subCategoryId: 0,
              subCategoryName: this.newSubCategory.subCategoryName,
              subCategoryPosition: this.newSubCategory.subCategoryPosition,
              categoryId: catId,
              adminId: State.data.adminInfo.adminId
            }).then((res) => {
              console.log(res)
            })
          } else {
            console.log('SubCategory could not be added successfully')
          }
        } else {
          console.log('Issue getting the element')
        }
      } else {
        console.log('User must login to add a subcategory')
      }
    },
    //  async getSupplierInfo(id) {
    //    console.log(id);
    //
    //  },
    deleteSubcategory() {
      if (this.selected != {}) {
        console.log('Delete Sub Category'+this.selected.subCategoryName)
        HTTP.delete('/subcategory/' + this.selected.subCategoryId).then((res) => {
          this.alertOrange = true;
        })
        this.selected = {}
        // this.populate()
        // TODO - pop selected from array
        // TODO - check if contains product
      } else {
        console.log('No item selected')
      }
    },
    searchOnTable() {
      this.searched = searchByName(this.subCategories, this.search)
    },
    onSelect(item) {
      this.selected = item
      console.log(this.selected)
    },
    async updateSupplier(id) {

    }
  },
  created() {
    this.searched = this.subCategories
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
