<template lang="html">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-4">
        <div class="revenue-stat" style="margin-bottom: 1.8rem;">
          <div class="" align="center" style="text-align: center">
            <h3 class="home-headers">revenue</h3>
            <h1>R 60,235</h1>
            <br>
            <p class="stats-color">Since last month</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="revenue-stat" style="margin-bottom: 1.8rem;">
          <div class="" align="center" style="text-align: center">
            <h3 class="home-headers">Orders</h3>
            <h1>500</h1>
            <br>
            <p class="stats-color">Since last month</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4">
        <div class="revenue-stat" style="margin-bottom: 1.8rem;">
          <div class="" align="center" style="text-align: center">
            <h3 class="home-headers">Pending Shipment</h3>
            <h1>120</h1>
            <br>
            <p class="stats-color">Since last month</p>
          </div>
        </div>
      </div>
    </div>
    <!-- graphs -->

    <div class="col-lg-12 graphs-div">
      <h3 class="home-headers">revenue</h3>
      <line-example></line-example>
    </div>
    <br>
    <div class="row">
      <div class="col-lg-6 graphs-div">
        <h3 class="home-headers">Orders</h3>
        <orders-graph></orders-graph>
      </div>
      <div class="col-lg-6 graphs-div">
        <h3 class="home-headers">Most ordered product</h3>
        <most-ordered-graph></most-ordered-graph>
      </div>
    </div>

  </div>
</template>

<script>
import LineExample from '../components/revenue-graph.js'
import OrdersGraph from '../components/orders-graph.js'
import MostOrderedGraph from '../components/mostOrdered-graph.js'

export default {
  name: 'app',
  components: {
    LineExample,
    OrdersGraph,
    MostOrderedGraph
  }
}
</script>

<style lang="css">
.graphs-div{
  background-color: white;
  width: 100%;
  padding: 5px;
}

.stats-color{
  color: #989898;
}
</style>
