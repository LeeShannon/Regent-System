<template>
<div class="space-top">
  <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header>
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers">Orders</h1>
      </div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addIncomingOrder">
          Add Incoming Order
      </button>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addOutgoingOrder">
          Add Outgoing Order
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
        <md-table-cell md-label="Product" md-sort-by="name">{{ item.product }}</md-table-cell>
        <md-table-cell md-label="Supplier" md-sort-by="email">{{ item.supplier }}</md-table-cell>
        <md-table-cell md-label="Customer" md-sort-by="phone">{{ item.customer }}</md-table-cell>
        <md-table-cell md-label="Type" md-sort-by="title">{{ item.type }}</md-table-cell>
        <md-table-cell md-label="Departure" md-sort-by="title">{{ item.departure }}</md-table-cell>
        <md-table-cell md-label="Arrival" md-sort-by="title">{{ item.arrival }}</md-table-cell>
        <md-table-cell md-label="Quantity" md-sort-by="title">{{ item.quantity }}</md-table-cell>
        <md-table-cell md-label="Shipment" md-sort-by="title">{{ item.shipment }}</md-table-cell>
        <md-table-cell md-label="Submitted By" md-sort-by="title">{{ item.creator }}</md-table-cell>
        <md-table-cell md-label="Status" md-sort-by="title">{{ item.status }}</md-table-cell>
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

  <!-- Incoming orders modal -->

  <div class="modal fade" id="addIncomingOrder" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addUserModalLabel">Add Incoming Order</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <form class="" action="index.html" method="post">
            <div class="form-row">
              <div class="col">
                <label for="exampleInputEmail1">Supplier Name</label>
                <input type="text" class="form-control" placeholder="Supplier Name">
              </div>
              <div class="col">
                <label for="exampleInputEmail1">Product</label>
                <input type="text" class="form-control" placeholder="Product">
              </div>
            </div>
            <div class="form-row">
              <div class="col">
                <label for="exampleInputEmail1"> Quantity</label>
                <input type="number" class="form-control" placeholder="Quantity Ordered">
              </div>
              <div class="col">
                <label for="exampleInputEmail1">Origin</label>
                <input type="text" class="form-control" placeholder="Origin">
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
                <label for="exampleInputEmail1">Origin</label>
                <input type="text" class="form-control" placeholder="Origin">
              </div>
              <div class="col">
                <label for="exampleInputEmail1">Supplier</label>
                <input type="text" class="form-control" placeholder="Supplier">
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

  <!-- Outgoing orders modal -->
  <div class="modal fade" id="addOutgoingOrder" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addUserModalLabel">Add Outgoing Order</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">&times;</span>
    </button>
        </div>
        <div class="modal-body">
          <form class="" action="index.html" method="post">
            <div class="form-row">
              <div class="col">
                <label for="exampleInputEmail1">Name</label>
                <input type="text" class="form-control" placeholder="Name">
              </div>
              <div class="col">
                <label for="exampleInputEmail1">Quantity</label>
                <input type="number" class="form-control" placeholder="Quantity">
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
                <label for="exampleInputEmail1">Origin</label>
                <input type="text" class="form-control" placeholder="Origin">
              </div>
              <div class="col">
                <label for="exampleInputEmail1">Supplier</label>
                <input type="text" class="form-control" placeholder="Supplier">
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
    orders: [
      {
        id : '0001',
        product: 'Apples',
        supplier: 'Fruit and Veg',
        customer: 'Regent',
        type: 'Acquisition',
        departure: '2018/08/01',
        arrival:'2018/09/12',
        quantity: '150',
        shipment: 'Maersk',
        creator : 'admin1@test.com',
        status : 'Pending'
      },
      {
        id : '0002',
        product: 'Lemons',
        supplier: 'Fruit and Veg',
        customer: 'Pick n Pay',
        type: 'Requesition',
        departure: '2018/08/04',
        arrival:'2018/08/22',
        quantity: '75',
        shipment: 'Turner Shipment',
        creator : 'admin2@test.com',
        status: 'Completed'
      },
      {
        id : '0003',
        product: 'Pineapples',
        supplier: 'All sweet',
        customer: 'Rocco Mama',
        type: 'Requisition',
        departure: '2018/07/01',
        arrival:'2018/08/12',
        quantity: '60',
        shipment: 'Maersk',
        creator : 'admin1@test.com',
        status:'Completed'
      },
    ]
  }),
  methods: {
    searchOnTable() {
      this.searched = searchByName(this.orders, this.search)
    }
  },
  created() {
    this.searched = this.orders
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
