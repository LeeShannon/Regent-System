<template>
<div class="space-top">
  <md-table v-model="searched" md-sort="name" md-sort-order="asc" md-card md-fixed-header style="background-color: white">
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

    <md-table-empty-state md-label="No users found" :md-description="`No results found for this '${search}' query. Try a different search term or create a new record.`">
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
          <button @click="onSelect(item)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#editProductModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
          <button @click="onSelect(item)" type="button" class="my-btn-icon">
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
                <md-field class="modal-input">
                  <label>Product</label>
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
              <div class="col">
                <md-field class="modal-input">
                  <label>Customer</label>
                  <md-input type="number"></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Supplier</label>
                  <md-input type="text"></md-input>
                </md-field>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col">
                <md-field class="modal-input">
                  <label>Departure</label>
                  <md-input type="date" placeholder="year-month-day"></md-input>
                </md-field>
              </div>
              <div class="form-group col">
                <md-field class="modal-input">
                  <label>Arrival</label>
                  <md-input type="date" placeholder="year-month-day"></md-input>
                </md-field>
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Shipment</label>
                  <md-input type="text"></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Status</label>
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
                <md-field class="modal-input">
                  <label>Product</label>
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
              <div class="col">
                <md-field class="modal-input">
                  <label>Customer</label>
                  <md-input type="number"></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Supplier</label>
                  <md-input type="text"></md-input>
                </md-field>
              </div>
            </div>
            <div class="form-row">
              <div class="form-group col">
                <md-field class="modal-input">
                  <label>Departure</label>
                  <md-input type="date" placeholder="year-month-day"></md-input>
                </md-field>
              </div>
              <div class="form-group col">
                <md-field class="modal-input">
                  <label>Arrival</label>
                  <md-input type="date" placeholder="year-month-day"></md-input>
                </md-field>
              </div>
            </div>

            <div class="form-row">
              <div class="col">
                <md-field class="modal-input">
                  <label>Shipment</label>
                  <md-input type="text"></md-input>
                </md-field>
              </div>
              <div class="col">
                <md-field class="modal-input">
                  <label>Status</label>
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

<!-- edit modal -->
<div class="modal fade" id="editProductModal" tabindex="-1" role="dialog" aria-labelledby="editProductModal" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addUserModalLabel">Edit Order</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
      </div>
      <div class="modal-body">

        <form class="" action="index.html" method="post">
          <div class="form-row">
            <div class="col">
              <md-field class="modal-input">
                <label>Product</label>
                <md-input type="text" v-model="selected.product" value="selected.product"></md-input>
              </md-field>
            </div>
            <div class="col">
              <md-field class="modal-input">
                <label>Quantity</label>
                <md-input type="number" v-model="selected.quantity" value="selected.quantity"></md-input>
              </md-field>
            </div>
          </div>
          <div class="form-row">
            <div class="col">
              <md-field class="modal-input">
                <label>Customer</label>
                <md-input type="text" v-model="selected.customer" value="selected.customer"></md-input>
              </md-field>
            </div>
            <div class="col">
              <md-field class="modal-input">
                <label>Supplier</label>
                <md-input type="text" v-model="selected.supplier" value="selected.supplier"></md-input>
              </md-field>
            </div>
          </div>
          <div class="form-row">
            <div class="form-group col">
              <md-field class="modal-input">
                <label>Departure</label>
                <!-- <md-input type="date" v-model="selected.departure" value="selected.departure"></md-input> -->
                 <md-input type="date" v-model="selected.departure"></md-input>
              </md-field>
            </div>
            <div class="form-group col">
              <md-field class="modal-input">
                <label>Arrival</label>
                <md-input type="date" v-model="selected.arrival" value="selected.arrival"></md-input>
              </md-field>
            </div>
          </div>

          <div class="form-row">
            <div class="col">
              <md-field class="modal-input">
                <label>Shipment</label>
                <md-input type="text" v-model="selected.shipment" value="selected.shipment"></md-input>
              </md-field>
            </div>
            <div class="col">
              <md-field class="modal-input">
                <label>Status</label>
                <md-input type="text" v-model="selected.status" value="selected.status"></md-input>
              </md-field>
            </div>
          </div>

        </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save</button>
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
    selected: {},
    orders: [
      {
        id : '0001',
        product: 'Apples',
        supplier: 'Fruit and Veg',
        customer: 'Regent',
        type: 'Acquisition',
        departure: '2018-08-09',
        arrival:'2018-08-08',
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
        departure: '2018-08-08',
        arrival:'2018-08-08',
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
        departure: '2018-08-08',
        arrival:'2018-08-08',
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
    },
    onSelect (item) {
      this.selected = item
    }
  },
  created() {
    this.searched = this.orders
  }
}
</script>

<style lang="css">
.modal-input{
  border-bottom: 1px solid gray;
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

</style>
