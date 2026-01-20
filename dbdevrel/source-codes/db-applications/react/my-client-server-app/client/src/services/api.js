import axios from 'axios';

const api = axios.create({
  baseURL: 'http://localhost:3001/api', // replace with your API endpoint
});

export const getCustomers = async () => {
  const response = await api.get('/customers');
  return response.data;
};

export const createCustomer = async (customer) => {
  const response = await api.post('/customers', customer);
  return response.data;
};