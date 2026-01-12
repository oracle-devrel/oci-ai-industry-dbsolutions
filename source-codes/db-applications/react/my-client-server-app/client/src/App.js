import React, { useState, useEffect } from 'react';
import CustomerForm from './components/CustomerForm';
import CustomerList from './components/CustomerList';
import { getCustomers, createCustomer } from './services/api';
import './App.css';

function App() {
  const [customers, setCustomers] = useState([]);

  useEffect(() => {
    getCustomers().then((data) => setCustomers(data));
  }, []);

  const handleCreateCustomer = async (customer) => {
    const newCustomer = await createCustomer({
      customer_name: customer.customerName,
      gender: customer.gender,
      marital_status: customer.maritalStatus,
      street_address: customer.streetAddress,
      city: customer.city,
      state: customer.state,
      phone_number: customer.phoneNumber,
      email: customer.email,
    });
    setCustomers([...customers, {
      id: newCustomer.id,
      customerName: customer.customerName,
      gender: customer.gender,
      maritalStatus: customer.maritalStatus,
      streetAddress: customer.streetAddress,
      city: customer.city,
      state: customer.state,
      phoneNumber: customer.phoneNumber,
      email: customer.email,
    }]);
  };

  return (
    <div>
      <h2>Bank Customers</h2>
      <CustomerList customers={customers} />
      <CustomerForm onSubmit={handleCreateCustomer} />
    </div>
  );
}

export default App;