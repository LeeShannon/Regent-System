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
              <input type="text" name="task" value="Add a task" class="form-control input-field">
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
         <line-example style="height: 350px;"></line-example>
      </div>
    </div>

    <div class="col-lg-4">
      <div class="graph calendar">
        <h3 class="home-headers">calendar</h3>
        <vue-calendar
          :show-limit="3"
          :events="events"
          :disable="disabledDays"
          :highlight="highlightDays"

          @show-all="showAll"
          @day-clicked="dayClicked"
          @event-clicked="eventClicked"
          @month-changed="monthChanged">
        </vue-calendar>


      </div>
    </div>
  </div>

</div>
</template>

<script lang="ts">
import LineExample from '../components/revenue-graph.js'

export default {
  name: 'app',
  components: {
    LineExample,
  },
  methods: {
    showAll(events) {
      // Do something...
    },
    dayClicked(day) {
      // Do something...
    },
    eventClicked(event) {
      // Do something...
    },
    monthChanged(start, end) {
      // Do something...
    }
  },
  created() {
    this.$calendar.eventBus.$on('show-all', events => showAll(events));
    this.$calendar.eventBus.$on('day-clicked', day =>  dayClicked(day));
    this.$calendar.eventBus.$on('event-clicked', event => eventClicked(event));
    this.$calendar.eventBus.$on('month-changed', (start, end) => monthChanged(start, end));
  }
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
</style>
