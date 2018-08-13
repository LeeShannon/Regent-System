<template>
<div class="home">
  <div class="row">

    <div class="col-lg-4">
      <div class="div-style">
        <h3 class="home-headers">Shipping Status</h3>
<!-- status table -->
        <table class="table table-responsive-lg table-borderless table-status">
          <thead class="table-header">
            <tr>
              <th scope="col">Customer</th>
              <th scope="col">Order Status</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Mark</td>
              <td>Inbound</td>
            </tr>
            <tr>
              <td>Jacob</td>
              <td>Delayed</td>
            </tr>
            <tr>
              <td>Someone</td>
              <td>Delayed</td>
            </tr>
          </tbody>
        </table>
<!-- server status updated-->
        <p class="d-flex justify-content-end status"> <i class="fas fa-sync-alt" style="margin:3px;"></i>updated 1hr ago</p>
      </div>
    </div>
<!-- exchange rates     -->
    <div class="col-lg-4">
      <div class="div-style">
        <h3 class="home-headers">Exchange Rates</h3>

        <!-- Exchange Rates Script - EXCHANGERATEWIDGET.COM -->
        <div id="exchange-rates" style="width:198px;border:1px solid #FFFFFF;text-align:left;">
          <!-- <div style="text-align:left;background-color:#FFFFFF;width:100%;border-bottom:0px;height:16px; font-size:12px;font-weight:bold;padding:5px 0px;">
            <span style="margin-left:2px;background-image:url(//www.exchangeratewidget.com/flag.png); background-position: 0 -1344px; width:100%; height:15px; background-repeat:no-repeat;padding-left:5px;">
              <a href="https://www.exchangeratewidget.com/" style="color:#6E6E6E; text-decoration:none;padding-left:22px;" rel="nofollow">South African Rand Exchange Rates</a>
            </span>
          </div> -->
        </div>
        <!-- End of Exchange Rates Script -->
      </div>
    </div>


<!-- tasks -->
      <div class="col-lg-4">
        <div class="div-style">
          <div class="div-header">
            <h3 class="task-header">Tasks</h3>
          </div>
          <div class="tasks">
            <div class="col-sm-7" style="margin-left: 25%">
              <input type="text" name="task" value="Add a task" class="form-control" style="color: #989898">
            </div>

            <ul>
              <li>Task 1</li>
              <li>Task 2</li>
              <li>Task 3</li>
            </ul>
          </div>
        </div>
      </div>
  </div>

<!-- second row -->
  <div class="row">
<!-- revenue graph -->
    <div class="col-lg-8">
      <div class="graph">
        <h3 class="home-headers">revenue</h3>
        <Revenue></Revenue>
      </div>
    </div>

    <div class="col-lg-4">
      <div class="graph calendar">
        <h3 class="home-headers">calendar</h3>
      </div>

    </div>
  </div>

</div>
</template>

<script lang="ts">
export default {

}
</script>

<style media="screen">
.div-style {
  height: 300px;
  width: 100%;
  background-color: white;
  /* box-shadow: 0px 1px 6px #E5E5E5; */
  border-radius: 7px;
  padding-right: 15px;
  padding-left: 15px;
}

.graph {
  height: 400px;
  width: 100%;
  background-color: white;
  /* box-shadow: 0px 1px 6px #E5E5E5; */
  border-radius: 7px;
  padding-right: 15px;
  padding-left: 15px;
  margin-top: 20px;
  margin-bottom: 20px;
}
.home-headers {
  text-align: center;
  margin-bottom: .8rem;
  padding-top: .8rem;
  text-transform: uppercase;
  letter-spacing: .02em;
  font-size: 1.1rem;
  margin-top: 0;
}

.table-header{
  background: linear-gradient(to right, #96DFE2, #18B2F7);
  color: white;
}

.table-borderless td,
.table-borderless th {
    border: 0 !important;
    text-align: center;
}

.table-status {
  overflow-y: scroll;
}

.status {
  font-size: 12px;
  color: #989898;
  margin-right: 10px;
  margin-top: 10px;
}

.stats {
  height: 100px;
  background-color: white;
}

.div-header {
  padding-top: 7px;
}

.task-header{
  background: linear-gradient(to right, #96DFE2, #18B2F7);
  text-align: center;
  margin-bottom: .8rem;
  padding-top: 10px;
  padding-bottom: 10px;
  text-transform: uppercase;
  letter-spacing: .02em;
  font-size: 1.1rem;
  color: white;
  border-radius: 10px;
}

.tasks ul li {
  list-style: none;
  padding-top: .5rem;
  padding-bottom:  .5rem;
  overflow-y: scroll;
}
</style>
