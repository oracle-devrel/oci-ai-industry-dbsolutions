# Develop React Applications with Oracle Autonomous AI Database

## Introduction

In this Lab, we'll learn about building React.js applications with Oracle Autonomous AI Database.
   
[React](https://react.dev/) is the library for web and native user interfaces, It lets you build user interfaces out of individual pieces called components. Create your own React components like Thumbnail, LikeButton, and Video. Then combine them into entire screens, pages, and apps.

### Prerequisites

This lab assumes:

* An Autonomous Database has been created.
* A wallet has been downloaded. 
* Network  Mutual TLS **(mTLS)** authentication **Not required** and Access control list **Enabled** (Please see Lab 1 and Task 6)
* Download [source code from here](https://github.com/madhusudhanrao-ppm/code-assets/tree/main/my-client-server-app)
  
## Task 1: Install Node and NPM 

1. To install npx on Oracle Linux 8, you'll need to install Node.js and npm (Node Package Manager) first. Here's a step-by-step guide:

    Install Node.js and npm:

    ```
    <copy>
    -- Check if NodeJs is already installed? 
    [root@indmcpprimary ~]# npx create-react-app my-react-db-app
    ..
    -bash: npx: command not found

    -- Lets start installation
    [root@indmcpprimary ~]# sudo dnf module enable nodejs:14
    </copy>
    ```   

    You can replace 14 with the version of Node.js you want to install (e.g., 16, 18, etc.).

    Refer [NodeJs](https://nodejs.org/en/download) for more details

2. Install Node.js and npm:

    ```
    <copy>
    [root@indmcpprimary ~]# sudo dnf install nodejs
    [opc@indmcpprimary ~]$ node -v
    v14.21.3
    [opc@indmcpprimary ~]$ npm -v
    6.14.18 
    [opc@indmcpprimary ~]$ sudo npm install -g npm@latest
    </copy>
    ``` 

    These commands should display the versions of Node.js and npm installed on your system.

    Verify npx installation:

    npx is included with npm, so you don't need to install it separately. You can verify the installation by running: 

    ```
    <copy>
    npx --version
    -- 11.6.0
    </copy>
    ``` 

## Task 2: Create a React app using npx

1. Now that you have npx installed, you can create a new React app using:

    ```
    <copy>
    npx create-react-app my-react-db-app  
    </copy>
    ```   

    In the terminal. view installation logs

    ```
    <copy>
    Need to install the following packages:
    create-react-app@5.1.0
    Ok to proceed? (y) y
 
    Creating a new React app in /source-codes/react/my-react-db-app.

    Installing packages. This might take a couple of minutes.
    Installing react, react-dom, and react-scripts with cra-template...

    .. ..
    Inside that directory, you can run several commands:

    npm start
        Starts the development server.

    npm run build
        Bundles the app into static files for production.

    npm test
        Starts the test runner.

    npm run eject
        Removes this tool and copies build dependencies, configuration files
        and scripts into the app directory. If you do this, you can’t go back!

    We suggest that you begin by typing:

    cd my-react-db-app
    npm start
    </copy>
    ```  

    This will create a basic React app, which can be viewed at http://<public-ip>:3000 or or http://localhost:3000/

    Please ensure that port 3000 is open

    ![Hello](images/hello.png =30%x* "Hello")
  
    Press Ctrl + C to exit the server

## Task 3: Create React.js Backend Server Application and run it port 3001

1. Let us now create a new folder and new ReactJS application 

    ```
    <copy>
    $ mkdir my-client-server-app
    $ cd my-client-server-app/
    $ mkdir client
    $ mkdir server
    $ cd server/ 
    $ vi package.json
    $ ls
    package.json
    </copy>
    ``` 

    Where package.json will be as shown below.  

    ```
    <copy>
    {
        "name": "server",
        "version": "1.0.0",
        "description": "Backend API",
        "main": "server.js",
        "scripts": {
            "start": "node server.js"
        },
        "keywords": [
            "oracledb",
            "node-oracledb"
        ],
        "author": "Oracle DB Server",
        "license": "MIT",
        "devDependencies": {
            "cors": "^2.8.5",
            "express": "^4.21.2",
            "oracledb": "^6.9.0"
        },
        "dependencies": {}
    } 
    </copy>
    ``` 

2. Initialize the application to create project structure and node_modules

    ```
    <copy>

    $ npm install

    > oracledb@6.9.0 install /server/node_modules/oracledb
    > node package/install.js

    oracledb ********************************************************************************
    oracledb ** Node-oracledb 6.9.0 installed in Node.js 14.21.3 (linux, x64)
    oracledb ** To use node-oracledb in Thin mode, no additional steps are needed.
    oracledb ** To use the optional Thick mode, the Oracle Client libraries (64-bit)
    oracledb ** must be available, see the installation instructions:
    oracledb **   https://node-oracledb.readthedocs.io/en/latest/user_guide/installation.html#node-oracledb-installation-on-linux
    oracledb ********************************************************************************

    npm notice created a lockfile as package-lock.json. You should commit this file.
    npm WARN server@1.0.0 No repository field.

    added 72 packages from 43 contributors and audited 72 packages in 1.872s

    14 packages are looking for funding
    run `npm fund` for details

    found 0 vulnerabilities

    [oracle@indmcpprimary server]$ ls
    node_modules  package.json  package-lock.json
  
    </copy>
    ``` 

3. Create Server.js 

    ```
    <copy> 
    const express = require('express');
    const oracledb = require('oracledb');
    const app = express();
    const cors = require('cors');

    app.use(cors());
    app.use(express.json());

    const dbConfig = {
    user: 'demouser',
    password: '<Your-Password>',
    connectString: '(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=FREEPDB1)))',
    };

    oracledb.autoCommit = true;

    app.get('/api/customers', async (req, res) => {
        try {
            const conn = await oracledb.getConnection(dbConfig);
            const result = await conn.execute('SELECT * FROM bank_customers');
            res.json(result.rows.map((row) => ({
            id: row[0],
            customerName: row[1],
            gender: row[2],
            maritalStatus: row[3],
            streetAddress: row[4],
            city: row[5],
            state: row[6],
            phoneNumber: row[7],
            email: row[8],
            })));
        } catch (err) {
            console.error(err);
            res.status(500).json({ message: 'Error fetching customers' });
        }
    });

    app.post('/api/customers', async (req, res) => {
        try {
            const conn = await oracledb.getConnection(dbConfig);
            const result = await conn.execute(
            `INSERT INTO bank_customers (
                customer_name,
                gender,
                marital_status,
                street_address,
                city,
                state,
                phone_number,
                email
            ) VALUES (
                :customerName,
                :gender,
                :maritalStatus,
                :streetAddress,
                :city,
                :state,
                :phoneNumber,
                :email
            ) 
            RETURNING id INTO :id`,
            {
                customerName: req.body.customer_name,
                gender: req.body.gender,
                maritalStatus: req.body.marital_status,
                streetAddress: req.body.street_address,
                city: req.body.city,
                state: req.body.state,
                phoneNumber: req.body.phone_number,
                email: req.body.email,
                id: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT },
            } );
            res.json({
            id: result.outBinds.id[0],
            customerName: req.body.customer_name,
            gender: req.body.gender,
            maritalStatus: req.body.marital_status,
            streetAddress: req.body.street_address,
            city: req.body.city,
            state: req.body.state,
            phoneNumber: req.body.phone_number,
            email: req.body.email,
            });
        } catch (err) {
            console.error(err);
            res.status(500).json({ message: 'Error creating customer' });
        }
    });

    app.listen(3001, () => {
        console.log('Server listening on port 3001');
    });
    </copy>
    ``` 
  
## Task 4: Run the Backend Server   

1. Run the server application

    ```
    <copy>
    $ npm start

    > server@1.0.0 start /home/oracle/my-client-server-app/server
    > node server.js

    Server listening on port 3001 
    </copy>
    ```

2. In the web browser check the following URL http://localhost:3001/api/customers

    ![Hello](images/output.png =30%x* "Hello")

## Task 4: Create a React.js Front-end Application that runs on port 3000

1. Create front end React application client. 

    ```
    <copy>
    $ ls
    client  server
    $ cd client/
    $ ls
    $ vi package.json
    </copy>
    ```

    ![Hello](images/folder.png =30%x* "Hello")

2. Create Package.json in client directory

    ```
    <copy>
    {
        "name": "my-react-db-app",
        "version": "0.1.0",
        "private": true,
        "dependencies": {
            "@testing-library/dom": "^10.4.1",
            "@testing-library/jest-dom": "^6.9.1",
            "@testing-library/react": "^16.3.0",
            "@testing-library/user-event": "^13.5.0",
            "axios": "^1.12.2",
            "react": "^19.2.0",
            "react-dom": "^19.2.0",
            "react-scripts": "5.0.1",
            "web-vitals": "^2.1.4"
        },
        "scripts": {
            "start": "react-scripts start",
            "build": "react-scripts build",
            "test": "react-scripts test",
            "eject": "react-scripts eject"
        },
        "eslintConfig": {
            "extends": [
            "react-app",
            "react-app/jest"
            ]
        },
        "browserslist": {
            "production": [
            ">0.2%",
            "not dead",
            "not op_mini all"
            ],
            "development": [
            "last 1 chrome version",
            "last 1 firefox version",
            "last 1 safari version"
            ]
        }
    }
    </copy>
    ```

3. Create API.js under client/src/services folder

    API.js connects client to backend server using public ip address and port 3001

    ```
    <copy>
    import axios from 'axios';

    const api = axios.create({
        baseURL: 'http://localhost:3001/api', 
    });

    export const getCustomers = async () => {
        const response = await api.get('/customers');
        return response.data;
    };

    export const createCustomer = async (customer) => {
        const response = await api.post('/customers', customer);
        return response.data;
    };
    </copy>
    ```

4. Create App.js under client/src folder 

    ```
    <copy>
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
    </copy>
    ```

5. Create CustomerForm.js under client/src/components folder

    ```
    <copy>
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
    </copy>
    ```

6. Create CustomerList.js under client/src/components folder

    ```
    <copy>
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
    </copy>
    ```
 
## Task 6: Run the Application 

1. Run the client

    ```
    <copy>
    $ npm start

    Compiled successfully!

    You can now view my-react-db-app in the browser.

    Local:            http://localhost:3000
    On Your Network:  http://192.168.1.5:3000

    Note that the development build is not optimized.
    To create a production build, use npm run build.

    webpack compiled successfully
    </copy>
    ```
  
    In the web browser open the following URL http://localhost:3000/

    Insert record

    ![Hello](images/result2.png =50%x* "Hello")

    View All records

    ![Hello](images/result1.png =50%x* "Hello")
  
    You successfully made it to the end this of this. You may now  **proceed to the next lab**.

## Learn More
    
* [Quick Start: Developing Python Applications for Oracle Autonomous Database](https://www.oracle.com/database/technologies/appdev/python/quickstartpython.html)
* [python-oracledb documentation](https://python-oracledb.readthedocs.io/en/latest/index.html)  
* [Easy wallet-less connections to Oracle Autonomous Databases in Python](https://blogs.oracle.com/opal/post/easy-way-to-connect-python-applications-to-oracle-autonomous-databases)
* [Code Examples: python-oracledb](https://github.com/oracle/python-oracledb) 
* [Installing python-oracledb](https://python-oracledb.readthedocs.io/en/latest/user_guide/installation.html)
* [Getting Started with Python and Oracle Database](https://apexapps.oracle.com/pls/apex/r/dbpm/livelabs/view-workshop?wid=3482)
  
## Acknowledgements

- **Author** - Madhusudhan Rao, Principal Product Manager, Database
* **Last Updated By/Date** -  Madhusudhan Rao, Nov 17th, 2025
