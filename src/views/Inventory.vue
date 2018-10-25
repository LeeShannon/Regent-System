<template>
<div class="space-top ">
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

    <md-table-empty-state md-label="Loading..." :md-description="`If this takes more than 30 seconds please hit the reload button`">
    </md-table-empty-state>

    <md-table-row slot="md-table-row" slot-scope="{ item }">
      <md-table-cell md-label="ProductId" md-sort-by="productId" md-numeric> {{ item.productId }} </md-table-cell>
      <md-table-cell md-label="Name" md-sort-by="productName" md-numeric> {{ item.productName }} </md-table-cell>
      <md-table-cell md-label="Sub-Category" md-sort-by="subCategory" md-numeric> {{ item.subCategory }} </md-table-cell>
      <md-table-cell md-label="Category" md-sort-by="category" md-numeric> {{ item.category }} </md-table-cell>
      <md-table-cell md-label="Purchase Price" md-sort-by="productPurchasePrice" md-numeric> {{ item.productPurchasePrice }} </md-table-cell>
      <md-table-cell md-label="Selling Price" md-sort-by="productSellingPrice" md-numeric> {{ item.productSellingPrice }} </md-table-cell>
      <md-table-cell md-label="ImgUrl" md-sort-by="productImgUrl" md-numeric> {{ item.productImgUrl }} </md-table-cell>
      <md-table-cell md-label="Active" md-sort-by="productActive" md-numeric> {{ item.productActive }} </md-table-cell>
      <!-- <md-table-cell md-label="Description" md-sort-by="id" md-numeric> {{ item.productDescription }} </md-table-cell> -->
      <md-table-cell md-label="AdminId" md-sort-by="adminId" md-numeric> {{ item.adminId }} </md-table-cell>
      <md-table-cell md-label="Timestamp" md-sort-by="productStamp" md-numeric> {{ item.productStamp }} </md-table-cell>
      <md-table-cell md-label="Actions">
        <button @click="onSelect(item)"  type="button" class="my-btn-icon" data-toggle="modal" data-target="#editProductModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
        <button @click="onSelect(item)" type="button" class="my-btn-icon">
            <i class="fas fa-trash-alt"></i>
          </button>
      </md-table-cell>
    </md-table-row>
  </md-table>

  Selected: {{ selected }}<br>
  Searched: {{ search }}

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
                  <md-input type="text" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Quantity</label>
                  <md-input type="number" required></md-input>
                </md-field>
              </div>
            </div>

            <div class="form-row">
              <md-field :class="messageClass" id="textarea">
                <label>Description</label>
                <md-textarea v-model="textarea" required></md-textarea>
              </md-field>
            </div>

            <div class="form-row">
              <md-field>
                <label>Upload Image</label>
                <md-file v-model="placeholder" placeholder="Upload Image" />
              </md-field>
              <!-- <div class="col">
                <md-field class="modal-input">
                  <button class="btn btn-primary" @click="onPickFile">Upload Image</button>
                  <input type="file"
                  :name="imgUrl"
                  id="uploadFile"
                  style="display:none"
                  ref="fileInput"
                  @change="onFilePicked"
                  accept="image/" class="input-file">
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>ImageURL</label>
                  <md-input type="text" disabled></md-input>
                </md-field>
              </div> -->
            </div>

            <div class="form-row">
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Category</label>
                <select class="form-control" id="exampleFormControlSelect1">
            <option v-for="cat in category" v-if="cat[1] != null" :key="cat.id">
              {{ cat[1] }}
            </option>

          </select>
              </div>
              <div class="form-group col">
                <label for="exampleFormControlSelect1">Subcategory</label>
                <select class="form-control" id="exampleFormControlSelect1">
            <option v-for="sub in subCategory" v-if="sub[1] != null" :key="sub.id">
              {{ sub[1] }}
            </option>
          </select>
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Origin</label>
                  <md-input type="text" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Supplier</label>
                  <md-input type="text" required></md-input>
                </md-field>
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
          <h5 class="modal-title" id="editProductModalLabel">Modal title</h5>
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
                  <md-input type="text" v-model="selected.name" value="selected.name" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Quantity</label>
                  <md-input type="number" v-model="selected.quantity" value="selected.quantity" required></md-input>
                </md-field>
              </div>
            </div>

            <div class="form-row">
              <md-field :class="messageClass" id="textarea">
                <label>Description</label>
                <md-textarea v-model="textarea" required></md-textarea>
              </md-field>
            </div>

            <div class="form-row">
              <md-field>
                <label>Upload New Image</label>
                <md-file v-model="placeholder" placeholder="Upload Image" />
              </md-field>
              <!-- <div class="col">
                <md-field class="modal-input">
                  <button class="btn btn-primary" @click="onPickFile">Upload Image</button>
                  <input type="file"
                  :name="imgUrl"
                  id="uploadFile"
                  style="display:none"
                  ref="fileInput"
                  @change="onFilePicked"
                  accept="image/" class="input-file">
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>ImageURL</label>
                  <md-input type="text" disabled></md-input>
                </md-field>
              </div> -->
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
                <select class="form-control" id="exampleFormControlSelect1" v-model="selected.subcategory" value="selected.subcategory">
                <option v-for="sub in subCategory" v-if="sub[1] != null" :key="sub.id">
                  {{ sub[1] }}
                </option>
              </select>
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Origin</label>
                  <md-input type="text" v-model="selected.origin" value="selected.origin" required></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Supplier</label>
                  <md-input type="text" v-model="selected.supplier" value="selected.supplier" required></md-input>
                </md-field>
              </div>
            </div>

          </form>
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
import { POINT_CONVERSION_COMPRESSED } from 'constants';

