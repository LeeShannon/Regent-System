import {
  Bar
} from 'vue-chartjs'

import {
  HTTP
} from '../http-common'

export default {
  extends: Bar,
  data() {
    return {
      totalInorders: [],
      totalOutorders: []
    }

  },

  mounted() {
    this.gradient = this.$refs.canvas.getContext('2d').createLinearGradient(0, 0, 0, 450)

    //dark blue
    this.gradient.addColorStop(0, '#b0f0f2')
    this.gradient.addColorStop(1, '#81b4db');


    this.fillData()
  },
  methods: {
    async fillData() {
      await HTTP.get("/totalincomingorders").then((res) => {

        this.totalInorders = res.data.totalincomingorders.records;
      })

      await HTTP.get("/totaloutgoingorders").then((res) => {

        this.totalOutorders = res.data.totaloutgoingorders.records;
      })

      let count = 0;
      let count2 = 0;

      let countJanuary = 0;
      let countFebruary = 0;
      let countMarch = 0;
      let countApril = 0;
      let countMay = 0;
      let countJune = 0;
      let countJuly = 0;
      let countAugust = 0;
      let countSeptember = 0;
      let countOctober = 0;
      let countNovember = 0;
      let countDecember = 0;


      while (count < this.totalInorders.length) {
        if (this.totalInorders[count][0] == "January") {
          countJanuary += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "February") {
          countFebruary += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "March") {
          countMarch += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "April") {
          countApril += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "May") {
          countMay += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "June") {
          countJune += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "July") {
          countJuly += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "August") {
          countAugust += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "September") {
          countSeptember += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "October") {
          countOctober += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "November") {
          countNovember += this.totalInorders[count][1];
        }
        if (this.totalInorders[count][0] == "December") {
          countDecember += this.totalInorders[count][1];
        }
        count++;

      }

      while (count2 < this.totalOutorders.length) {
        if (this.totalOutorders[count2][0] == "January") {
          countJanuary += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "February") {
          countFebruary += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "March") {
          countMarch += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "April") {
          countApril += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "May") {
          countMay += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "June") {
          countJune += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "July") {
          countJuly += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "August") {
          countAugust += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "September") {
          countSeptember += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "October") {
          countOctober += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "November") {
          countNovember += this.totalOutorders[count2][1];
        }
        if (this.totalOutorders[count2][0] == "December") {
          countDecember += this.totalOutorders[count2][1];
        }
        count2++;

      }

      this.renderChart({
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
        datasets: [{
          label: 'Orders',
          backgroundColor: this.gradient,
          data: [countJanuary, countFebruary, countMarch, countApril, countMay, countJune, countJuly, countAugust, countSeptember, countOctober, countNovember, countDecember]
        }]
      }, {
        responsive: true,
        maintainAspectRatio: false
      })

    }
  }

}
