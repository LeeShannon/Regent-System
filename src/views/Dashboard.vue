<template>
<div class="home animated fadeIn">
  <div class="row">

    <div class="col-lg-4">
      <div class="div-style">
        <h3 class="home-headers">Shipping Status</h3>
<!-- status table -->
        <table class="table table-responsive-lg table-borderless table-status" style="margin-bottom: 0;">
          <thead class="table-header">
            <tr>
              <th scope="col">Customer</th>
              <th scope="col">Status</th>
            </tr>
          </thead>
          <tbody v-for="client in shippingstatuts" :key="client.name">
            <tr>
              <td>{{client.name}}</td>
              <td>{{client.status}}</td>
            </tr>
          </tbody>
        </table>
<!-- server status updated-->
        <p class="d-flex justify-content-end status"> <i class="fas fa-sync-alt" style="margin:3px;"></i>updated {{clientsUpdated}} {{time}} ago</p>
      </div>
    </div>
<!-- currency converter -->
    <div class="col-lg-4">
      <div class="div-style" align="center">
        <h3 class="home-headers">Currency Conversion</h3>

        <select class="form-control" @change="updateInputs" v-model="selected" >
          <option v-for="country in countries"  :key="country.id">{{country.name}}</option>
        </select>

        <div class="currency-wrapper">
          <div class="zar">
            <h2  class="home-headers">South Africa</h2>
            <p>Rate: 1 ZAR</p>
            <input id="currencyInputZAR" class="currency-input form-control input-field" @keyup="calcInput_1" :value="calc2">
            <span>Rand</span>
          </div>

          <div class="foreign">
            <template v-for="(country, index) in countries">
              <template v-if="selected === country.name" :value="countryRate">
                <h2  class="home-headers" :key="index">{{country.name}}</h2>
                <p class="" :key="index">Rate: {{country.rate}} ZAR</p>
                <input id="currencyInputForeign" class="currency-input form-control input-field" @keyup="calcInput_2" :value="calc1" :key="index"> -->
                <span :key="index">{{country.money}}</span>
              </template>
            </template>
          </div>
        </div>

      </div>
    </div>

<!-- tasks -->
      <div class="col-lg-4">
        <div class="div-style">
          <div class="div-header">
            <h3 class="task-header">Tasks</h3>
          </div>
          <div class="tasks">
            <todo-list></todo-list>
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
         <line-example style="height: 350px;"></line-example>
      </div>
    </div>

    <div class="col-lg-4">

      <div class="stats-wrapper">

        <div class="revenue-stat" >
            <div class="" align="center" style="text-align: center">
              <h3 class="home-headers">revenue</h3>
              <h1>R {{profitMade}}</h1>
              <br>
              <p class="stats-color">Since {{revenueUpdated}} {{days}}</p>
            </div>
        </div>

        <div class="orders-stat" style="margin-bottom: 1.8rem;">
          <div class="" align="center" style="text-align: center">
            <h3 class="home-headers">Orders</h3>
            <h1>{{orders}}</h1>
            <br>
            <p class="stats-color">Since last month</p>
          </div>
        </div>

      </div>

    </div>

  </div>
</div>

</template>

