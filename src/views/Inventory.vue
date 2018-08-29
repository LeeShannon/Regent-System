<template>
  <div class="container-fluid">
    <h1>Inventory</h1>
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
        <h5 class="modal-title" id="addUserModalLabel">Add Products</h5>
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
          label: 'Image',
          field: 'image'
        },
        {
          label: 'Name',
          field: 'name',
          sort: 'asc'
        },
        {
          label: 'Category',
          field: 'category',
          sort: 'asc'
        },
        {
          label: 'Subcategory',
          field: 'subcategory',
          sort: 'asc'
        },
        {
          label: 'Quantity',
          field: 'quantity',
          sort: 'asc'
        },
        {
          label: 'Origin',
          field: 'origin',
          sort: 'asc'
        },
        {
          label: 'Supplier',
          field: 'supplier',
          sort: 'asc'
        },
      ],
      rows: [
        {
          image: 'img',
          name: 'Apples',
          category: 'Fruit',
          subcategory: 'Pomes',
          quantity: '77',
          origin:'Nairobia',
          supplier: 'Fruit and Veg'
        },
        {
          image: 'img',
          name: 'Peaches',
          category: 'Fruit',
          subcategory: 'Drupes',
          quantity: '52',
          origin:'London',
          supplier: 'Hipster'
        },
        {
          image: 'img',
          name: 'Carrot',
          category: 'Vegetable',
          subcategory: 'Root',
          quantity: '60',
          origin:'Zambia',
          supplier: 'Fruit and Veg'
        },
        {
          image: 'img',
          name: 'Pears',
          category: 'Fruit',
          subcategory: 'Pomes',
          quantity: '100',
          origin:'South Africa',
          supplier: 'Artist'
        },
        {
          image: 'img',
          name: 'Cabbage',
          category: 'Vegetable',
          subcategory: 'Brassicaceous',
          quantity: '50',
          origin:'South Africa',
          supplier: 'Fruit And Veg'
        },
        {
          image: 'img',
          name: 'Lemons',
          category: 'Fruit',
          subcategory: 'Citrus',
          quantity: '54',
          origin:'South Africa',
          supplier: 'Msde by Lemon'
        },
        {
          image: 'img',
          name: 'Watermelon',
          category: 'Fruit',
          subcategory: 'Melon',
          quantity: '26',
          origin:'Rwanda',
          supplier: 'Inyoro Co'
        },
        {
          image: 'img',
          name: 'Pineapples',
          category: 'Fruit',
          subcategory: 'Tropical',
          quantity: '6',
          origin:'Namibia',
          supplier: 'All Sweet'
        },
        {
          image: 'img',
          name: 'Tomato',
          category: 'Vegetable',
          subcategory: 'Solanaceous',
          quantity: '150',
          origin:'South Africa',
          supplier: 'Fruit And Veg'
        },
        {
          image: 'img',
          name: 'Cucumber',
          category: 'Vegetable',
          subcategory: 'Cucurbitaceous',
          quantity: '85',
          origin:'South Africa',
          supplier: 'Fruit And Veg'
        },
        {
          image: 'img',
          name: 'Egg Plant',
          category: 'Vegetabe',
          subcategory: 'Solanaceous',
          quantity: '56',
          origin:'South Africa',
          supplier: 'Fruit And Veg'
        },

      ]
    };
  }
};
</script>
<style scoped>
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
</style>
