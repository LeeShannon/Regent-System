import {
  Line
} from 'vue-chartjs'

export default {
  extends: Line,
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

    this.renderChart({
      labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
      datasets: [{
        label: 'Sales',
        borderColor: '#77DFED',
        borderWidth: 1,
        backgroundColor: this.gradient2,
        // data = this.data1
        data: [40, 39, 10, 40, 39, 80, 40]
      }, {
        label: 'Revenue',
        borderColor: '#379AE3',
        borderWidth: 1,
        backgroundColor: this.gradient,
        data: [60, 55, 32, 10, 2, 12, 53]

      }]
    }, {
      responsive: true,
      maintainAspectRatio: false
    })

  }
}