<script lang="ts">
import LineExample from '../components/revenue-graph.js'
import TodoList from '../components/todo-list.vue'
import {HTTP} from '../http-common'
import State from "../store/state"
export default {
  name: 'app',
  data: () => ({
    revenue: 60235,
    orders: '',
    errorData: '',
    //thinking if the clients update with each new entry we can keep track of the time since the last entry
    // if the mins >= 60 then time is updated to "hours" and clientsUpdated is reset to 1
    clientsUpdated: 1,
    revenueUpdated: 1,
    time: "hours",
    days: "month",
    clients: [
      {
        name: "Mark",
        status: "Inbound"
      },
      {
        name: "Jacob",
        status: "Delayed"
      },
      {
        name: "Steve",
        status: "Outgoing"
      }
    ],
    selected: "Brazil",
		countryRate: 2.5,
		calc1: "",
		calc2: "",
		firstInputSelected: true,
		countries: [
			{
				name: "Brazil",
				money: "Reais",
				rate: 2.5,
			},
			{
				name: "UK",
				money: "Pounds",
				rate: 0.59,
			},
			{
				name: "Germany",
				money: "Euro",
				rate: 0.67,
			},
			{
				name: "USA",
				money: "USD",
				rate: 0.79,
			},
			{
				name: "Canada",
				money: "CAD",
				rate: 0.94,
			},
			{
				name: "New Zealand",
				money: "NZD",
				rate: 1.09,
			},
			{
				name: "Japanese",
				money: "YEN",
				rate: 88.51,
			}
		],
    totalOrders: [],
    lastOrderIds: [],
    allOfferedOrder: [],
    allRequestedOrder: [],
    shippingstatuts: [],
    profitMade: 0
  }),
  methods: {
    async populate() {
      await HTTP.get("/orders").then((res)=> {
        this.totalOrders = res.data.orders.records;
        this.orders = res.data.orders.records.length;
      })
      let count = this.totalOrders.length-4;
      while(count < this.totalOrders.length-1){
        this.lastOrderIds.push(
          this.totalOrders[count]
        )
        count++;
      }
      await HTTP.get("/offeredorder").then((res) => {
        this.allOfferedOrder = res.data.offeredorder.records;
      })
      await HTTP.get("/requestedorder").then((res) => {
        this.allRequestedOrder = res.data.requestedorder.records;
      })
      count = 0;
      while(count<this.lastOrderIds.length){
        let iterate =0;
        while(iterate<this.allOfferedOrder.length){
          if(this.lastOrderIds[count][0] == this.allOfferedOrder[iterate][1]){
            let obj = {
              name: this.allOfferedOrder[iterate][2],
              status: 'Incoming'
            }
            this.shippingstatuts.push(obj)
          }
          iterate++;
        }
        count++;
      }
      count = 0;
      while(count<this.lastOrderIds.length){
        let iterate = 0;
        while(iterate<this.allRequestedOrder.length){
          if(this.lastOrderIds[count][0] == this.allRequestedOrder[iterate][1]){
            console.log(this.allRequestedOrder[iterate]);
            let obj = {
              name: this.allRequestedOrder[iterate][2],
              status: 'Outgoing'
            }
            this.shippingstatuts.push(obj)
          }
          iterate++;
        }
        count++;
      }
      console.log(this.totalOrders);
      count = 0;
      let amountSales = 0;
      while(count<this.totalOrders.length){
        let iterate = 0;
        while(iterate<this.allRequestedOrder.length){
          if(this.totalOrders[count][0] == this.allRequestedOrder[iterate][1]){
            amountSales += this.allRequestedOrder[iterate][5]
          }
          iterate++;
        }
        count++;
      }
      count = 0;
      let amountExpenses =0;
      while(count<this.totalOrders.length){
        let iterate = 0;
        while(iterate<this.allOfferedOrder.length){
          if(this.totalOrders[count][0] == this.allOfferedOrder[iterate][1]){
            amountExpenses += this.allOfferedOrder[iterate][5]
          }
          iterate++;
        }
        count++;
      }
      this.profitMade = Number((amountSales - amountExpenses).toFixed(2));
      console.log(Number(this.profitMade.toFixed(2)));
},
    calcInput_1(e: any){
      this.firstInputSelected = true;
      this.calculate(e);
    },
    calcInput_2(e: any){
      this.firstInputSelected = false;
      this.calculate(e);
    },
    updateInputs(){
      let selected = 0;
      for(let i = 0; i < this.countries.length; i++){
        if(this.selected == this.countries[i].name){
          selected = this.countries[i].rate;
        }
      }
      this.countryRate = selected;
      var input2 = parseFloat(this.calc2);
      // var input2 = parseFloat(document.getElementById("currencyInput").value);
      if(isNaN(input2)){
        this.calc2 = "";
        this.calc1 = "";
        return;
      }
      this.calc1 = (input2 * this.countryRate).toFixed(2);
    },
    calculate(e: any){
      var value = parseFloat(e.target.value);
      if(isNaN(value)){
        this.calc2 = "";
        this.calc1 = "";
        return;
      }
      if(this.firstInputSelected){
        this.calc2 = value+"";
        this.calc1 = (value * this.countryRate).toFixed(2);
      } else {
        this.calc1 = value+"";
        this.calc2 = (value / this.countryRate).toFixed(2);
      }
    }
  },
  components: {
    LineExample,
    TodoList
  },
  beforeMount () {
    console.log(State.data.loggedIn)
    if (State.data.loggedIn) {
      this.populate();
    } else {
      this.errorData = 'You need to be logged in to make a view data';
      console.log('You need to be logged in to make a view data')
    }
  }
}
</script>