const toLower = text => {
  return text.toString().toLowerCase()
}

const searchByName = (items, term) => {
  if (term) {
    return items.filter(item => toLower(item.productName).includes(toLower(term)))
  }

  return items
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
    tableData: [],
    categoryData: [],
    subCategoryData: [],
    productData: [],
    category: [],
    subCategory: [],
    subSubCategory: [],
    product: [],
    products: []
  }),
  methods: {
    async populate() {
      this.categoryData = await HTTP.get('/category')
      this.categoryData = this.categoryData.data.category.records
      this.subCategoryData = await HTTP.get('/subcategory')
      this.subCategoryData = this.subCategoryData.data.subcategory.records
      this.productData = await HTTP.get('/product')
      this.productData = this.productData.data.product.records
      //Category
      let count = 0
      while (count < this.categoryData[this.categoryData.length-1][0]) {
        //Default values for missing entries
        this.category.push({
          categoryId: 0,
          categoryName: 'Not Found',
          categoryPosition: 0,
          adminId: 0
        })
        count++
      }
      count = 0
      while (count < this.categoryData.length) {
        this.category[this.categoryData[count][0]] = this.categoryData[count]
        count++
      }
      console.log(this.category)
      //Sub-Category
      count = 0
      while (count < this.subCategoryData[this.subCategoryData.length-1][0]) {
        //Default values for missing entries
        this.subCategory.push({
          subCategoryId: 0,
          subCategoryName: 'Not Found',
          subCategoryPosition: 0,
          categoryId: 0,
          adminId: 0
        })
        count++
      }
      count = 0
      while (count < this.subCategoryData.length) {
        this.subCategory[this.subCategoryData[count][0]] = this.subCategoryData[count]
        count++
      }
      console.log(this.subCategory)
      //Products
      count = 0
      var active = false
      while (count < this.productData.length) {
        active = false
        if (this.productData[count][6] == 1) {
          active = true
        }
        this.products.push({
          productId: this.productData[count][0],
          subCategory: this.subCategory[this.productData[count][1]][1],
          category: this.category[this.subCategory[this.productData[count][1]][3]][1],
          productName: this.productData[count][2],
          productPurchasePrice: this.productData[count][3],
          productSellingPrice: this.productData[count][4],
          productImgUrl: this.productData[count][5],
          productActive: active,//TODO - active to boolean? this.productData[count][6]
          productDescription: this.productData[count][7],
          adminId: this.productData[count][8],
          productStamp: this.productData[count][9]
        })
        count++
      }
    },
    submitProduct () {
      console.log('submit product')
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
    searchOnTable () {
      this.searched = searchByName(this.products, this.search)
    },
    onDelete (item) {
      console.log('Delete Item '+item)//TODO
      // HTTP.delete('/item/' + this.itemId).then(function(url) { console.log('Item Deleted') })
    },
    onSelect (item) {
      this.selected = item
      // var count = 0
      // var notFound = true
      // console.log(this.selected.productName)
      // while (count<this.category.length || notFound) {
      //   console.log(this.category[count][1])
      //   if (this.category[count][1]==this.selected.productName) {
      //     console.log(this.category[count])
      //     notFound = false
      //   }
      //   count++
      // }
      // this.subSubCategory.
    },
    selectCategory (input) {
      var e = null
      this.subSubCategory = []
      if (input) {
        var e = document.getElementById("editProductForm")
      } else {
        var e = document.getElementById("addProductForm")
      }
      if (e) {
        var name = e.options[e.selectedIndex].text
        var count = 0
        var notFound = true
        var selectedCategory = null
        while (count<this.category.length && notFound) {
          if (name == this.category[count][1]) {
            notFound = false
            selectedCategory = this.category[count]
          }
          count++
        }
        count = 0
        notFound = true
        if (selectedCategory) {
          while (count<this.subCategory.length && notFound) {
            if (this.subCategory[count][3] == selectedCategory[0]) {
              this.subSubCategory.push(this.subCategory[count])
            }
            count++
          }
        }
        console.log(this.subSubCategory)
      } else {
        console.log('Select Category Input Error')
      }
    },
    onPickFile () {
      console.log('Upload File')
      // this.$refs.fileInput.click()
    },
    onFilePicked (event) {
      console.log(event)
      // const files = event.target.files
      // this.image = files[0]
      // this.upload()
    },
    async upload () {
      // const fileName = this.image.name
      // var filename = this.image.name
      // var storageRef = firebase.storage().ref('/item/'+filename)
      // var uploadTask = storageRef.put(this.image)
      // uploadTask.on('state_changed', function(snapshot){
      // }, function(error) {
      //   // console.log(error)
      // }, async function() {
      //   storageRef.getDownloadURL().then(function(url) {
      //     document.getElementById("theImage").src = url
      //     // console.log(url)
      //   })
      // })
    }
  },
  created() {
    this.searched = this.products
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
