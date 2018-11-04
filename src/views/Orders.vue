<template>
<div class="space-top">

  <!-- alerts -->
  <div class="info-msg" v-show="alertBlue1">
    <i class="fa fa-info-circle"></i>
    Incomming Order has been successfully <strong>updated</strong>
    <i style="float: right; cursor: pointer" @click="alertBlue1 = !alertBlue1" class="fas fa-times"></i>
  </div>

  <div class="success-msg" v-show="alertGreen1">
    <i class="fa fa-check"></i>
    Incomming Order  has been successfully <strong>added</strong>
    <i style="float: right; cursor: pointer" @click="alertGreen1 = !alertGreen1" class="fas fa-times"></i>
  </div>

  <div class="warning-msg" v-show="alertOrange1">
    <i class="fa fa-warning"></i>
    Incomming Order  has been successfully <strong>deleted</strong>
    <i style="float: right; cursor: pointer" @click="alertOrange1 = !alertOrange1" class="fas fa-times"></i>
  </div>

  <div class="error-msg" v-show="alertRed1">
    <i class="fa fa-times-circle"></i>
    <strong>Error</strong> something went wrong
    <i style="float: right; cursor: pointer" @click="alertRed1 = !alertRed1" class="fas fa-times"></i>
  </div>

  <!-- Incoming TABLE -->
  <md-table v-model="allIncomingOrdersDisplay" md-sort="name" md-sort-order="asc" md-card md-fixed-header class="table-bg" style="margin-bottom: 5%">
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers"> Incoming Orders</h1>
      </div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addIncomingOrder">
          Add Incoming Order
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
      <md-table-cell md-label="Order ID" md-sort-by="id" md-numeric>{{ item.orderid }}</md-table-cell>
      <md-table-cell md-label="Supplier" md-sort-by="email">{{ item.supplier }}</md-table-cell>
      <md-table-cell md-label="Departure" md-sort-by="title">{{ item.departure }}</md-table-cell>
      <md-table-cell md-label="Arrival" md-sort-by="title">{{ item.arrival }}</md-table-cell>

      <md-table-cell md-label="Actions">
        <button @click="incomingProductDetails(item.orderid)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#viewIncomingProductModal">
              <i class="fas fa-list-alt"></i>
          </button>
        <button @click="incomingEditProduct(item.orderid)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#editIncomingProductModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
        <button @click="passIncomingInfo(item.orderid)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#deleteIncModal">
            <i class="fas fa-trash-alt"></i>
          </button>
      </md-table-cell>
    </md-table-row>
  </md-table>

  <!-- alerts -->
  <div class="info-msg" v-show="alertBlue2">
    <i class="fa fa-info-circle"></i>
    Outgoing order has been successfully <strong>updated</strong>
    <i style="float: right; cursor: pointer" @click="alertBlue = !alertBlue" class="fas fa-times"></i>
  </div>

  <div class="success-msg" v-show="alertGreen2">
    <i class="fa fa-check"></i>
    Outgoing order has been successfully <strong>added</strong>
    <i style="float: right; cursor: pointer" @click="alertGreen = !alertGreen" class="fas fa-times"></i>
  </div>

  <div class="warning-msg" v-show="alertOrange2">
    <i class="fa fa-warning"></i>
    Outgoing order has been successfully <strong>deleted</strong>
    <i style="float: right; cursor: pointer" @click="alertOrange = !alertOrange" class="fas fa-times"></i>
  </div>

  <div class="error-msg" v-show="alertRed2">
    <i class="fa fa-times-circle"></i>
    <strong>Error</strong> something went wrong
    <i style="float: right; cursor: pointer" @click="alertRed = !alertRed" class="fas fa-times"></i>
  </div>

  <!-- Outgoing TABLE -->
  <md-table v-model="allOutgoingOrdersDisplay" md-sort="name" md-sort-order="asc" md-card md-fixed-header class="table-bg" style="margin-bottom: 5%">
    <md-table-toolbar class="table-header">
      <div class=" md-toolbar-section-start">
        <h1 class="md-title page-headers"> Outgoing Orders</h1>
      </div>

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
      <md-table-cell md-label="Order ID" md-sort-by="id" md-numeric>{{ item.orderid }}</md-table-cell>
      <md-table-cell md-label="Client" md-sort-by="name">{{ item.client }}</md-table-cell>
      <md-table-cell md-label="Departure" md-sort-by="email">{{ item.departure }}</md-table-cell>
      <md-table-cell md-label="Arrival" md-sort-by="phone">{{ item.arrival }}</md-table-cell>
      <md-table-cell md-label="Actions">
        <button @click="outgoingProductDetails(item.orderid)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#viewOutgoingProductModal">
              <i class="fas fa-list-alt"></i>
          </button>
        <button @click="outgoingEditProduct(item.orderid)" type="button" class="my-btn-icon" data-toggle="modal" data-target="#editOutgoingProductModal">
              <i class="fas fa-pencil-alt"></i>
          </button>
        <button  @click="passOutgoingInfo(item.orderid)" type="button" class="my-btn-icon"  data-toggle="modal" data-target="#deleteOutModal">
            <i class="fas fa-trash-alt"></i>
          </button>
      </md-table-cell>
    </md-table-row>
  </md-table>

  <!-- delete incomming Modal-->
  <div class="modal fade" id="deleteIncModal" tabindex="-1" role="dialog" aria-labelledby="deleteIncModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="deleteIncModalLabel">Delete Incomming Order</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
          <h3 class="del-headers" v-model="selectedIncomingRow.orderId">Are you sure you wish to delete Order ID: <b>{{ selectedIncomingRow.orderId }}</b> ?</h3>
          <br>
        </div>
          <div class="modal-footer" value:="selectedIncomingRow.orderId">
            <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
            <button @click="deleteIncomingRecord(selectedIncomingRow.orderId)" type="button" class="btn btn-primary" data-dismiss="modal">Confirm</button>
          </div>
        </div>
      </div>
    </div>

    <!-- delete outgoing Modal-->
    <div class="modal fade" id="deleteOutModal" tabindex="-1" role="dialog" aria-labelledby="deleteOutModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="deleteOutModalLabel">Delete Outgoing Order</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
          </div>
          <div class="modal-body">
            <h3 class="del-headers" v-model="selectedOutgoingRow.orderId">Are you sure you wish to delete Order ID: <b>{{ selectedOutgoingRow.orderId }}</b> ?</h3>
            <br>
        </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
              <button @click="deleteOutgoingRecord(selectedOutgoingRow.orderId)" type="button" class="btn btn-primary" data-dismiss="modal">Confirm</button>
            </div>
          </div>
        </div>
      </div>

      <!-- ADD Incoming orders modal -->
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


                <!-- product rows for additional products -->
                <div v-for="row in inputRows" :key="row.id">
                  <div class="form-row">
                    <div class="col">
                      <md-field class="modal-input">
                        <label>Product</label>
                        <md-input type="text" v-model="row.productN" required></md-input>
                      </md-field>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="col">
                      <md-field class="modal-input">
                        <label>Quantity</label>
                        <md-input type="number" v-model="row.quantity" required></md-input>
                      </md-field>
                    </div>
                    <div class="col">
                      <md-field class="modal-input">
                        <label>Price</label>
                        <md-input type="number" v-model="row.price" required></md-input>
                      </md-field>
                    </div>
                  </div>
                  <button type="button" class="my-btn-icon minus-icon" name="button" @click="removeRow(rwo.id)"><i class="fas fa-minus-circle" style="font-size: 1.5em; color: #d32632"></i></button>
                </div>

                <button type="button" name="button" class="my-btn-icon plus-icon" @click="addRow"><i class="fas fa-plus-circle" style="font-size: 1.5em; color: #2fb714"></i></button>
                <!-- the rest of the fields -->
                <div class="form-row">
                  <div class="col">
                    <md-field class="modal-input">
                      <label>Supplier</label>
                      <md-input type="text" required v-model="newOrder.supplier"></md-input>
                    </md-field>
                  </div>
                  <div class="col">

                    <label>Shipment</label>

                    <select class="form-control" id="exampleFormControlSelect1" v-model="newOrder.shipCo">

                  <option v-for="option in shipOption" v-bind:value="option.shipId"  :key="option.id">{{option.shipName}}</option>


                </select>

                  </div>
                </div>
                <div class="form-row">
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Departure</label>
                      <md-input type="date" id="dateField" placeholder="departure" required v-model="newOrder.departure">
                      </md-input>
                    </md-field>
                  </div>
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Arrival</label>
                      <md-input type="date" id="dateField2" placeholder="arrival" required v-model="newOrder.arrival">/>
                      </md-input>
                    </md-field>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn cancel-btn" data-dismiss="modal" style="background-color: #3fc7cc">Close</button>
              <button type="submit" class="btn btn-primary submit-btn" @click="addOrderIn()" data-dismiss="modal" >Submit</button>
            </div>
          </div>
        </div>
      </div>

      <!-- ADD Outgoing orders modal -->
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
                <!-- product rows for additional products -->
                <div v-for="row in inputRows" :key="row.id">
                  <div class="form-row">
                    <div class="col">
                      <md-field class="modal-input">
                        <label>Product</label>
                        <md-input type="text" v-model="row.productN" required></md-input>
                      </md-field>
                    </div>
                  </div>
                  <div class="form-row">
                    <div class="col">
                      <md-field class="modal-input">
                        <label>Quantity</label>
                        <md-input type="number" v-model="row.quantity" required></md-input>
                      </md-field>
                    </div>
                    <div class="col">
                      <md-field class="modal-input">
                        <label>Price</label>
                        <md-input type="number" v-model="row.price" required></md-input>
                      </md-field>
                    </div>
                  </div>
                  <button type="button" class="my-btn-icon minus-icon" name="button" @click="removeRow(row.id)"><i class="fas fa-minus-circle" style="font-size: 1.5em; color: #d32632"></i></button>
                </div>

                <button type="button" name="button" class="my-btn-icon plus-icon" @click="addRow"><i class="fas fa-plus-circle" style="font-size: 1.5em; color: #2fb714"></i></button>
                <!-- the rest of the fields -->
                <div class="form-row">
                  <div class="col">
                    <md-field class="modal-input">
                      <label>Client</label>
                      <md-input type="text" required v-model="newOrder.supplier"></md-input>
                    </md-field>
                  </div>
                  <div class="col">

                    <label>Shipment</label>

                    <select class="form-control" id="exampleFormControlSelect1" v-model="newOrder.shipCo">

                  <option v-for="option in shipOption" v-bind:value="option.shipId" :key="option.id">{{option.shipName}}</option>


                </select>
                  </div>
                </div>
                <div class="form-row">
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Departure</label>
                      <md-input type="date" id="dateField3" placeholder="departure" required v-model="newOrder.departure"> /></md-input>
                    </md-field>
                  </div>
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Arrival</label>
                      <md-input type="date" id="dateField4" placeholder="arrival" required v-model="newOrder.arrival"> /></md-input>
                    </md-field>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary submit-btn" @click="addOrderOut()" data-dismiss="modal">Submit</button>
            </div>
          </div>
        </div>
      </div>

      <!-- edit Incoming modal -->
      <div class="modal fade" id="editIncomingProductModal" tabindex="-1" role="dialog" aria-labelledby="editIncomingProductModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addUserModalLabel">Edit Incoming Order Details</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
            </div>
            <div class="modal-body">

              <form class="" action="index.html" method="post">
                <div class="form-row">
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Departure</label>
                      <!-- <md-input type="date" v-model="selected.departure" value="selected.departure"></md-input> -->
                      <md-input type="date" id="dateField5" v-model="incomingUpdateContent[0].departure" value="incomingUpdateContent[0].departure"></md-input>
                    </md-field>
                  </div>
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Arrival</label>
                      <md-input type="date" id="dateField6" v-model="incomingUpdateContent[0].arrival" value="incomingUpdateContent[0].arrival"></md-input>
                    </md-field>
                  </div>
                </div>
                <div class="form-row">
                  <div class="col">
                    <label>Shipment</label>
                    <select class="form-control" id="exampleFormControlSelect1" v-model="incomingUpdateContent[0].shipmentId">

              <!-- <option v-model="incomingUpdateContent[0].shipName" value="incomingUpdateContent[0].shipId">{{incomingUpdateContent[0].shipName}}</option> -->
              <option v-for="option in incomingUpdateContent[0].shipTable" v-bind:value="option.shipmentId" :key="option.id">{{option.companyName}}</option>
            </select>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary submit-btn" data-dismiss="modal" @click="saveEditedIncomingOrder()">Save</button>
            </div>
          </div>
        </div>
      </div>

      <!-- edit Outgoing modal -->
      <div class="modal fade" id="editOutgoingProductModal" tabindex="-1" role="dialog" aria-labelledby="editOutgoingProductModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addUserModalLabel">Edit Outgoing Order Details</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
            </div>
            <div class="modal-body">
              <form class="" action="index.html" method="post">
                <div class="form-row">
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Departure</label>
                      <!-- <md-input type="date" v-model="selected.departure" value="selected.departure"></md-input> -->
                      <md-input type="date" id="dateField7" v-model="outgoingUpdateContent[0].departure" value="outgoingUpdateContent[0].departure"></md-input>
                    </md-field>
                  </div>
                  <div class="form-group col">
                    <md-field class="modal-input">
                      <label>Arrival</label>
                      <md-input type="date" id="dateField8" v-model="outgoingUpdateContent[0].arrival" value="outgoingUpdateContent[0].arrival"></md-input>
                    </md-field>
                  </div>
                </div>

                <div class="form-row">
                  <div class="col">
                    <label>Shipment</label>
                    <select class="form-control" id="exampleFormControlSelect1" v-model="outgoingUpdateContent[0].shipmentId">

              <!-- <option v-model="incomingUpdateContent[0].shipName" value="incomingUpdateContent[0].shipId">{{incomingUpdateContent[0].shipName}}</option> -->
              <option v-for="option in outgoingUpdateContent[0].shipTable" v-bind:value="option.shipmentId" :key="option.id">{{option.companyName}}</option>
            </select>
                  </div>
                </div>
              </form>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary submit-btn" data-dismiss="modal" @click="saveEditedOutgoingOrder()">Save</button>
            </div>
          </div>
        </div>
      </div>





      <!-- View Incoming modal -->
      <div class="modal fade" id="viewIncomingProductModal" tabindex="-1" role="dialog" aria-labelledby="viewIncomingProductModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addUserModalLabel">View Incoming Order</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
            </div>
            <div class="modal-body">
              <form class="" action="index.html" method="post">

                <table class="table table-responsive-lg table-borderless table-status" style="margin-bottom: 2%;">
                  <thead class="table-header">
                    <tr>
                      <th scope="col">Product</th>
                      <th scope="col">Quantity</th>
                      <th scope="col">Price</th>
                    </tr>
                  </thead>
                  <tbody v-for="p in incomingProductOrderData" :key="p.id">
                    <tr>
                      <td>{{p.productName}}</td>
                      <td>{{p.productQuantity}}</td>
                      <td>R {{p.productPrice}}</td>
                    </tr>
                  </tbody>
                  <tfoot>
                    <td></td>
                    <td style="font-weight: 400">Total:</td>
                    <td style="font-weight: 400">
                      <p value:="incomingOfferedOrderData[5]" value="incomingOfferedOrderData[5]"> R {{incomingOfferedOrderData[5]}}</p>
                    </td>
                  </tfoot>
                </table>
                <hr>
                <div class="row">
                  <div class="col" style="padding-left: 5%">
                    <label class="home-headers">Supplier:</label>
                    <p style="font-weight: 300;" value:="incomingOfferedOrderData[2]">{{ incomingOfferedOrderData[2] }}</p>
                  </div>
                  <div class="col">
                    <label class="home-headers">Created Date:</label>
                    <p style="font-weight: 300" value:="incomingOfferedOrderData[4]">{{ incomingOfferedOrderData[4] }}</p>
                  </div>
                </div>

                <hr>
                <div class="row">
                  <div class="col" style="padding-left: 5%">
                    <label class="home-headers">Departure:</label>
                    <p style="font-weight: 300" value:="incomingProductShipDate[3]" value="incomingProductShipDate[3]">{{incomingProductShipDate[3]}}</p>
                  </div>
                  <div class="col">
                    <label class="home-headers">Arrival:</label>
                    <p style="font-weight: 300" value:="incomingProductShipDate[4]" value="incomingProductShipDate[4]">{{incomingProductShipDate[4]}}</p>
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col" style="padding-left: 5%">
                    <label class="home-headers">Shipment Info:</label>
                    <table class="table table-responsive-lg table-borderless table-status" style="margin-bottom: 2%;">
                      <tbody>
                        <tr>
                          <td>
                            <p value:="incomingProductShipInfoData[1]">{{incomingProductShipInfoData[1]}}</p>
                          </td>
                          <td>
                            <p value:="incomingProductShipInfoData[2]">{{incomingProductShipInfoData[2]}}</p>
                          </td>
                          <td>
                            <p value:="incomingProductShipInfoData[4]">{{incomingProductShipInfoData[4]}}</p>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>

      <!-- View Outgoing modal -->
      <div class="modal fade" id="viewOutgoingProductModal" tabindex="-1" role="dialog" aria-labelledby="viewOutgoingProductModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="addUserModalLabel">View Outgoing Order</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
            </div>
            <div class="modal-body">

              <form class="" action="index.html" method="post">
                <div class="row">
                  <div class="col">
                    <table class="table table-responsive-lg table-borderless table-status" style="margin-bottom: 2%;">
                      <thead class="table-header">
                        <tr>
                          <th scope="col">Product</th>
                          <th scope="col">Quantity</th>
                          <th scope="col">Price</th>
                        </tr>
                      </thead>
                      <tbody v-for="p in outgoingProductOrderData" :key="p.id">
                        <tr>
                          <td>{{p.productName}}</td>
                          <td>{{p.productQuantity}}</td>
                          <td>R {{p.productPrice}}</td>
                        </tr>
                      </tbody>
                      <tfoot>
                        <td></td>
                        <td style="font-weight: 400">Total:</td>
                        <td style="font-weight: 400">
                          <p value:="incomingOfferedOrderData[5]" value="incomingOfferedOrderData[5]"> R {{incomingOfferedOrderData[5]}}</p>
                        </td>
                      </tfoot>
                    </table>
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col" style="padding-left: 5%">
                    <label class="home-headers">Client:</label>
                    <p style="font-weight: 300" value:="incomingOfferedOrderData[2]">{{ incomingOfferedOrderData[2] }}</p>
                  </div>
                  <div class="col">
                    <label class="home-headers">Created Date:</label>
                    <p style="font-weight: 300" value:="incomingOfferedOrderData[4]">{{ incomingOfferedOrderData[4] }}</p>
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="form-group col" value:="incomingProductShipDate" style="padding-left: 5%">
                    <label class="home-headers">Departure:</label>
                    <p style="font-weight: 300" value:="incomingProductShipDate[3]" value="incomingProductShipDate[3]">{{incomingProductShipDate[3]}}</p>
                  </div>
                  <div class="form-group col">
                    <label class="home-headers">Arrival:</label>
                    <p style="font-weight: 300" value:="incomingProductShipDate[4]" value="incomingProductShipDate[4]">{{incomingProductShipDate[4]}}</p>
                  </div>
                </div>
                <hr>
                <div class="row">
                  <div class="col" style="padding-left: 5%">
                    <label class="home-headers">Shipment Info:</label>
                    <table class="table table-responsive-lg table-borderless table-status" style="margin-bottom: 2%;">
                      <tbody>
                        <tr>
                          <td>
                            <p value:="incomingProductShipInfoData[1]">{{incomingProductShipInfoData[1]}}</p>
                          </td>
                          <td>
                            <p value:="incomingProductShipInfoData[2]">{{incomingProductShipInfoData[2]}}</p>
                          </td>
                          <td>
                            <p value:="incomingProductShipInfoData[4]">{{incomingProductShipInfoData[4]}}</p>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn cancel-btn" data-dismiss="modal">Close</button>
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
    alertBlue1: false,
    alertGreen1: false,
    alertOrange1: false,
    alertRed1: false,
    alertBlue2: false,
    alertGreen2: false,
    alertOrange2: false,
    alertRed2: false,
    searched: [],
    selected: {},
    selectedShip: '',
    shipData: [],
    shipOption: [],
    newOrder: [{
      supplier: '',
      shipCo: '',
      departure: '',
      arrival: ''
    }],
    inputRows: [{
      productN: '',
      quantity: '',
      price: ''
    }],
    order: [],
    orderData: [],
    requestOrder: [],
    orderTable: {
      adminId: '16'
    },
    totOrders: '',
    totShipOrders: [],
    totproductOrder: [],
    offeredOrderTable: [],
    requestedOrderTable: [],
    productOrderTable: [],
    shipmentOrderTable: [],
    shipmentOrderTableUpdated: [],
    allIncomingOrdersDisplay: [],
    allOutgoingOrdersDisplay: [],
    allShipmentCompanyDetails: [],
    allincomingOfferedOrderDetails: [],
    offeredOrderData: [],
    offeredOrderShipData: [],
    requestedOrderShipData: [],
    requestedOrderData: [],
    orderTableData: [],
    orderTableDataOut: [],
    shipmentTableData: [],
    shipmentTableDataOut: [],
    incomingProductDetailsData: [],
    incomingProductOrderData: [],
    incomingProductShipDate: [],
    incomingProductShipInfoData: [],
    incomingOfferedOrderData: [],
    outgoingProductOrderData: [],
    incomingUpdateContent: [{
      departure: '',
      arrival: '',
      shipName: '',
      shimentId: '',
      shipTable: [],
      orderId: ''
    }],
    incomingUpdateContentShip: [],
    outgoingUpdateContent: [{
      departure: '',
      arrival: '',
      shipName: '',
      shimentId: '',
      shipTable: [],
      orderId: ''
    }],
    outgoingUpdateContentShip: [],
    incomingProductOrderToDelete: [],
    incomingProductOrderToDeleteIds: [],
    outgoingProductOrderToDelete: [],
    outgoingProductOrderToDeleteIds: [],
    selectedIncomingRow: [],
    selectedOutgoingRow: [],
    orders: []
  }),
  methods: {
    async populate2() {
      let count = 0;
      // Calls
      await HTTP.get('/offeredorder').then((res) => {
          this.offeredOrderData = res.data.offeredorder.records;
          this.allincomingOfferedOrderDetails = res.data.offeredorder.records;
      })
      await HTTP.get('/requestedorder').then((res) => {
          this.requestedOrderData = res.data.requestedorder.records;
      })
      await HTTP.get('/shipment').then((res) => {
          this.shipData = res.data.shipment.records;
      })
      await HTTP.get('/shipmentorder').then((res) => {
          this.totShipOrders = res.data.shipmentorder.records;
          this.totIncomingShipOrder = res.data.shipmentorder.records;
      })
      await HTTP.get('/productorder').then((res) => {
          this.totproductOrder = res.data.productorder.records;
      })
      await HTTP.get('/order').then((res) => {
          this.orderData = res.data.order.records;
      })

      // Setting Request Hierarchy
      //OrderData
      count = 0;
      while (count < this.orderData[this.orderData.length - 1][0]) {
        //Default values for missing entries
        this.order.push([0, 0])
        count++;
      }
      count = 0;
      // while (count < this.orderData[this.orderData.length - 1][0]) { // - same as this
      while (count < this.order.length) {
        //Default values for missing entries
        this.order[count] = [this.orderData[count][0], this.orderData[count][1]]
        count++;
      }

      // Processing Returned Data
      count = 0;
      while (count < this.shipData.length) {
          this.shipOption.push({
              shipId: this.shipData[count][0],
              shipName: this.shipData[count][1],
              shipPhone: this.shipData[count][2],
              shipAddress: this.shipData[count][3],
              shipEmail: this.shipData[count][4]
          })
          count++
      }
      console.log('offeredorder')
      console.log(this.offeredOrderData)
      console.log(this.allincomingOfferedOrderDetails)
      console.log('requestedorder')
      console.log(this.requestedOrderData)
      console.log('shipment')
      console.log(this.shipData)
      console.log('shipmentorder')
      console.log(this.totShipOrders)
      console.log(this.totIncomingShipOrder)
      console.log('productorder')
      console.log(this.totproductOrder)
      console.log('order - unprocessed')
      console.log(this.orderData)
      console.log('order - processed')
      console.log(this.order)
    },
    async populate() {
      this.shipData = await HTTP.get('/shipment')
      let count = 0;
      while (count < this.shipData.data.shipment.records.length) {
        this.shipOption.push({
          shipId: this.shipData.data.shipment.records[count][0],
          shipName: this.shipData.data.shipment.records[count][1],
          shipPhone: this.shipData.data.shipment.records[count][2],
          shipAddress: this.shipData.data.shipment.records[count][3],
          shipEmail: this.shipData.data.shipment.records[count][4]
        })
        count++
      }
      await HTTP.get('/offeredorder').then((res) => {
        let count = 0;
        this.offeredOrderData = res.data.offeredOrder.records;
      })
      await HTTP.get('/requestedorder').then((res) => {
        this.requestedOrderData = res.data.requestedOrder.records;
      })
      let count2 = 0;
      while (count2 < this.offeredOrderData.length) {
        let id = this.offeredOrderData[count2][1];
        await HTTP.get('/orders/' + id).then((res) => {
          this.orderTableData.push({
            orderId: res.data.orderId
          })
        })
        count2++;
      }
      console.log("OFFERED/INCOMING ORDER IDs");
      console.log(this.orderTableData);
      let inc = 0;
      while (inc < this.requestedOrderData.length) {
        let id = this.requestedOrderData[inc][1];
        await HTTP.get('/orders/' + id).then((res) => {
          this.orderTableDataOut.push({
            orderId: res.data.orderId
          })
        })
        inc++;
      }
      console.log("REQUESTED/OUTGOING ORDER IDs");
      console.log(this.orderTableDataOut);
      await HTTP.get('/shipmentorder').then((res) => {
        this.totShipOrders = res.data.shipmentOrder.records;
      })
      console.log("SHIPMENT ORDER TABLE");
      console.log(this.totShipOrders);
      let g = 0;
      while (g < this.orderTableData.length) {
        let k = 0;
        while (k < this.totShipOrders.length) {
          if (this.orderTableData[g].orderId == this.totShipOrders[k][5]) {
            this.offeredOrderShipData.push({
              departure: this.totShipOrders[k][3],
              arrival: this.totShipOrders[k][4],
            })
          }
          k++;
        }
        g++;
      }
      console.log("OFFERED SHIPMENT ORDER TABLE");
      console.log(this.offeredOrderShipData);
      let g1 = 0;
      while (g < this.orderTableData.length) {
        let k = 0;
        while (k < this.totShipOrders.length) {
          if (this.orderTableData[g].orderId == this.totShipOrders[k][5]) {
            this.offeredOrderShipData.push({
              departure: this.totShipOrders[k][3],
              arrival: this.totShipOrders[k][4],
            })
          }
          k++;
        }
        g1++;
      }
      console.log("OFFERED SHIPMENT ORDER TABLE");
      console.log(this.offeredOrderShipData);
      let g2 = 0;
      while (g2 < this.orderTableDataOut.length) {
        let k2 = 0;
        while (k2 < this.totShipOrders.length) {
          if (this.orderTableDataOut[g2].orderId == this.totShipOrders[k2][5]) {
            this.requestedOrderShipData.push({
              departure: this.totShipOrders[k2][3],
              arrival: this.totShipOrders[k2][4],
            })
          }
          k2++;
        }
        g2++;
      }
      console.log("REQUESTED SHIPMENT ORDER TABLE");
      console.log(this.requestedOrderShipData);
      let z = 0;
      while (z < this.orderTableData.length) {
        this.allIncomingOrdersDisplay.push({
          orderid: this.orderTableData[z].orderId,
          supplier: this.offeredOrderData[z][2],
          departure: this.offeredOrderShipData[z].departure,
          arrival: this.offeredOrderShipData[z].arrival
        })
        z++;
      }
      console.log("INCOMING DISPLAY ORDER  TABLE");
      console.log(this.allIncomingOrdersDisplay);
      let z1 = 0;
      while (z1 < this.orderTableDataOut.length) {
        this.allOutgoingOrdersDisplay.push({
          orderid: this.orderTableDataOut[z1].orderId,
          client: this.requestedOrderData[z1][2],
          departure: this.requestedOrderShipData[z1].departure,
          arrival: this.requestedOrderShipData[z1].arrival
        })
        z1++;
      }
      console.log("OUTGOING DISPLAY ORDER TABLE");
      console.log(this.allOutgoingOrdersDisplay);
      this.orders.push({
        incoming: this.allIncomingOrdersDisplay,
        outgoing: this.allOutgoingOrdersDisplay
      })
    },
    async incomingProductDetails(id) {
      this.incomingProductOrderData = []
      await HTTP.get('/productorder').then((res) => {
        this.totproductOrder = res.data.productOrder.records;
      })
      let count = 0;
      while (count < this.totproductOrder.length) {
        if (id == this.totproductOrder[count][2]) {
          // console.log(this.totproductOrder[count]);
          this.incomingProductOrderData.push({
            productName: this.totproductOrder[count][3],
            productQuantity: this.totproductOrder[count][4],
            productPrice: this.totproductOrder[count][5],
            shipmentId: this.totproductOrder[count][1]
          })
        }
        count++;
      }
      // console.log(this.incomingProductOrderData);
      await HTTP.get("/shipmentorder").then((res) => {
        this.totIncomingShipOrder = res.data.shipmentOrder.records;
      })
      await HTTP.get("/offeredorder").then((res) => {
        this.allincomingOfferedOrderDetails = res.data.offeredOrder.records;
      })
      let up = 0;
      while (up < this.allincomingOfferedOrderDetails.length) {
        if (id == this.allincomingOfferedOrderDetails[up][1]) {
          // console.log(this.allincomingOfferedOrderDetails[up]);
          this.incomingOfferedOrderData = this.allincomingOfferedOrderDetails[up];
        }
        up++;
      }
      let count1 = 0;
      while (count1 < this.totIncomingShipOrder.length) {
        if (id == this.totIncomingShipOrder[count1][5]) {
          this.incomingProductShipDate.push({
            departure: this.totIncomingShipOrder[count1][3],
            arrival: this.totIncomingShipOrder[count1][4],
            adminId: this.totIncomingShipOrder[count1][2],
            shipId: this.totIncomingShipOrder[count1][1]
          })
          this.incomingProductShipDate = this.totIncomingShipOrder[count1];
        }
        count1++;
      }
      await HTTP.get("/shipment").then((res) => {
        this.allShipmentCompanyDetails = res.data.shipment.records;
      })
      let count2 = 0;
      while (count2 < this.allShipmentCompanyDetails.length) {
        if (this.incomingProductShipDate[1] == this.allShipmentCompanyDetails[count2][0]) {
          // console.log(this.allShipmentCompanyDetails[count2]);
          this.incomingProductShipInfoData = this.allShipmentCompanyDetails[count2];
        }
        count2++;
      }
    },
    async outgoingProductDetails(id) {
      this.outgoingProductOrderData = []
      await HTTP.get('/productorder').then((res) => {
        this.totproductOrder = res.data.productOrder.records;
      })
      let count = 0;
      while (count < this.totproductOrder.length) {
        if (id == this.totproductOrder[count][2]) {
          // console.log(this.totproductOrder[count]);
          this.outgoingProductOrderData.push({
            productName: this.totproductOrder[count][3],
            productQuantity: this.totproductOrder[count][4],
            productPrice: this.totproductOrder[count][5],
            shipmentId: this.totproductOrder[count][1]
          })
        }
        count++;
      }
      // console.log(this.incomingProductOrderData);
      await HTTP.get("/shipmentorder").then((res) => {
        this.totIncomingShipOrder = res.data.shipmentOrder.records;
      })
      await HTTP.get("/requestedorder").then((res) => {
        this.allincomingOfferedOrderDetails = res.data.requestedOrder.records;
      })
      let up = 0;
      while (up < this.allincomingOfferedOrderDetails.length) {
        if (id == this.allincomingOfferedOrderDetails[up][1]) {
          // console.log(this.allincomingOfferedOrderDetails[up]);
          this.incomingOfferedOrderData = this.allincomingOfferedOrderDetails[up];
        }
        up++;
      }
      let count1 = 0;
      while (count1 < this.totIncomingShipOrder.length) {
        if (id == this.totIncomingShipOrder[count1][5]) {
          this.incomingProductShipDate.push({
            departure: this.totIncomingShipOrder[count1][3],
            arrival: this.totIncomingShipOrder[count1][4],
            adminId: this.totIncomingShipOrder[count1][2],
            shipId: this.totIncomingShipOrder[count1][1]
          })
          this.incomingProductShipDate = this.totIncomingShipOrder[count1];
        }
        count1++;
      }
      await HTTP.get("/shipment").then((res) => {
        this.allShipmentCompanyDetails = res.data.shipment.records;
      })
      let count2 = 0;
      while (count2 < this.allShipmentCompanyDetails.length) {
        if (this.incomingProductShipDate[1] == this.allShipmentCompanyDetails[count2][0]) {
          // console.log(this.allShipmentCompanyDetails[count2]);
          this.incomingProductShipInfoData = this.allShipmentCompanyDetails[count2];
        }
        count2++;
      }
    },
    async incomingEditProduct(orderId) {
      this.incomingUpdateContent = [],
        this.incomingUpdateContentShip = []
      // console.log(orderId);
      // console.log(this.totShipOrders);
      // console.log(this.shipOption);

      HTTP.get("/shipment").then((res) => {

        let count = 0;
        while (count < res.data.shipment.records.length) {
          this.incomingUpdateContentShip.push({
            shipmentId: res.data.shipment.records[count][0],
            companyName: res.data.shipment.records[count][1],

          })
          count++;
        }
      })
      console.log(this.totShipOrders);

      let count = 0;
      while (count < this.totShipOrders.length) {
        if (orderId == this.totShipOrders[count][5]) {
          let count1 = 0;
          while (count1 < this.shipOption.length) {
            if (this.totShipOrders[count][1] == this.shipOption[count1].shipId) {
              this.incomingUpdateContent.push({
                departure: this.totShipOrders[count][3],
                arrival: this.totShipOrders[count][4],
                shipName: this.shipOption[count1].shipName,
                shimentId: this.shipOption[count1].shipId,
                shipTable: this.incomingUpdateContentShip,
                orderId: this.totShipOrders[count][5],
                shipmentkeyId: this.totShipOrders[count][0]

              })
            }
            count1++;
          }
        }
        count++;
      }

      console.log(this.incomingUpdateContent[0]);

    },
    async saveEditedIncomingOrder() {
      console.log(this.incomingUpdateContent[0]);
      console.log(this.allIncomingOrdersDisplay);

      let item = this.incomingUpdateContent[0];
      let id = this.incomingUpdateContent[0].shipmentkeyId;

      await HTTP.put('/shipmentOrder/' + id, item).then((res) => {
        this.alertBlue1 = true;
        console.log("i guess you can sleep. With love, God");
      })

    },
    async outgoingEditProduct(orderId) {

      this.outgoingUpdateContent = [],
        this.outgoingUpdateContentShip = []

      HTTP.get("/shipment").then((res) => {
        this.alertBlue2 = true;
        let count = 0;
        while (count < res.data.shipment.records.length) {
          this.outgoingUpdateContentShip.push({
            shipmentId: res.data.shipment.records[count][0],
            companyName: res.data.shipment.records[count][1],

          })
          count++;
        }
      })

      let count = 0;
      while (count < this.totShipOrders.length) {
        if (orderId == this.totShipOrders[count][5]) {
          let count1 = 0;
          while (count1 < this.shipOption.length) {
            if (this.totShipOrders[count][1] == this.shipOption[count1].shipId) {
              this.outgoingUpdateContent.push({
                departure: this.totShipOrders[count][3],
                arrival: this.totShipOrders[count][4],
                shipName: this.shipOption[count1].shipName,
                shimentId: this.shipOption[count1].shipId,
                shipTable: this.outgoingUpdateContentShip,
                orderId: this.totShipOrders[count][5],
                shipmentkeyId: this.totShipOrders[count][0]

              })
            }
            count1++;
          }
        }
        count++;
      }

      console.log(this.outgoingUpdateContent);
    },
    async saveEditedOutgoingOrder() {
      console.log(this.outgoingUpdateContent[0]);
      console.log(this.allIncomingOrdersDisplay);

      let item = this.outgoingUpdateContent[0];
      let id = this.outgoingUpdateContent[0].shipmentkeyId;

      await HTTP.put('/shipmentOrder/' + id, item).then((res) => {
        console.log("i guess it worked twice. With love, God");
      })

    },
    async passIncomingInfo(id) {
      let incomindOrderid = id;
      await HTTP.get("/orders/" + incomindOrderid).then((res) => {
        // console.log(res.data);
        this.selectedIncomingRow = res.data;
      })

    },
    async deleteIncomingRecord(id) {

      console.log(id);

      // Offered ORDER table to get primary key ID
      this.incomingProductOrderToDeleteIds = []
      let count = 0;
      let offeredOrderTableId = 0;

      while (count < this.offeredOrderData.length) {
        if (id == this.offeredOrderData[count][1]) {
          console.log(this.offeredOrderData[count]);
          offeredOrderTableId = this.offeredOrderData[count][0];
        }
        count++;
      }

      // get id of product order table to be deleted

      await HTTP.get('/productOrder').then((res) => {

        this.incomingProductOrderToDelete = res.data.productOrder.records;
      })
      console.log(this.incomingProductOrderToDelete);

      let count1 = 0;

      while (count1 < this.incomingProductOrderToDelete.length) {
        if (id == this.incomingProductOrderToDelete[count1][2]) {
          // console.log(this.totproductOrder[count]);
          this.incomingProductOrderToDeleteIds.push({
            productOrderTableId: this.incomingProductOrderToDelete[count1][0]

          })
        }
        count1++;
      }

      // GET shipment Order table Id

      let count2 = 0;
      let ShipmentOrderTableId = 0;
      while (count2 < this.totShipOrders.length) {
        if (id == this.totShipOrders[count2][5]) {
          ShipmentOrderTableId = this.totShipOrders[count2][0]
        }
        count2++;
      }
      console.log(id);
      console.log(offeredOrderTableId);
      console.log(this.incomingProductOrderToDeleteIds);
      console.log(ShipmentOrderTableId);

      await HTTP.delete('/orders/' + id).then((res) => {

        console.log("Item in orders tables has been deleted");
      })

      await HTTP.delete('/offeredOrder/' + offeredOrderTableId).then((res) => {

        console.log("Item in offeredOrder tables has been deleted");

      })

      await HTTP.delete('/shipmentOrder/' + ShipmentOrderTableId).then((res) => {
        this.alertOrange1 = true;
        console.log("Item in ShipmentOrder tables has been deleted");

      })

      let count3 = 0;
      let productOrderTableId = 0;
      while (count3 < this.incomingProductOrderToDeleteIds.length) {
        productOrderTableId = this.incomingProductOrderToDeleteIds[count3].productOrderTableId
        await HTTP.delete('/productOrder/' + productOrderTableId).then((res) => {

          console.log("Item in productOrder tables has been deleted");

        })
        count3++;
      }

    },
    async passOutgoingInfo(id) {
      let outgoingOrderid = id;
      await HTTP.get("/orders/" + outgoingOrderid).then((res) => {
        // console.log(res.data);
        this.selectedOutgoingRow = res.data;
      })



    },
    async deleteOutgoingRecord(id) {

      console.log(id);

      // Offered ORDER table to get primary key ID
      this.outgoingProductOrderToDeleteIds = []
      let count = 0;
      let requestedOrderTableId = 0;

      while (count < this.requestedOrderData.length) {
        if (id == this.requestedOrderData[count][1]) {
          console.log(this.requestedOrderData[count]);
          requestedOrderTableId = this.requestedOrderData[count][0];
        }
        count++;
      }
      // get id of product order table to be deleted

      await HTTP.get('/productOrder').then((res) => {

        this.outgoingProductOrderToDelete = res.data.productOrder.records;
      })
      console.log(this.outgoingProductOrderToDelete);

      let count1 = 0;

      while (count1 < this.outgoingProductOrderToDelete.length) {
        if (id == this.outgoingProductOrderToDelete[count1][2]) {

          this.outgoingProductOrderToDeleteIds.push({
            productOrderTableId: this.outgoingProductOrderToDelete[count1][0]

          })
        }
        count1++;
      }
      console.log(this.outgoingProductOrderToDeleteIds);

      // GET shipment Order table Id

      let count2 = 0;
      let ShipmentOrderTableId = 0;
      while (count2 < this.totShipOrders.length) {
        if (id == this.totShipOrders[count2][5]) {
          ShipmentOrderTableId = this.totShipOrders[count2][0]
        }
        count2++;
      }
      console.log(id);
      console.log(requestedOrderTableId);
      console.log(this.outgoingProductOrderToDeleteIds);
      console.log(ShipmentOrderTableId);

      await HTTP.delete('/orders/' + id).then((res) => {

        console.log("Item in orders tables has been deleted");
      })

      await HTTP.delete('/requestedOrder/' + requestedOrderTableId).then((res) => {

        console.log("Item in offeredOrder tables has been deleted");

      })

      await HTTP.delete('/shipmentOrder/' + ShipmentOrderTableId).then((res) => {
        this.alertOrange2 = true;
        console.log("Item in ShipmentOrder tables has been deleted");

      })

      let count3 = 0;
      let productOrderTableId = 0;
      while (count3 < this.outgoingProductOrderToDeleteIds.length) {
        productOrderTableId = this.outgoingProductOrderToDeleteIds[count3].productOrderTableId
        await HTTP.delete('/productOrder/' + productOrderTableId).then((res) => {

          console.log("Item in productOrder tables has been deleted");

        })
        count3++;
      }

    },
    searchOnTable() {
      this.searched = searchByName(this.orders, this.search)
    },
    onSelect(item) {
      this.selected = item
    },
    addRow() {
      var elem = document.createElement("div");
      this.inputRows.push({
        productN: "",
        quantity: "",
        price: ""
      });
    },
    async addOrderIn() {

      let count = 0;

      while (count < this.inputRows.length) {

        console.log(this.inputRows[count].productN);

        this.order.push({
          ship: this.newOrder.shipCo,
          supplier: this.newOrder.supplier,
          departure: this.newOrder.departure,
          arrival: this.newOrder.arrival,
          productN: this.inputRows[count].productN,
          quantity: this.inputRows[count].quantity,
          price: this.inputRows[count].price
        })

        count++

      }
      let iterate = 0;
      let totalAmount = 0;
      while (iterate < this.order.length) {

        totalAmount += this.order[iterate].quantity * this.order[iterate].price;

        iterate++;
      }
      console.log(this.order);

      let item = this.orderTable;
      var orderId;
      var adminNo;
      await HTTP.post('/orders', item).then((res) => {
        console.log(res)
        console.log("success adding");
        orderId = res.data;

      })
      console.log(orderId);

      this.offeredOrderTable.push({
        orderId: orderId,
        supplierName: this.newOrder.supplier,
        adminId: this.orderTable.adminId,
        total: totalAmount
      })

      let item2 = this.offeredOrderTable;

      await HTTP.post('/offeredOrder', item2).then((res) => {
        console.log(res)
        console.log("success adding");

      })
      let count2 = 0;
      while (count2 < this.order.length) {

        this.productOrderTable.push({
          shipmentOrderId: this.newOrder.shipCo,
          orderId: orderId,
          productOrderName: this.inputRows[count2].productN,
          productQuantity: this.inputRows[count2].quantity,
          productPrice: this.inputRows[count2].price
        })
        count2++;
      }
      await HTTP.post('/productOrder', this.productOrderTable).then((res) => {
        console.log(res)
        console.log("success P adding");
      })

      console.log(this.newOrder.supplier);
      console.log(this.inputRows[0].productN);

      this.shipmentOrderTable.push({
        shipmentId: this.newOrder.shipCo,
        adminId: this.orderTable.adminId,
        departure: this.newOrder.departure,
        arrival: this.newOrder.arrival,
        orderId: orderId
      })

      await HTTP.post('/shipmentOrder', this.shipmentOrderTable).then((res) => {
        this.alertGreen1 = true;
        console.log(res)
        console.log("success S adding");
      })

    },
    async addOrderOut() {
      this.alertGreen2 = true;
      console.log(this.newOrder.supplier);
      console.log(this.inputRows[0].productN);

      let count = 0;

      while (count < this.inputRows.length) {

        console.log(this.inputRows[count].productN);

        this.requestOrder.push({
          ship: this.newOrder.shipCo,
          supplier: this.newOrder.supplier,
          departure: this.newOrder.departure,
          arrival: this.newOrder.arrival,
          productN: this.inputRows[count].productN,
          quantity: this.inputRows[count].quantity,
          price: this.inputRows[count].price
        })
        count++
      }

      let iterate = 0;
      let totalAmount = 0;
      while (iterate < this.requestOrder.length) {

        totalAmount += this.requestOrder[iterate].quantity * this.requestOrder[iterate].price;

        iterate++;
      }
      console.log(this.requestOrder);


      var orderId;
      var adminNo;
      await HTTP.post('/orders', this.orderTable).then((res) => {
        console.log(res)
        console.log("success adding");
        orderId = res.data;

      })

      this.requestedOrderTable.push({
        orderId: orderId,
        clientName: this.newOrder.supplier,
        adminId: this.orderTable.adminId,
        total: totalAmount
      })

      await HTTP.post('/requestedOrder', this.requestedOrderTable).then((res) => {
        console.log(res)
        console.log("success adding");

      })

      let count3 = 0;
      while (count3 < this.requestOrder.length) {

        this.productOrderTable.push({
          shipmentOrderId: this.newOrder.shipCo,
          orderId: orderId,
          productOrderName: this.inputRows[count3].productN,
          productQuantity: this.inputRows[count3].quantity,
          productPrice: this.inputRows[count3].price
        })
        count3++;
      }
      await HTTP.post('/productOrder', this.productOrderTable).then((res) => {
        console.log(res)
        console.log("success P adding");
      })

      this.shipmentOrderTable.push({
        shipmentId: this.newOrder.shipCo,
        adminId: this.orderTable.adminId,
        departure: this.newOrder.departure,
        arrival: this.newOrder.arrival,
        orderId: orderId
      })

      await HTTP.post('/shipmentOrder', this.shipmentOrderTable).then((res) => {
        console.log(res)
        console.log("success S adding");
      })
    },
    removeRow(index) {
      this.inputRows.splice(index, 1);
    },
    onLoad() {
      //I know its stupid but, selecting elements by name doesnt work so.... yea
      //we have 8 different IDs to get this validation to work for each input
      var input = document.getElementById("dateField");
      var input2 = document.getElementById("dateField2");
      var input3 = document.getElementById("dateField3");
      var input4 = document.getElementById("dateField4");
      var input5 = document.getElementById("dateField5");
      var input6 = document.getElementById("dateField6");
      var input7 = document.getElementById("dateField7");
      var input8 = document.getElementById("dateField8");

      var today = new Date();
      // Set month and day to string to add leading 0
      var day = new String(today.getDate());
      var mon = new String(today.getMonth() + 1); //January is 0!
      var yr = today.getFullYear();

      if (day.length < 2) {
        day = "0" + day;
      }
      if (mon.length < 2) {
        mon = "0" + mon;
      }

      var date = new String(yr + '-' + mon + '-' + day);

      input.disabled = false;
      input.setAttribute('min', date);
      input2.disabled = false;
      input2.setAttribute('min', date);
      input3.disabled = false;
      input3.setAttribute('min', date);
      input4.disabled = false;
      input4.setAttribute('min', date);
      input5.disabled = false;
      input5.setAttribute('min', date);
      input6.disabled = false;
      input6.setAttribute('min', date);
      input7.disabled = false;
      input7.setAttribute('min', date);
      input8.disabled = false;
      input8.setAttribute('min', date);
    }
  },
  created() {
    this.searched = this.orders
  },
  mounted() {
    this.onLoad()
  },
  beforeMount() {
    this.populate2()
  }
}
</script>

<style lang="css">
.submit-btn {
  border-radius: 20px !important;
  padding: 10px 23px 10px 23px !important;
}

.submit-btn:hover {
  box-shadow: 3px 2px 6px #4e4f4e !important;
}

.cancel-btn{
  border-radius: 20px !important;
  padding: 10px 23px 10px 23px !important;
  background-color: #3fc7cc !important;
}

.cancel-btn:hover {
  box-shadow: 3px 2px 6px #4e4f4e !important;
}

.minus-icon {
  float: right;
}

.table-bg {
  background-color: white;
}

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