<style media="screen">

.currency-wrapper{
  display: grid;
  grid-template-columns: 1fr 1fr;
  margin-top: 2%;
}
.currency-input{
  width: 150px !important;
}
.to-dos{
  height: 180px;
  overflow-y: scroll;
}

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
  /* border-radius: 10px; */
}

.tasks ul li {
  list-style: none;
  padding-top: .5rem;
  padding-bottom:  .5rem;
  overflow-y: scroll;
}

.input-field{
  border:none;
  border-bottom:1px solid #989898;
  border-radius: 0;
  color: #989898;
  margin-bottom: 5%;
}
/* calendar */
.calendar{
  overflow-y: scroll;
}
.vue-calendar {
  display: grid;
  grid-template-rows: 10% 90%;
  background: #fff;
  margin: 0 auto;
}
.calendar-header {
  align-items: center;
}
.header-left,
.header-right {
  flex: 1;
}
.header-center {
  flex: 3;
  text-align: center;
}
.title {
  margin: 0 5px;
}
.next-month,
.prev-month {
  cursor: pointer;
}
.calendar-body {
  display: grid;
  grid-template-rows: 5% 95%;
}
.days-header {
  display: grid;
  grid-auto-columns: 14.25%;
  grid-template-areas: "a a a a a a a";
  border-top: 1px solid #e0e0e0;
  border-left: 1px solid #e0e0e0;
  border-bottom: 1px solid #e0e0e0;
}
.days-body {
  display: grid;
  grid-template-rows: auto;
}
.day-number {
  text-align: right;
  margin-right: 10px;
}
.day-label {
  text-align: center;
  border-right: 1px solid #e0e0e0;
}
.week-row {
  display: grid;
  grid-template-areas: "a a a a a a a";
  grid-row-gap: 5px;
  grid-auto-columns: 14.25%;
  border-left: 1px solid #e0e0e0;
}
.week-day {
  padding: 4px;
  border-right: 1px solid #e0e0e0;
  border-bottom: 1px solid #e0e0e0;
}
.week-day.disabled {
  background-color: #f5f5f5;
}
.week-day.not-current > .day-number {
  color: #c3c3c3;
}
.week-day.today > .day-number {
  font-weight: 700;
  color: red;
}
.events {
  font-size: 12px;
  cursor: pointer;
  padding: 0 0 0 4px;
}
.events .event {
  height: 18px;
  line-height: 18px;
  overflow: hidden;
  white-space: nowrap;
  text-overflow: ellipsis;
  margin: 0 4px 2px 0;
  color: rgba(0, 0, 0, 0.87);
  background-color: #d4dcec;
}
.events .more-link {
  color: rgba(0, 0, 0, 0.38);
}

/* stats */
.stats-wrapper{
  margin-top: 20px;
  width: 100%;
}

.revenue-stat {
  height: 190px;
  background-color: white;
  width: 100%;
  border-radius: 7px;
  margin-bottom: 10px;
}

.orders-stat {
  height: 190px;
  background-color: white;
  width: 100%;
  border-radius: 7px;
}
</style>
