<template>
  <div class="container-fluid">
    <h1>Shipping</h1>
    <br />
    <div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addIncomingOrder">
        Add Incoming Order
      </button>

      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addOutgoingOrder">
        Add Outgoing Order
      </button>
    </div>
<br>
<div class="col-lg-12">
  <mdb-datatable class=""
    :columns="columns"
    :rows="rows"
    striped
    bordered
  />
</div>


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
import { mdbDatatable } from 'mdbvue';

export default {
  name: 'DatatablePage',
  components: {
    mdbDatatable
  },
  data() {
    return {
      columns: [
        {
          label: '#',
          field: 'number'
        },
        {
          label: 'Product',
          field: 'product',
          sort: 'asc'
        },
        {
          label: 'Supplier',
          field: 'supplier',
          sort: 'asc'
        },
        {
          label: 'Customer',
          field: 'customer',
          sort: 'asc'
        },
        {
          label: 'Type',
          field: 'type',
          sort: 'asc'
        },
        {
          label: 'Departure',
          field: 'departure',
          sort: 'asc'
        },
        {
          label: 'Arrival',
          field: 'arrival',
          sort: 'asc'
        },
        {
          label: 'Qty Ordered',
          field: 'qty_ordered',
          sort: 'asc'
        },
        {
          label: 'Shipment',
          field: 'shipment',
          sort: 'asc'
        },
        {
          label: 'Creator',
          field: 'creator',
          sort: 'asc'
        },
        {
          label: 'Status',
          field: 'status',
          sort: 'asc'
        },
      ],
      rows: [
        {
          number : '0001',
          product: 'Apples',
          supplier: 'Fruit and Veg',
          customer: '/',
          type: 'Acquisition',
          departure: '2018/08/01',
          arrival:'2018/09/12',
          qty_ordered: '150',
          shipment: 'Maersk',
          creator : 'admin1@test.com',
          status : 'Pending'
        },
        {
          number : '0002',
          product: 'Lemons',
          supplier: 'Fruit and Veg',
          customer: 'Pick n Pay',
          type: 'Requesition',
          departure: '2018/08/04',
          arrival:'2018/08/22',
          qty_ordered: '75',
          shipment: 'Turner Shipment',
          creator : 'admin2@test.com',
          status: 'Completed'
        },
        {
          number : '0003',
          product: 'Pineapples',
          supplier: 'All sweet',
          customer: 'Rocco Mama',
          type: 'Requisition',
          departure: '2018/07/01',
          arrival:'2018/08/12',
          qty_ordered: '60',
          shipment: 'Maersk',
          creator : 'admin1@test.com',
          status:'Completed'
        },


      ]
    };
  }
};
</script>
<style scoped>
.my-btn {
  outline:none;
  height: 50px;
  text-align: center;
  width: 250px;
  border-radius:40px;
  background: #239ECC;
  color: white;
  border: none;
  letter-spacing:1px;
  margin-right: 35px;
}
</style>
