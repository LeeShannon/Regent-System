<template>
<div class="space-top ">

  <ul class="nav nav-tabs tabs">
    <li class="nav-item"><router-link to="/inventory" class="nav-link active tab-link" style="border-bottom: grey">Inventory</router-link></li>
    <li class="nav-item"><router-link to="/category" class="nav-link tab-link">Category</router-link></li>
    <li class="nav-item"><router-link to="/subcategory" class="nav-link tab-link">Subcategory</router-link></li>
  </ul>

  <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header>
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers">Inventory</h1>
      </div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addProductModal">
        Add Product
      </button>
      <md-field md-clearable class="md-toolbar-section-end">
        <i class="fas fa-search" style="padding-right: 1em"></i>
        <md-input class="search-bar" placeholder="Search by name..." v-model="search" @input="searchOnTable" />
      </md-field>
    </md-table-toolbar>

    <md-table-empty-state md-label="Loading..." :md-description="`If this takes more than 10 seconds please hit the reload button`">{{errorData}}
    </md-table-empty-state>
<!-- v-if="item.productId != 0" -->
<!-- v-if="item != null" -->
<!-- v-if="item.productName"  -->
<!-- v-if="item.visible==true || item.visible==false" -->
    <md-table-row slot="md-table-row" slot-scope="{ item }" v-if="item.visible==true">
      <md-table-cell md-label="ProductId" md-sort-by="productId" md-numeric> {{ item.productId }} </md-table-cell>
      <md-table-cell md-label="Name" md-sort-by="productName" md-numeric> {{ item.productName }} </md-table-cell>
      <md-table-cell md-label="Sub-Category" md-sort-by="subCategory" md-numeric> {{ item.subCategory }} </md-table-cell>
      <md-table-cell md-label="Category" md-sort-by="category" md-numeric> {{ item.category }} </md-table-cell>
      <md-table-cell md-label="Purchase Price" md-sort-by="productPurchasePrice" md-numeric> {{ item.productPurchasePrice }} </md-table-cell>
      <md-table-cell md-label="Selling Price" md-sort-by="productSellingPrice" md-numeric> {{ item.productSellingPrice }} </md-table-cell>
      <md-table-cell md-label="ImgUrl" md-sort-by="productImgUrl" md-numeric> {{ item.productImgUrl }} </md-table-cell>
      <md-table-cell md-label="Active" md-sort-by="productActive" md-numeric> {{ item.productActive }} </md-table-cell>
      <md-table-cell md-label="AdminId" md-sort-by="adminId" md-numeric> {{ item.adminId }} </md-table-cell>
      <md-table-cell md-label="Timestamp" md-sort-by="productStamp" md-numeric> {{ item.productStamp }} </md-table-cell>
      <md-table-cell md-label="Actions">
        <button @click="onSelect(item)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#editProductModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
        <button @click="onDelete(item)" type="button" class="my-btn-icon">
            <i class="fas fa-trash-alt"></i>
          </button>
      </md-table-cell>
    </md-table-row>
  </md-table>

  Selected: {{ selected }}<br>
  Searched: {{ search }}<br>
  New Product: {{ newProduct }}<br>
  <!-- State: {{ State.data.loggedIn }} -->

  <!-- add product modal -->
  <div class="modal fade" id="addProductModal" tabindex="-1" role="dialog" aria-labelledby="addProductModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addProductModalLabel">Add Products</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
        </div>
        <div class="modal-body">
          <form class="" action="index.html" method="post">
            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Name</label>
                  <!-- <md-input type="text" v-model="newProduct.productName" value="newProduct.productName" required></md-input> -->
                  <md-input type="text" v-model="newProduct.productName" value="newProduct.productName" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Active</label>
                  <md-input type="checkbox" v-model="newProduct.productActive" value="newProduct.productActive" required></md-input>
                  <!-- <button type="submit" class="btn btn-primary" @click="toggleActiveAdd()">{{activeText}}</button> -->
                </md-field>
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Purchase Price</label>
                  <md-input type="text" v-model="newProduct.productPurchasePrice" value="newProduct.productPurchasePrice" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Selling Price</label>
                  <md-input type="number" v-model="newProduct.productSellingPrice" value="newProduct.productSellingPrice" required></md-input>
                </md-field>
              </div>
            </div>

            <div class="form-row">
              <!-- <md-field :class="messageClass" id="textarea"> -->
              <md-field>
                <label>Description</label>
                <md-textarea v-model="newProduct.productDescription" required></md-textarea>
              </md-field>
            </div>

            <div class="form-row">
              <md-field>
                <label>Upload New Image</label>
                <md-file v-model="newProduct.productImgUrl" placeholder="Upload Image" required />
              </md-field>
            </div>

            <div class="form-row">
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Category</label>
                <select class="form-control" id="exampleFormControlSelect1" v-model="newProduct.category" value="newProduct.category">
                  <option v-for="cat in category" v-if="cat[1] != null" :key="cat.id">
                    {{ cat[1] }}
                  </option>

              </select>
              </div>
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Subcategory</label>
                <select class="form-control" id="exampleFormControlSelect1" v-model="newProduct.subCategory" value="newProduct.subcategory">
                <option v-for="sub in subCategory" v-if="sub[1] != null" :key="sub.id">
                  {{ sub[1] }}
                </option>
              </select>
              </div>
            </div>

          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
      </div>
    </div>
  </div>

  <!-- editProductModal -->
  <div class="modal fade" id="editProductModal" tabindex="-1" role="dialog" aria-labelledby="editProductModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editProductModalLabel">Edit {{selected.productName}}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <form class="" action="index.html" method="post">
            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Name</label>
                  <md-input type="text" v-model="selected.productName" value="selected.productName" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <!-- <md-field class="modal-input"> -->
                <!-- <label>Active</label> -->
                <!-- <md-input type="checkbox" v-model="selected.productActive" value="selected.productActive" required></md-input> -->
                <button id="btnActiveEdit" class="btn CBactiveToggle" @click="toggleActiveEdit()">{{activeText}}</button>
                <!-- </md-field> -->
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Purchase Price</label>
                  <md-input type="text" v-model="selected.productPurchasePrice" value="selected.productPurchasePrice" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Selling Price</label>
                  <md-input type="number" v-model="selected.productSellingPrice" value="selected.productSellingPrice" required></md-input>
                </md-field>
              </div>
            </div>

            <div class="form-row">
              <!-- <md-field :class="messageClass" id="textarea"> -->
              <md-field>
                <label>Description</label>
                <md-textarea v-model="selected.productDescription" required></md-textarea>
              </md-field>
            </div>

            <div class="form-row">
              <md-field>
                <label>Upload New Image</label>
                <!-- <md-file v-model="selected.productImgUrl" placeholder="Upload Image" required/> -->
                <md-file @change="onFilePicked" placeholder="Upload Image" accept="image/*" />
              </md-field>
            </div>

            <div class="form-row">
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Category</label>
                <select class="form-control" id="exampleFormControlSelect1" v-model="selected.category" value="selected.category">
                  <option v-for="cat in category" v-if="cat[1] != null" :key="cat.id">
                    {{ cat[1] }}
                  </option>

              </select>
              </div>
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Subcategory</label>
                <select class="form-control" id="exampleFormControlSelect1" v-model="selected.subCategory" value="selected.subcategory">
                <option v-for="sub in subCategory" v-if="sub[1] != null" :key="sub.id">
                  {{ sub[1] }}
                </option>
              </select>
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Creator ID</label>
                  <md-input type="text" v-model="selected.adminId" value="selected.adminId" readonly></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Timestamp</label>
                  <md-input type="text" v-model="selected.productStamp" value="selected.productStamp" readonly></md-input>
                </md-field>
              </div>
            </div>

          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-info" @click="cancelEdit()" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" @click="saveChanges()" data-dismiss="modal">Save changes</button>
        </div>
      </div>
    </div>
  </div>

  <!-- deleteProductModal -->
  <div class="modal fade" id="deleteProductModal" tabindex="-1" role="dialog" aria-labelledby="deleteProductModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="deleteProductModalLabel">Delete Product</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
          <h3 class="del-headers">Are you sure you wish to delete product: <b>{{ selected.productName }}</b> ?</h3>
          <br>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
            <button @click="deleteUser()" type="button" class="btn btn-primary" data-dismiss="modal">Confirm</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
