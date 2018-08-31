import {
  Bar
} from 'vue-chartjs'

export default {
  extends: Bar,

  mounted () {
    this.gradient = this.$refs.canvas.getContext('2d').createLinearGradient(0, 0, 0, 450)

    //dark blue
    this.gradient.addColorStop(0, '#b0f0f2')
    this.gradient.addColorStop(1, '#81b4db');

    this.renderChart({
      labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
      datasets: [
        {
          label: 'Orders',
          backgroundColor: this.gradient,
          data: [40, 20, 50, 24, 67, 45, 77, 22, 55, 90, 80, 33]
        }
      ]
    }, {
      responsive: true,
      maintainAspectRatio: false
    })
  }
}
