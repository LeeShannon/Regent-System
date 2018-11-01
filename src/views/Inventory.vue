<template>
<div class="space-top ">

  <ul class="nav nav-tabs tabs">
    <li class="nav-item"><router-link to="/inventory" class="nav-link active tab-link" style="border-bottom: grey">Inventory</router-link></li>
    <li class="nav-item"><router-link to="/category" class="nav-link tab-link">Category</router-link></li>
    <li class="nav-item"><router-link to="/subcategory" class="nav-link tab-link">Subcategory</router-link></li>
  </ul>

  <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header class="table-bg">
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
      <div class="loader"></div>
    </md-table-empty-state>
<!-- v-if="item.productId != 0" -->
<!-- v-if="item != null" -->
<!-- v-if="item.productName"  -->
<!-- v-if="item.visible==true || item.visible==false" -->
 <!-- v-if="item.visible==true" -->
    <md-table-row slot="md-table-row" slot-scope="{ item }">
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
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Purchase Price</label>
                  <md-input type="number" v-model="newProduct.productPurchasePrice" value="newProduct.productPurchasePrice" required></md-input>
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
                <md-file v-model="newProduct.productImgUrl" @change="onFilePicked" placeholder="Upload Image" required />
              </md-field>
            </div>

            <div class="form-row">
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Category</label>
                <select class="form-control" id="addProductForm" @input="selectCategory(false)" v-model="newProduct.category" value="newProduct.category">
                  <option v-for="cat in category" v-if="cat[1] != null" :key="cat.id">
                    {{ cat[1] }}
                  </option>

              </select>
              </div>
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Subcategory</label>
                <select class="form-control" id="exampleFormControlSelect1" v-model="newProduct.subCategory" value="newProduct.subcategory">
                <option v-for="sub in subSubCategory" v-if="sub[1] != null" :key="sub.id">
                  {{ sub[1] }}
                </option>
              </select>
              </div>
            </div>

          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary submit-btn" @click="submitProduct()" data-dismiss="modal">Submit</button>
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
           <!-- action="index.html" method="post" Dont need this to post as HTTP request - causing issues -->
          <form class="">
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
                <button id="btnActiveEdit" class="btn CBactiveToggle submit-btn" @click="toggleActiveEdit()" style="background-color: lightgray;">{{activeText}}</button>
                <!-- <button>Test</button> -->
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
                <md-file @change="onFilePicked" v-model="selected.productImgUrl" placeholder="Upload Image" accept="image/*" />
              </md-field>
            </div>

            <div class="form-row">
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Category</label>
                <select class="form-control" id="editProductForm" @input="selectCategory(true)" v-model="selected.category" value="selected.category">
                  <option v-for="cat in category" v-if="cat[1] != null" :key="cat.id">
                    {{ cat[1] }}
                  </option>

              </select>
              </div>
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Subcategory</label>
                <select class="form-control" id="exampleFormControlSelect1" v-model="selected.subCategory" value="selected.subcategory">
                <option v-for="sub in subSubCategory" v-if="sub[1] != null" :key="sub.id">
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
          <button type="button" class="btn cancel-btn" @click="cancelEdit()" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary submit-btn" @click="saveChanges()" data-dismiss="modal">Save changes</button>
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
            <button type="button" class="btn cancel-btn" data-dismiss="modal">Cancel</button>
            <button @click="deleteUser()" type="btn btn-primary submit-btn" class="btn btn-primary" data-dismiss="modal">Confirm</button>
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
    imageUrl: null,
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
      this.categoryData = []
      this.subCategoryData = []
      this.productData = []
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
        // console.log(this.dataAccessSuccess);
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
        //Sub-Category
        count = 0;
        while (count < this.subCategoryData[this.subCategoryData.length - 1][0]) {
          //Default values for missing entries
          this.subCategory.push([ 0, 'Not Found', 0, 0, 0])
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
          // TODO - products.push
          this.product.push({
            productId: 0,
            subCategory: 'Not Found',
            category: 'Not Found',
            productName: 'Not Found',
            productPurchasePrice: 'Not Found',
            productSellingPrice: 'Not Found',
            productImgUrl: 'Not Found',
            productActive: false,
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
          if (this.productData[count][1] != 0) {
            // products[
            this.product[this.productData[count][0]] = {
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
          } else {
            console.log('This is a bad item')
            console.log(this.productData[count])
          }
          count++;
        }
        // console.log(this.product);
        // Place where I am probably gonna fuck this shit up
        let counter = 0
        while (counter < this.product.length) {
          if ( this.product[counter].visible ) {
            this.products.push(this.product[counter])
          }
          counter++
        }
        // console.log(this.products);
      }
    },
    validateSaveChanges() {
      let valid = true
      // Logged In
      if (!State.methods.getLoggedIn()) {
        console.log('User needs to be logged in')
        valid = false
      }
      // Product Name
      if (this.selected.productName != null) {
        if(this.selected.productName.length == 0) {
          console.log('Product name invalid - too short')
          valid = false
        }
      } else {
        console.log('Product name invalid - null')
        valid = false
      }
      // Product Purchase Price
      if (this.selected.productPurchasePrice <= 0) {
        console.log('Product purchase price invalid')
        valid = false
      }
      // Product Selling Price
      if (this.selected.productSellingPrice <= 0) {
        console.log('Product selling price invalid')
        valid = false
      }
      // Image Url
      if (this.selected.productImgUrl != null) {
        if (this.selected.productImgUrl.length <= 0) {
          console.log('Product image url invalid - too short')
          valid = false
        }
      } else {
        console.log('Product image url invalid - null')
        valid = false
      }
      // Description
      if (this.selected.productDescription != null) {
        if (this.selected.productDescription.length <= 0) {
          console.log('Product description invalid - too short')
          valid = false
        }
      } else {
        console.log('Product description invalid - null')
        valid = false
      }
      // Valid Login Id
      if (State.data.adminInfo.adminId <= 0) {
        console.log('Invlaid User login Id')
        valid = false
      }
      console.log('valid create')
      console.log(valid)
      return valid
    },
    async saveChanges() {
      console.log(this.imageUrl)
      if(this.validateSaveChanges()) {
        console.log('Save Changes - valid');
        const itemId = this.selected.productId
        let imageInput = null
        console.log('Validate Image')
        console.log(this.imageUrl)
        if(this.imageUrl){
          imageInput = this.imageUrl
        } else {
          imageInput = this.selected.productImgUrl
        }
        let prod = {
          subCategoryId: this.selected.subCategoryId,
          productName: this.selected.productName,
          productPurchasePrice: this.selected.productPurchasePrice,
          productSellingPrice: this.selected.productSellingPrice,
          productImgUrl: imageInput,
          productActive: this.selected.productActive,
          productDescription: this.selected.productDescription
        }
        console.log(prod)
        await HTTP.put('/product/' + itemId, prod)
      } else {
        console.log('Save Changes - invalid');
      }
      // document.getElementById("editProductModal").close()
      // console.log(document.getElementById("editProductModal"))
    },
    toggleActiveEdit() {
      const ActiveButton = document.getElementById("btnActiveEdit");
      this.selected.productActive = !this.selected.productActive;
      console.log(this.selected.productActive)
      if (this.selected.productActive) {
        ActiveButton.style.backgroundColor = "#26b745";
        this.activeText = 'Active';
        this.products[this.selected.productId].productActive = true;
      } else {
        ActiveButton.style.backgroundColor = "#c42f2f";
        this.activeText = 'Not Active';
        this.products[this.selected.productId].productActive = false;
      }
    },
    validateSubmitProduct() {
      let valid = true
      // Logged In
      if (!State.methods.getLoggedIn()) {
        console.log('User needs to be logged in')
        valid = false
      }
      // Product Name
      if (this.newProduct.productName != null) {
        if(this.newProduct.productName.length == 0) {
          console.log('Product name invalid - too short')
          valid = false
        }
      } else {
        console.log('Product name invalid - null')
        valid = false
      }
      // Product Purchase Price
      if (this.newProduct.productPurchasePrice <= 0) {
        console.log('Product purchase price invalid')
        valid = false
      }
      // Product Selling Price
      if (this.newProduct.productSellingPrice <= 0) {
        console.log('Product selling price invalid')
        valid = false
      }
      // Image Url
      if (this.newProduct.productImgUrl != null) {
        if (this.newProduct.productImgUrl.length <= 0) {
          console.log('Product image url invalid - too short')
          valid = false
        }
      } else {
        console.log('Product image url invalid - null')
        valid = false
      }
      // Description
      if (this.newProduct.productDescription != null) {
        if (this.newProduct.productDescription.length <= 0) {
          console.log('Product description invalid - too short')
          valid = false
        }
      } else {
        console.log('Product description invalid - null')
        valid = false
      }
      // Valid Login Id
      if (State.data.adminInfo.adminId <= 0) {
        console.log('Invlaid User login Id')
        valid = false
      }
      console.log('valid create')
      console.log(valid)
      return valid
    },
    async submitProduct() {
      if (this.validateSubmitProduct()) {
        console.log('submit product');
        let count = 0
        let found = false
        let cat = null
        let sub = null
        while (count<this.category.length && !found) {
          if (this.category[count][1] == this.newProduct.category){
            found = true
            cat = this.category[count]
          }
          count++
        }
        if (found) {
          count = 0
          found = false
          while (count<this.subCategory.length && !found) {
            if (this.subCategory[count][1] == this.newProduct.subCategory && this.subCategory[count][3] == cat[0]){
              sub = this.subCategory[count]
              found = true
            }
            count++
          }
          found = true
          // console.log(this.imageUrl)
          // console.log('Admin Id')
          // console.log(State.data.adminInfo.adminId)
          if (found) {
            await HTTP.post('/product', {
              subCategoryId: sub[0],
              productName: this.newProduct.productName,
              productPurchasePrice: this.newProduct.productPurchasePrice,
              productSellingPrice: this.newProduct.productSellingPrice,
              productImgUrl: this.imageUrl,
              productActive: 'true',
              productDescription: this.newProduct.productDescription,
              adminId: State.data.adminInfo.adminId
            }).then((res) => {
              console.log(res)
            })
            this.populate()
          } else {
            console.log('TODO - Sub Category not found - Fucking duplicate names or subsubcategory not working')
          }
        } else {
          console.log('TODO - category not found')
        }
      }
      this.imageUrl = null
    },
    searchOnTable() {
      this.searched = searchByName(this.products, this.search);
    },
    onDelete(item) {
      if (State.data.loggedIn) {
        console.log('Delete Item:') //TODO
        console.log(item.productId);
        // delete this.products[item.productId]
        console.log(item.productId);
        // this.products[item.productId] = null;
        HTTP.delete('/product/' + item.productId).then((url) => { console.log('Item Deleted') })
        let found = false
        let counter = 0
        while (counter<this.searched.length && !found) {
          if (this.searched[counter].productId == item.productId) {
            console.log('Product to remove from the list')
            console.log(this.searched[counter])
            // TODO - Deal with delete
            this.searched.splice(counter, 1)
          }
          counter++
        }
      } else {
        console.log(`Can't delete items if not logged in`)
      }
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
      if (this.selected.productActive) {
        this.activeText = "Active"
      } else {
        this.activeText = "Not Active"
      }
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
        console.log(name)
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
        console.log('Category')
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
        console.log('SubCategory')
      } else {
        console.log('Select Category Input Error');
      }
    },
    onFilePicked(event) {
      const files = event.target.files;
      this.image = files[0];
      this.upload();
    },
    removeItem(itemId) {
      HTTP.delete('/product/' + itemId).then((url) => {
        console.log(url)
      })
    },
    async upload() {
      const fileName = this.image.name;
      const storageRef = firebase.storage().ref('/item/' + fileName);
      const uploadTask = storageRef.put(this.image);
      var results = null
      uploadTask.on('state_changed', (snapshot) => {},
        (error) => {
        }, async () => {
          const url = storageRef.getDownloadURL().then((url) => {
            // document.getElementById("imgUrl").src = url
            console.log(url)
            results = url
            this.imageUrl = url
          });
        });
        if (results) {
          console.log(results)
        } else {
          console.log('results is null')
        }
        // console.log(this.imageUrl)
    },
  },
  created() {
    this.searched = this.products;
  },
  beforeMount() {
    this.populate();
    console.log('User Logged in')
    console.log(State.data.loggedIn)
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
    background-color: lightgray;
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
