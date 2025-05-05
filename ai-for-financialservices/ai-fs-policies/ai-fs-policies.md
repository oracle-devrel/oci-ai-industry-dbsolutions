# Setup environment (Optional Steps)

## Introduction

TBC - To be completed. 

Estimated time: 20 minutes

### Objectives

In this lab, you will:

* Create a new compartment for objects used in workshop
* Set policies for the new OCI group to manage a new compartment
* Create new policies for Vision service
* Create a new policy for Cloud Shell access

### Prerequisites

This lab assumes:

* You have an Oracle Cloud account with OCI and IDCS administration privileges or
* Your OCI and IDCS administrator can perform steps in this lab for you.
 
## Task 1: Log into OCI

1. Login into OCI

    To setup environment, you need OCI administrator's privileges. If you've got these privileges, login into OCI as described in the instructions in previous, **Get started**, lab.

    In case you haven't got OCI administrator's privileges, you should ask your OCI administrator to perform the rest of the tasks in this lab.

## Task 3: Create a new compartment

You will use one compartment for all required objects in this workshop, hence you need to create one.

1. Navigate to Compartments page

    In OCI console, open the **Navigator** menu. Navigate to **Identity & Security** and then choose **Compartments**.

    ![Navigate to Compartments](https://oracle-livelabs.github.io/common/images/console/id-compartment.png " ")

2. Create a new compartment

    The list of all active compartments is displayed. Click **Create Compartment** to start creating a new compartment.

    ![Create a new Compartment](./images/create-a-new-compartment.png " ")

3. Define compartment details

    This step is fairly straight forward. You just have to provide **Name**, **Description** and **Parent Compartment**. For example, name your compartment *X-Ray-Image-Classification*.

    Additionally, for better management and administration of your OCI environment you can optionally add Tags.

    click **Create Compartment**. 

    ![Define a new Compartment](./images/define-a-new-compartment.png =50%x*)
   
## Task 4: Create a new policy for compartment management

You need to create a **policy** which grants manage privileges in a new compartment to the new OCI group.

1. Navigate to **Policies** page

    Once again use **Navigator** to navigate to **Identity & Security** and now choose **Policies**.

    ![Navigate to Policies](https://oracle-livelabs.github.io/common/images/console/id-policies.png " ")

2. Create a new policy

    In the **Policies** page click **Create Policy**.

    ![Create a new policy](./images/create-a-new-policy.png =30%x*)

3. Define a new policy

    Provide a new Policy **Name** and **Description**.

    This policy is set at the *root* compartment level, therefore select the *root* compartment of your tenancy.

    In **Policy Builder** section, search for **Let compartment admins manage the compartment** in the **Common policy templates** pulldown list.

    Make sure **Groups** option is selected and then choose your newly created OCI Group from the list of available OCI Groups. For **Location**, select tenancy *root* compartment.

    ![Policy for compartment admins to manage the compartment](./images/policy-for-compartment-admins.png " ")

    Your policy should look like this:

     ```text
     <copy>Allow group OCI-X-Ray-Group to manage all-resources in compartment X-Rays-Image-Classification</copy>
     ```

4. Finish creating a new policy

     Click **Create** to create a new policy in your *root* compartment.

     ![Verify policy for compartment admins to manage the compartment](./images/verify-policy-for-compartment-admins.jpg)

     This is not the only required policy that is required for this workshop. You will return to this step to create additional policies later.

## Task 5: Anomaly Detection Policies

1. Anomaly Detection offers both aggregate and individual resource-types for writing policies. You can use aggregate resource types to write fewer policies. For example, instead of allowing a group to manage all individual resource types, you can have a policy that allows the group to manage the aggregate resource type, ai-service-anomaly-detection-family

    ```text
     <copy>allow any-user to manage ai-service-anomaly-detection-family in tenancy</copy>
     ```

    
  
## Learn More

* [OCI Documentation](https://docs.oracle.com/en-us/iaas/Content/home.htm)
* [Anomaly Detection Policies](https://docs.oracle.com/en-us/iaas/Content/anomaly/using/policies.htm#policies)

## Acknowledgements

* **Author** - Madhusudhan Rao B M, Principal Product Manager, Oracle Database
* **Last Updated By/Date** - April 22nd, 2025