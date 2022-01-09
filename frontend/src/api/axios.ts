import axios, { AxiosInstance, AxiosRequestConfig } from 'axios';
// ...
const config: AxiosRequestConfig = {
    baseURL: 'http://localhost:3000/api/v1',

};
const client: AxiosInstance = axios.create(config);

axios.defaults.headers.common['Content-Type'] = 'application/json';

export default client