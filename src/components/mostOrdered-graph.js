import {
  Pie
} from 'vue-chartjs'

export default {
  extends: Pie,

  mounted () {
    this.gradient = this.$refs.canvas.getContext('2d').createLinearGradient(0, 0, 0, 450)

    //dark blue
    this.gradient.addColorStop(0, '#b0f0f2')
    this.gradient.addColorStop(1, '#81b4db');

    this.renderChart({
      labels: ['Citrus', 'Melon', 'Root', 'Bulbs', 'Pomes', 'Berries'],
      datasets: [
        {
          label: 'Most Ordered',
          backgroundColor: ['#b0f0f2', '#81b4db', '#7ab8ba', '#398c8e', '#54acc4', '#15acd6'],
          data: [40, 20, 50, 24, 67, 45]
        }
      ]
    }, {
      responsive: true,
      maintainAspectRatio: false
    })
  }
}