/* tslint:disable */
import State from "../store/state";
import {HTTP} from '../http-common';
import {POINT_CONVERSION_COMPRESSED} from 'constants';
import * as firebase from 'firebase';
const toLower = text => {
  return text.toString().toLowerCase();
}

const searchByName = (items, term) => {
  if (term) {
    return items.filter(item => toLower(item.productName).includes(toLower(term)));
  }
  return items;
}

export default {
  name: 'TableSearch',
  name: 'FileField',
  data: () => ({
    search: null,
    searched: [],
    placeholder: null,
    invalidData: 'invalid Data',
    selected: {},
    restoreSelected: {},
    tableData: [],
    newProduct: {
      subCategory: null,
      category: null,
      productName: null,
      productPurchasePrice: null,
      productSellingPrice: null,
      productImgUrl: null,
      productActive: null,
      productDescription: null,
      adminId: null,
    },
    categoryData: [],
    subCategoryData: [],
    productData: [],
    category: [],
    subCategory: [],
    subSubCategory: [],
    product: [],
    products: [],
    image: null,
    activeText: 'Active',
    dataAccessSuccess: true,
    errorData: '',
  }),
  methods: {
    async populate() {
      this.errorData = '';
      try {
        this.categoryData = await HTTP.get('/category');
        this.categoryData = this.categoryData.data.category.records;
        this.subCategoryData = await HTTP.get('/subcategory');
        this.subCategoryData = this.subCategoryData.data.subcategory.records;
        this.productData = await HTTP.get('/product');
        this.productData = this.productData.data.product.records;
      } catch (error) {
        this.dataAccessSuccess = false;
        this.errorData = 'The database connection is offline';
        console.log(this.dataAccessSuccess);
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
          })
          count++;
        }
        count = 0;
        while (count < this.categoryData.length) {
          this.category[this.categoryData[count][0]] = this.categoryData[count];
          count++;
        }
        //Sub-Category
        count = 0;
        while (count < this.subCategoryData[this.subCategoryData.length - 1][0]) {
          //Default values for missing entries
          this.subCategory.push({
            subCategoryId: 0,
            subCategoryName: 'Not Found',
            subCategoryPosition: 0,
            categoryId: 0,
            adminId: 0,
          })
          count++;
        }
        count = 0;
        while (count < this.subCategoryData.length) {
          this.subCategory[this.subCategoryData[count][0]] = this.subCategoryData[count];
          count++;
        }
        //Products
        count = 0;
        while (count < this.productData[this.productData.length - 1][0]) {
          //Default values for missing entries
          this.products.push({
            productId: 0,
            subCategory: 'Not Found',
            category: 'Not Found',
            productName: 'Not Found',
            productPurchasePrice: 'Not Found',
            productSellingPrice: 'Not Found',
            productImgUrl: 'Not Found',
            productActive: 'Not Found',
            productDescription: 'Not Found',
            adminId: 'Not Found',
            productStamp: 'Not Found',
            visible: false
          })
          count++;
        }
        count = 0;
        var active = false;
        while (count < this.productData.length) {
          active = false;
          if (this.productData[count][6] === 1) {
            active = true;
          }
          this.products[this.productData[count][0]] = {
            productId: this.productData[count][0],
            subCategory: this.subCategory[this.productData[count][1]][1],
            category: this.category[this.subCategory[this.productData[count][1]][3]][1],
            productName: this.productData[count][2],
            productPurchasePrice: this.productData[count][3],
            productSellingPrice: this.productData[count][4],
            productImgUrl: this.productData[count][5],
            productActive: active, //TODO - active to boolean? this.productData[count][6]
            productDescription: this.productData[count][7],
            adminId: this.productData[count][8],
            productStamp: this.productData[count][9],
            visible: true
          }
          count++;
        }
        console.log(this.products);
      }
    },
    saveChanges() {
      console.log('Save Changes');
      // document.getElementById("editProductModal").close()
      // console.log(document.getElementById("editProductModal"))
    },
    toggleActiveEdit() {
      // console.log(prod)
      const ActiveButton = document.getElementById("btnActiveEdit");
      this.selected.active = !this.selected.active;
      if (this.selected.active) {
        ActiveButton.style.backgroundColor = "green";
        this.activeText = 'Active';
        this.products[this.selected.productId].productActive = true;
      } else {
        ActiveButton.style.backgroundColor = "red";
        this.activeText = 'Not Active';
        this.products[this.selected.productId].productActive = false;
      }
    },
    toggleActiveAdd() {
      console.log('TODO - Toggle active for add new product');
    },
    submitProduct() {
      console.log('submit product');
      // var prod = {
      //   subCategoryId:
      //   productName:
      //   productPurchasePrice:
      //   productSellingPrice:
      //   productImgUrl:
      //   productActive:
      //   productDescription:
      //   adminId:
      //   productStamp:
      // }
      // await HTTP.post('/product', {prod}).then((res) => {
      //   console.log(res)
      // })
    },
    searchOnTable() {
      this.searched = searchByName(this.products, this.search);
    },
    onDelete(item) {
      console.log('Delete Item:') //TODO
      console.log(item.productId);
      // delete this.products[item.productId]
      console.log(item.productId);
      this.products[item.productId] = null;
      // HTTP.delete('/product/' + item.productId).then(function(url) { console.log('Item Deleted') })
    },
    cancelEdit() {
      console.log('Cancel Edit');
      this.products[this.restoreSelected.productId] = this.restoreSelected;
      console.log('TODO - Get restore selected to actually work');
      console.log(this.restoreSelected);
      // this.products[this.restoreSelected.productId].subCategory = this.restoreSelected.subCategory
      // this.products[this.restoreSelected.productId].category = this.restoreSelected.category
      // this.products[this.restoreSelected.productId].productName = this.restoreSelected.productName
      // this.products[this.restoreSelected.productId].productPurchasePrice = this.restoreSelected.productPurchasePrice
      // this.products[this.restoreSelected.productId].productSellingPrice = this.restoreSelected.productSellingPrice
      // this.products[this.restoreSelected.productId].productImgUrl = this.restoreSelected.productImgUrl
      // this.products[this.restoreSelected.productId].productActive = this.restoreSelected.productActive
      // this.products[this.restoreSelected.productId].productDescription = this.restoreSelected.productDescription
    },
    onSelect(item) {
      this.selected = item;
      this.restoreSelected = item;
      // var count = 0
      // var notFound = true
      // console.log(this.selected.productName)
      // while (count<this.category.length || notFound) {
      //   console.log(this.category[count][1])
      //   if (this.category[count][1]===this.selected.productName) {
      //     console.log(this.category[count])
      //     notFound = false
      //   }
      //   count++
      // }
      // this.subSubCategory.
    },
    selectCategory(input) {
      var e = null;
      this.subSubCategory = [];
      if (input) {
        var e = document.getElementById("editProductForm");
      } else {
        var e = document.getElementById("addProductForm");
      }
      if (e) {
        var name = e.options[e.selectedIndex].text;
        var count = 0;
        var notFound = true;
        var selectedCategory = null;
        while (count < this.category.length && notFound) {
          if (name === this.category[count][1]) {
            notFound = false;
            selectedCategory = this.category[count];
          }
          count++;
        }
        count = 0;
        notFound = true;
        if (selectedCategory) {
          while (count < this.subCategory.length && notFound) {
            if (this.subCategory[count][3] === selectedCategory[0]) {
              this.subSubCategory.push(this.subCategory[count]);
            }
            count++;
          }
        }
        // console.log(this.subSubCategory)
      } else {
        console.log('Select Category Input Error');
      }
    },
    test() {
      console.log(this.image);
    },
    // onPickFile () {
    //   console.log('Upload File')
    //   // this.$refs.fileInput.click()
    // },
    onFilePicked(event) {
      // console.log(event);
      const files = event.target.files;
      this.image = files[0];
      // console.log(this.image);
      this.upload();
    },
    async addItem() {
      let item = {
        subCategoryId: 0,
        productName: "Product Name",
        productPurchasePrice: 0.0,
        productSellingPrice: 0.0,
        productImgUrl: "Loadable Image Hyperlink From Firebase",
        productActive: "Why is this a varchar? - might need to be changed",
        productDescription: "Description",
        adminId: 0,
        productStamp: "Timestamp"
      }
      await HTTP.post('/product', item).then((res) => {
        console.log(res)
      })
    },
    async editItem() {
      const itemId = 0
      let item = {
        subCategoryId: 0,
        productName: "Product Name",
        productPurchasePrice: 0.0,
        productSellingPrice: 0.0,
        productImgUrl: "Loadable Image Hyperlink From Firebase",
        productActive: "Why is this a varchar? - might need to be changed",
        productDescription: "Description",
        adminId: 0,
        productStamp: "Timestamp"
      }
      await HTTP.put('/product/' + itemId, item)
    },
    removeItem(itemId) {
      HTTP.delete('/product/' + itemId).then((url) => { 
        console.log(url)
      })
    },
    async upload() {
      const fileName = this.image.name;
      const storageRef = firebase.storage().ref('/item/' + filename);
      const uploadTask = storageRef.put(this.image);
      uploadTask.on('state_changed', (snapshot) => {},
        (error) => {
          // console.log(error);
        }, async () => {
          const url = storageRef.getDownloadURL().then((url) => {
            // document.getElementById("theImage").src = url
            return url;
          });
          // console.log(url)
        });
    },
  },
  created() {
    this.searched = this.products;
  },
  beforeMount() {
    this.populate();
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

  .tabs {
    margin-bottom: 10px !important;
  }

  .tab-link {
    color: #444 !important;
  }

  .tab-link:hover {
    background: white !important;
    text-decoration: none !important;
  }

  .CBactiveToggle {
    background-color: green;
    width: 100%;
  }

  .md-field {
    max-width: 300px;
  }

  #textarea {
    padding-left: 5px;
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

</style>
