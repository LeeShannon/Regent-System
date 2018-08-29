<template>
  <div class="container-fluid">
    <h1 class="psupplier-headers">Inventory</h1>
    <br />
    <div>
      <button type="button" class=" my-btn" data-toggle="modal" data-target="#addUserModal">
        Add Product
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


    <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addUserModalLabel">Add user</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <div class="row">
          <div class="col-lg-6">
            <label for="productCode" class="grey-text font-weight-light">Product Code</label>
            <input type="text" id="productCode" class="form-control">
          </div>
          <div class="col-lg-6">
            <label for="commodity" class="grey-text font-weight-light">Commodity</label>
            <input type="text" id="commodity" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
            <label for="category" class="grey-text font-weight-light">Category</label>
            <input type="text" id="category" class="form-control">
          </div>
          <div class="col-lg-6">
            <label for="supplier" class="grey-text font-weight-light">Supplier</label>
            <input type="text" id="supplier" class="form-control">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
            <label for="quanity" class="grey-text font-weight-light">Quanity</label>
            <input type="number" id="quanity" class="form-control">
          </div>
          <div class="col-lg-6">
            <label for="image-url" class="grey-text font-weight-light">Image URL</label>
            <input type="text" id="image-url" class="form-control">
          </div>
        </div>
      <br>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
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
  name: 'DatatablePsupplier',
  components: {
    mdbDatatable
  },
  data() {
    return {
      columns: [
        {
          label: 'Image URL',
          field: 'imageUrl',
          sort: 'asc'
        },
        {
          label: 'Product Code',
          field: 'productCode',
          sort: 'asc'
        },
        {
          label: 'Commodity',
          field: 'commodity',
          sort: 'asc'
        },
        {
          label: 'Category',
          field: 'category',
          sort: 'asc'
        },
        {
          label: 'Supplier',
          field: 'supplier',
          sort: 'asc'
        },
        {
          label: 'Quanity',
          field: 'quanity',
          sort: 'asc'
        }
      ],
      rows: [
        {
          imageUrl: '',
          productCode: 'Berry',
          commodity: 'Strawberry',
          category: 'Fruit',
          supplier: 'Fruits Inc',
          quanity: '10000'
        },
        {
          imageUrl: '',
          productCode: 'Bulb',
          commodity: 'Onion',
          category: 'Vegtable',
          supplier: 'Someone',
          quanity: '30000',
        },
        {
          imageUrl: '',
          productCode: 'Melon',
          commodity: 'Watermelon',
          category: 'Fruit',
          supplier: 'Fruits Inc',
          quanity: '2000'
        },
        {
          imageUrl: '',
          productCode: 'Berry',
          commodity: 'Strawberry',
          category: 'Fruit',
          supplier: 'Fruits Inc',
          quanity: '10000'
        }
      ]
    };
  }
};
</script>

<style>
.my-btn {
  outline:none;
  height: 40px;
  text-align: center;
  width: 130px;
  border-radius:40px;
  background: #239ECC;
  color: white;
  border: none;
  letter-spacing:1px;
}

.btn {
  border-radius: 40px !important;
}

.psupplier-headers {
  margin-bottom: .8rem;
  padding-top: .8rem;
  text-transform: uppercase;
  letter-spacing: .02em;
  font-size: 1.5rem;
  margin-top: 0;
}
</style>
