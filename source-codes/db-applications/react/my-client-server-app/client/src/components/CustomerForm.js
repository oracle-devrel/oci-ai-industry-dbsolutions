import React, { useState } from 'react';

const CustomerForm = ({ onSubmit }) => {
  const [customerName, setCustomerName] = useState('');
  const [gender, setGender] = useState('');
  const [maritalStatus, setMaritalStatus] = useState('');
  const [streetAddress, setStreetAddress] = useState('');
  const [city, setCity] = useState('');
  const [state, setState] = useState('');
  const [phoneNumber, setPhoneNumber] = useState('');
  const [email, setEmail] = useState('');

  const handleSubmit = (event) => {
    event.preventDefault();
    onSubmit({
      customerName,
      gender,
      maritalStatus,
      streetAddress,
      city,
      state,
      phoneNumber,
      email,
    });
    setCustomerName('');
    setGender('');
    setMaritalStatus('');
    setStreetAddress('');
    setCity('');
    setState('');
    setPhoneNumber('');
    setEmail('');
  };

  return (
    <form onSubmit={handleSubmit}>
      <div className="form-grid">
      <label>
        Customer Name:
        <input type="text" value={customerName} onChange={(event) => setCustomerName(event.target.value)} />
      </label>
      <label>
        Gender:
        <input type="text" value={gender} onChange={(event) => setGender(event.target.value)} />
      </label>
      <label>
        Marital Status:
        <input type="text" value={maritalStatus} onChange={(event) => setMaritalStatus(event.target.value)} />
      </label>
      <label>
        Street Address:
        <input type="text" value={streetAddress} onChange={(event) => setStreetAddress(event.target.value)} />
      </label>
      <label>
        City:
        <input type="text" value={city} onChange={(event) => setCity(event.target.value)} />
      </label>
      <label>
        State:
        <input type="text" value={state} onChange={(event) => setState(event.target.value)} />
      </label>
      <label>
        Phone Number:
        <input type="text" value={phoneNumber} onChange={(event) => setPhoneNumber(event.target.value)} />
      </label>
      <label>
        Email:
        <input type="email" value={email} onChange={(event) => setEmail(event.target.value)} />
      </label>
      </div>
      <button type="submit" className="submit-btn" >Insert Record</button> 
    </form>
  );
};

export default CustomerForm;