<template>
<div class="space-top ">

  <!--  supplier table-->
  <md-table v-model="allSupliers" md-sort="name" md-sort-order="asc" md-card md-fixed-header style="margin-bottom: 3%; background-color: white">
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers">Suppliers</h1>
      </div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addSupplierModal">
          Add Supplier
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
        <md-table-cell md-label="ID" md-sort-by="id" md-numeric>{{ item[0] }}</md-table-cell>
        <md-table-cell md-label="Supplier" md-sort-by="name">{{ item[1]}}</md-table-cell>
        <md-table-cell md-label="Email" md-sort-by="email">{{ item[2] }}</md-table-cell>
        <md-table-cell md-label="phone" md-sort-by="phone">{{ item[3] }}</md-table-cell>
        <md-table-cell md-label="City" md-sort-by="title">{{ item[4] }}</md-table-cell>
        <md-table-cell md-label="Country" md-sort-by="title">{{ item[5] }}</md-table-cell>
        <md-table-cell md-label="Actions">
          <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#editSupplierModal" @click="editSupplierInfo(item[0])" >
              <i class="fas fa-pencil-alt"></i>
          </button>
          <button  type="button" class="my-btn-icon" data-toggle="modal" data-target="#deleteSupplierModal" @click="passSupplierInfo(item[0])">
            <i class="fas fa-trash-alt"></i>
          </button>
        </md-table-cell>
      </md-table-row>
  </md-table>

  <!--  client table-->
  <md-table v-model="allClients" md-sort="name" md-sort-order="asc" md-card md-fixed-header style="margin-bottom: 3%; background-color: white">
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers">Clients</h1>
      </div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addClientModal">
          Add Client
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
        <md-table-cell md-label="ID" md-sort-by="id" md-numeric>{{ item[0] }}</md-table-cell>
        <md-table-cell md-label="Client" md-sort-by="name">{{ item[1]}}</md-table-cell>
        <md-table-cell md-label="Email" md-sort-by="email">{{ item[2] }}</md-table-cell>
        <md-table-cell md-label="phone" md-sort-by="phone">{{ item[3] }}</md-table-cell>
        <md-table-cell md-label="City" md-sort-by="title">{{ item[4] }}</md-table-cell>
        <md-table-cell md-label="Country" md-sort-by="title">{{ item[5] }}</md-table-cell>
        <md-table-cell md-label="Actions">
          <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#editClientModal" @click="editClientInfo(item[0])">
              <i class="fas fa-pencil-alt"></i>
          </button>
          <button  @click="passClientInfo(item[0])" type="button" class="my-btn-icon" data-toggle="modal" data-target="#deleteClientModal">
            <i class="fas fa-trash-alt"></i>
          </button>
        </md-table-cell>
      </md-table-row>
  </md-table>

  <!--  Shipment table-->
  <md-table v-model="allShips" md-sort="name" md-sort-order="asc" md-card md-fixed-header style="margin-bottom: 3%; background-color:white;">
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers">Shipment Partners</h1>
      </div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addShipModal">
          Add Ship Company
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
        <md-table-cell md-label="ID" md-sort-by="id" md-numeric>{{ item[0] }}</md-table-cell>
        <md-table-cell md-label="Company" md-sort-by="name">{{ item[1]}}</md-table-cell>
        <md-table-cell md-label="Email" md-sort-by="email">{{ item[4] }}</md-table-cell>
        <md-table-cell md-label="phone" md-sort-by="phone">{{ item[2] }}</md-table-cell>
        <md-table-cell md-label="Address" md-sort-by="title">{{ item[3] }}</md-table-cell>
        <md-table-cell md-label="Actions">
          <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#editShipModal" @click="editShipInfo(item[0])">
              <i class="fas fa-pencil-alt"></i>
          </button>
          <button type="button" class="my-btn-icon" data-toggle="modal" data-target="#deleteShipModal" @click="passShipInfo(item[0])">
            <i class="fas fa-trash-alt"></i>
          </button>
        </md-table-cell>
      </md-table-row>
  </md-table>

  <!-- add Supplier modal -->
  <div class="modal fade" id="addSupplierModal" tabindex="-1" role="dialog" aria-labelledby="addSupplierModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addSupplierModalLabel">Add Supplier</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label> Supplier Name</label>
                <md-input type="text" v-model="newSupplier.supplierName" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="email" v-model="newSupplier.supplierEmail" required></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="text" v-model="newSupplier.supplierPhone" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>City</label>
                <md-input type="text" v-model="newSupplier.city" required></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Country</label>
                <md-input type="text" v-model="newSupplier.country" required></md-input>
              </md-field>
            </div>
          </div>
          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary submit-btn" @click="addSupplier()" data-dismiss="modal">Submit</button>
        </div>
      </div>
    </div>
  </div>

  <!-- add Client modal -->
  <div class="modal fade" id="addClientModal" tabindex="-1" role="dialog" aria-labelledby="addClientModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addSupplierModalLabel">Add Client</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label> Client Name</label>
                <md-input type="text" v-model="newClient.clientName" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="text" v-model="newClient.clientEmail" required></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="text" v-model="newClient.clientPhoneNumber" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>City</label>
                <md-input type="text" v-model="newClient.clientCity" required></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Country</label>
                <md-input type="text" v-model="newClient.clientCountry" required></md-input>
              </md-field>
            </div>
          </div>
          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary submit-btn" @click="addClient()" data-dismiss="modal">Submit</button>
        </div>
      </div>
    </div>
  </div>

  <!-- add Shipment modal -->
  <div class="modal fade" id="addShipModal" tabindex="-1" role="dialog" aria-labelledby="addShipModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="addSupplierModalLabel">Add Shipment Company</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label> Company Name</label>
                <md-input type="text" v-model="newShip.companyName" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="text" v-model="newShip.companyEmail" required></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="text" v-model="newShip.companyPhone" required></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Address</label>
                <md-input type="text" v-model="newShip.companyAddress" required></md-input>
              </md-field>
            </div>
          </div>

          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary submit-btn" @click="addShip()" data-dismiss="modal">Submit</button>
        </div>
      </div>
    </div>
  </div>


  <!-- editSupplierModal -->
  <div class="modal fade" id="editSupplierModal" tabindex="-1" role="dialog" aria-labelledby="editSupplierModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editSupplierModalLabel">Edit Supplier Info</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label> Supplier Name</label>
                <md-input type="text" required v-model="editedSuppliers.supplierName"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="email" required v-model="editedSuppliers.supplierEmail"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="text" required v-model="editedSuppliers.supplierPhone"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>City</label>
                <md-input type="text" required v-model="editedSuppliers.city"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Country</label>
                <md-input type="text" required v-model="editedSuppliers.country"></md-input>
              </md-field>
            </div>
          </div>
          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
          <button @click="updateSupplier(editedSuppliers.supplierId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal">Save changes</button>
        </div>
      </div>
    </div>
  </div>


  <!-- editClientModal -->
  <div class="modal fade" id="editClientModal" tabindex="-1" role="dialog" aria-labelledby="editClientModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editSupplierModalLabel">Edit Client Info</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label> Client Name</label>
                <md-input type="text" required v-model="editedClient.clientName"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="email" required v-model="editedClient.clientEmail"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="text" required v-model="editedClient.clientPhoneNumber"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>City</label>
                <md-input type="text" required v-model="editedClient.clientCity"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Country</label>
                <md-input type="text" required v-model="editedClient.clientCountry"></md-input>
              </md-field>
            </div>
          </div>
          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
          <button @click="updateClient(editedClient.clientId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal">Save changes</button>
        </div>
      </div>
    </div>
  </div>

  <!-- editShipModal -->
  <div class="modal fade" id="editShipModal" tabindex="-1" role="dialog" aria-labelledby="editShipModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="editSupplierModalLabel">Edit Client Info</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label> Company Name</label>
                <md-input type="text" required v-model="editedShip.companyName"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>E-mail</label>
                <md-input type="email" required v-model="editedShip.companyEmail"></md-input>
              </md-field>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Phone</label>
                <md-input type="text" required v-model="editedShip.companyPhone"></md-input>
              </md-field>
            </div>
            <div class="col-lg-6">
              <md-field class="modal-input">
                <label>Address</label>
                <md-input type="text" required v-model="editedShip.companyAddress"></md-input>
              </md-field>
            </div>
          </div>

          <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
          <button @click="updateShip(editedShip.shipmentId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal">Save changes</button>
        </div>
      </div>
    </div>
  </div>



  <!-- deleteSupplierModal -->
  <div class="modal fade" id="deleteSupplierModal" tabindex="-1" role="dialog" aria-labelledby="deleteSupplierModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="deleteSupplierModalLabel">Delete User</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
            <h3 class="del-headers" value:="selectedRow.supplierId" >Are you sure you wish to delete supplier: <b>{{ selectedRow.supplierName }}</b> ?</h3>
          <br>
        </div>
        <div class="modal-footer" value:="selectedRow.supplierId">
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Cancel</button>
          <button @click="deleteSupplier(selectedRow.supplierId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal" >Confirm</button>
        </div>
      </div>
    </div>
  </div>

  <!-- deleteClientModal -->
  <div class="modal fade" id="deleteClientModal" tabindex="-1" role="dialog" aria-labelledby="deleteClientModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="deleteSupplierModalLabel">Delete User</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
            <h3 class="del-headers" value:="selectedRowClient.clientId" >Are you sure you wish to delete supplier: <b>{{ selectedRowClient.clientName }}</b> ?</h3>
          <br>
        </div>
        <div class="modal-footer" >
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Cancel</button>
          <button @click="deleteClient(selectedRowClient.clientId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal" >Confirm</button>
        </div>
      </div>
    </div>
  </div>

  <!-- deleteShipModal -->
  <div class="modal fade" id="deleteShipModal" tabindex="-1" role="dialog" aria-labelledby="deleteShipModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="deleteSupplierModalLabel">Delete Shipment</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
            <h3 class="del-headers" value:="selectedRowShip.shipmentId" >Are you sure you wish to delete supplier: <b>{{ selectedRowShip.companyName }}</b> ?</h3>
          <br>
        </div>
        <div class="modal-footer" >
          <button type="button" class="btn cancel-btn" data-dismiss="modal">Cancel</button>
          <button @click="deleteShip(selectedRowShip.shipmentId)" type="button" class="btn btn-primary submit-btn" data-dismiss="modal" >Confirm</button>
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
    newSupplier: {
      supplierName: '',
      supplierEmail: '',
      supplierPhone: '',
      city: '',
      country: ''
    },
    newClient: {
      clientId: '',
      clientName: '',
      clientEmail: '',
      clientPhoneNumber: '',
      clientCity: '',
      clientCountry: ''
    },
    newShip: {
      companyName: '',
      companyEmail: '',
      companyPhone: '',
      companyAddress: ''
    },
    allSupliers:[],
    allClients:[],
    allShips:[],
    editedSuppliers:[],
    editedClient: [],
    editedShip: [],
    selectedRow: [],
    selectedRowClient: [],
    selectedRowShip: [],
    suppliers: []
  }),
  methods: {
    async populate() {

      await HTTP.get("/supplier").then((res)=>{
        // console.log(res.data.supplier.records);
        this.allSupliers = res.data.supplier.records;
      })



      console.log(this.allSupliers);

      await HTTP.get("/client").then((res)=>{
        // console.log(res.data.supplier.records);
        this.allClients = res.data.client.records;
      })

      await HTTP.get("/shipment").then((res)=>{
        // console.log(res.data.supplier.records);
        this.allShips = res.data.shipment.records;
      })

      console.log(this.allShips);

},
   async addSupplier(){
     let item = this.newSupplier;
     await HTTP.post('/supplier', item).then((res) => {
       console.log(res)
       console.log("success adding");
     })
},
    async addClient(){
      let item = this.newClient;
      await HTTP.post('/client', item).then((res) => {
        console.log(res)
        console.log("success adding");
      })
},
    async addShip(){
      let item = this.newShip;
      await HTTP.post('/shipment', item).then((res) => {
        console.log(res)
        console.log("success adding");
      })
},
    async editSupplierInfo(id){
      console.log(id);

      await HTTP.get('/supplier/' + id).then((res) => {

        this.editedSuppliers = res.data;
      })

      console.log(this.editedSuppliers)

},
    async updateSupplier(id){
      console.log(id);

      let item = this.editedSuppliers;
      let supId = id;

      await HTTP.put('/supplier/' + supId, item)

},
    async editClientInfo(id){
      console.log(id);

      await HTTP.get('/client/' + id).then((res) => {

        this.editedClient = res.data;
      })

      console.log(this.editedClient)

},
    async updateClient(id){
      console.log(id);

      let item = this.editedClient;
      let clientUpdateId = id;

      await HTTP.put('/client/' + clientUpdateId, item)

},
    async editShipInfo(id){
      console.log(id);

      await HTTP.get('/shipment/' + id).then((res) => {

        this.editedShip = res.data;
      })

      console.log(this.editedShip)

},
    async updateShip(id){
      console.log(id);

      let item = this.editedShip;
      let shipUpdateId = id;

      await HTTP.put('/shipment/' + shipUpdateId, item)

},
 async passSupplierInfo(id){
  let supid = id;
  await HTTP.get("/supplier/" + supid).then((res)=>{
    // console.log(res.data);
    this.selectedRow = res.data;
  })

  console.log(this.selectedRow);
},
  async deleteSupplier(id){

    let suppId= id;
    await HTTP.delete('/supplier/' + suppId).then((res) =>{

      console.log("Supplier in Supplier tables has been deleted");

    })
},async passClientInfo(id){
  let supid = id;
  await HTTP.get("/client/" + supid).then((res)=>{
    // console.log(res.data);
    this.selectedRowClient = res.data;
  })

  console.log(this.selectedRowClient);
},
  async deleteClient(id){

    let clientId= id;
    await HTTP.delete('/client/' + clientId)
},
  async passShipInfo(id){
  let shipid = id;
  await HTTP.get("/shipment/" + shipid).then((res)=>{
    // console.log(res.data);
    this.selectedRowShip = res.data;
  })

  console.log(this.selectedRowShip);
},
  async deleteShip(id){
    console.log(id);
    let shipId = id;
    await HTTP.delete('/shipment/' + shipId).then((res) =>{

      console.log("Supplier in Supplier tables has been deleted");

    })

},
    searchOnTable() {
      this.searched = searchByName(this.suppliers, this.search)
    },
    onSelect (item) {
      this.selected = item
    }

  },
  created() {
    this.searched = this.suppliers
  },
  beforeMount () {
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
