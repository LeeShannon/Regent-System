/* eslint-disable */
import axios from 'axios'
export const HTTP = axios.create({
  baseURL: 'http://localhost:/mysqlToPhpRegentProduce/api.php',
  // headers: {'Access-Contol-Allow-Origin': '*'}
})
