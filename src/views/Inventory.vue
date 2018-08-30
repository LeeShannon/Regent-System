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

    <md-table-empty-state md-label="No users found" :md-description="`No user found for this '${search}' query. Try a different search term or create a new user.`">
    </md-table-empty-state>

      <md-table-row slot="md-table-row" slot-scope="{ item }">
        <md-table-cell md-label="Name" md-sort-by="id" md-numeric>{{ item.name }}</md-table-cell>
        <md-table-cell md-label="Category" md-sort-by="name">{{ item.category }}</md-table-cell>
        <md-table-cell md-label="Subcategory" md-sort-by="email">{{ item.subcategory }}</md-table-cell>
        <md-table-cell md-label="Quantity" md-sort-by="phone">{{ item.quantity }}</md-table-cell>
        <md-table-cell md-label="Origin" md-sort-by="title">{{ item.origin }}</md-table-cell>
        <md-table-cell md-label="Supplier" md-sort-by="title">{{ item.supplier }}</md-table-cell>
        <md-table-cell md-label="Actions">
          <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#editProductModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
          <button type="button" class="my-btn-icon">
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
               <md-input type="text"></md-input>
             </md-field>
           </div>
           <div class="col">
             <md-field class="modal-input">
               <label>Quantity</label>
               <md-input type="number"></md-input>
             </md-field>
           </div>
         </div>

         <div class="form-row">
           <div class="form-group col">
          <label for="exampleFormControlSelect1">Category</label>
          <select class="form-control" id="exampleFormControlSelect1">
            <option></option>
            <option>Fruit</option>
            <option>Vegetables</option>

          </select>
        </div>
           <div class="form-group col">
          <label for="exampleFormControlSelect1">Subcategory</label>
          <select class="form-control" id="exampleFormControlSelect1">
            <option></option>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
          </select>
        </div>
         </div>

         <div class="form-row">
             <div class="col">
               <md-field class="modal-input">
                 <label>Origin</label>
                 <md-input type="text"></md-input>
               </md-field>
             </div>
             <div class="col">
               <md-field class="modal-input">
                 <label>Supplier</label>
                 <md-input type="text"></md-input>
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
                   <md-input type="text"></md-input>
                 </md-field>
               </div>
               <div class="col">
                 <md-field class="modal-input">
                   <label>Quantity</label>
                   <md-input type="number"></md-input>
                 </md-field>
               </div>
             </div>

             <div class="form-row">
               <div class="form-group col">
              <label for="exampleFormControlSelect1">Category</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option></option>
                <option>Fruit</option>
                <option>Vegetables</option>

              </select>
            </div>
               <div class="form-group col">
              <label for="exampleFormControlSelect1">Subcategory</label>
              <select class="form-control" id="exampleFormControlSelect1">
                <option></option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
              </select>
            </div>
             </div>

             <div class="form-row">
                 <div class="col">
                   <md-field class="modal-input">
                     <label>Origin</label>
                     <md-input type="text"></md-input>
                   </md-field>
                 </div>
                 <div class="col">
                   <md-field class="modal-input">
                     <label>Supplier</label>
                     <md-input type="text"></md-input>
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
    products: [
      {
        name: 'Apples',
        category: 'Fruit',
        subcategory: 'Pomes',
        quantity: '77',
        origin:'Nairobia',
        supplier: 'Fruit and Veg'
      },
      {
        name: 'Peaches',
        category: 'Fruit',
        subcategory: 'Drupes',
        quantity: '52',
        origin:'London',
        supplier: 'Hipster'
      },
      {
        name: 'Carrot',
        category: 'Vegetable',
        subcategory: 'Root',
        quantity: '60',
        origin:'Zambia',
        supplier: 'Fruit and Veg'
      },
      {
        name: 'Pears',
        category: 'Fruit',
        subcategory: 'Pomes',
        quantity: '100',
        origin:'South Africa',
        supplier: 'Artist'
      },
      {
        name: 'Cabbage',
        category: 'Vegetable',
        subcategory: 'Brassicaceous',
        quantity: '50',
        origin:'South Africa',
        supplier: 'Fruit And Veg'
      },
      {
        name: 'Lemons',
        category: 'Fruit',
        subcategory: 'Citrus',
        quantity: '54',
        origin:'South Africa',
        supplier: 'Msde by Lemon'
      },
      {
        name: 'Watermelon',
        category: 'Fruit',
        subcategory: 'Melon',
        quantity: '26',
        origin:'Rwanda',
        supplier: 'Inyoro Co'
      },
      {
        name: 'Pineapples',
        category: 'Fruit',
        subcategory: 'Tropical',
        quantity: '6',
        origin:'Namibia',
        supplier: 'All Sweet'
      },
      {
        name: 'Tomato',
        category: 'Vegetable',
        subcategory: 'Solanaceous',
        quantity: '150',
        origin:'South Africa',
        supplier: 'Fruit And Veg'
      },
      {
        name: 'Cucumber',
        category: 'Vegetable',
        subcategory: 'Cucurbitaceous',
        quantity: '85',
        origin:'South Africa',
        supplier: 'Fruit And Veg'
      },
      {
        name: 'Egg Plant',
        category: 'Vegetabe',
        subcategory: 'Solanaceous',
        quantity: '56',
        origin:'South Africa',
        supplier: 'Fruit And Veg'
      }
    ]
  }),
  methods: {
    searchOnTable() {
      this.searched = searchByName(this.products, this.search)
    }
  },
  created() {
    this.searched = this.products
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

</style>
