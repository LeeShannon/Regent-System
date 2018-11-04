import {
  Line
} from 'vue-chartjs'

import {
  HTTP
} from '../http-common'

export default {
  extends: Line,
  data() {
    return {
      expenses: [],
      sales: []
    }

  },
  mounted() {
    this.gradient = this.$refs.canvas.getContext('2d').createLinearGradient(0, 0, 0, 450)
    this.gradient2 = this.$refs.canvas.getContext('2d').createLinearGradient(0, 0, 0, 450)

    //dark blue
    this.gradient.addColorStop(0, 'rgba(55, 154, 227, 0.5)')
    this.gradient.addColorStop(0.5, 'rgba(55, 154, 227, 0.25)');
    this.gradient.addColorStop(1, 'rgba(55, 154, 227, 0)');

    //teal
    this.gradient2.addColorStop(0, 'rgba(119, 223, 237, 0.9)')
    this.gradient2.addColorStop(0.5, 'rgba(119, 223, 237, 0.25)');
    this.gradient2.addColorStop(1, 'rgba(119, 223, 237, 0)');


    this.fillData();
  },

  methods: {
    async fillData() {

      await HTTP.get("/expensessummary").then((res) => {
        console.log(res.data.expensessummary.records);
        this.sales = res.data.expensessummary.records;
      })

      await HTTP.get("/salessummary").then((res) => {
        console.log(res);
        this.expenses = res.data.salessummary.records;
      })

      let count = 0;
      let count2 = 0;

      let expensesJanuary = 0;
      let expensesFebruary = 0;
      let expensesMarch = 0;
      let expensesApril = 0;
      let expensesMay = 0;
      let expensesJune = 0;
      let expensesJuly = 0;
      let expensesAugust = 0;
      let expensesSeptember = 0;
      let expensesOctober = 0;
      let expensesNovember = 0;
      let expensesDecember = 0;

      while (count < this.expenses.length) {
        if (this.expenses[count][0] == "January") {
          expensesJanuary += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "February") {
          expensesFebruary += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "March") {
          expensesMarch += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "April") {
          expensesApril += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "May") {
          expensesMay += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "June") {
          expensesJune += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "July") {
          expensesJuly += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "August") {
          expensesAugust += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "September") {
          expensesSeptember += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "October") {
          expensesOctober += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "November") {
          expensesNovember += this.expenses[count][1];
        }
        if (this.expenses[count][0] == "December") {
          expensesDecember += this.expenses[count][1];
        }
        count++;

      }

      let salesJanuary = 0;
      let salesFebruary = 0;
      let salesMarch = 0;
      let salesApril = 0;
      let salesMay = 0;
      let salesJune = 0;
      let salesJuly = 0;
      let salesAugust = 0;
      let salesSeptember = 0;
      let salesOctober = 0;
      let salesNovember = 0;
      let salesDecember = 0;

      while (count2 < this.sales.length) {
        if (this.sales[count2][0] == "January") {
          salesJanuary += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "February") {
          salesFebruary += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "March") {
          salesMarch += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "April") {
          salesApril += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "May") {
          salesMay += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "June") {
          salesJune += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "July") {
          salesJuly += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "August") {
          salesAugust += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "September") {
          salesSeptember += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "October") {
          salesOctober += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "November") {
          salesNovember += this.sales[count2][1];
        }
        if (this.sales[count2][0] == "December") {
          salesDecember += this.sales[count2][1];
        }
        count2++;

      }

      this.renderChart({
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
        datasets: [{
          label: 'Sales',
          borderColor: '#77DFED',
          borderWidth: 1,
          backgroundColor: this.gradient2,
          // data = this.data1
          data: [expensesJanuary, expensesFebruary, expensesMarch, expensesApril, expensesMay, expensesJune, expensesJuly, expensesAugust, expensesSeptember, expensesOctober, expensesNovember, expensesDecember]
        }, {
          label: 'Expenses',
          borderColor: '#379AE3',
          borderWidth: 1,
          backgroundColor: this.gradient,
          data: [salesJanuary, salesFebruary, salesMarch, salesApril, salesMay, salesJune, salesJuly, salesAugust, salesSeptember, salesOctober, salesNovember, salesDecember]

        }]
      }, {
        responsive: true,
        maintainAspectRatio: false
      })
    }
  }
}
