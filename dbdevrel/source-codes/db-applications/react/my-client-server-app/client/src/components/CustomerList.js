import React from 'react';

const CustomerList = ({ customers }) => {
  return (
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Customer Name</th>
          <th>Gender</th>
          <th>Marital Status</th>
          <th>Street Address</th>
          <th>City</th>
          <th>State</th>
          <th>Phone Number</th>
          <th>Email</th>
        </tr>
      </thead>
      <tbody>
        {customers.map((customer) => (
          <tr key={customer.id}>
            <td>{customer.id}</td>
            <td>{customer.customerName}</td>
            <td>{customer.gender}</td>
            <td>{customer.maritalStatus}</td>
            <td>{customer.streetAddress}</td>
            <td>{customer.city}</td>
            <td>{customer.state}</td>
            <td>{customer.phoneNumber}</td>
            <td>{customer.email}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default CustomerList;