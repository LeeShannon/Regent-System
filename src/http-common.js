/* eslint-disable */
import axios from 'axios'
export const HTTP = axios.create({
  baseURL: 'http://localhost:8888/mysqlToPhpRegentProduceTest/api.php',
  //headers: {'Access-Contol-Allow-Origin': '*'}
})
