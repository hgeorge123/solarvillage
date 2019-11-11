# Solar Village

This project was created to implement the case of Solar Village.

## The steps bellow are required to run it.

1. Create the users and groups

   * Group: **SV-Executives** with the user: **executive**
   * Group: **SV-Representatives** with the user: **sales**
   * Group: **HOA-Representatives** with the user: **hoa**
   * Group: **Administrator** with the user: **pamadmin**

2. Add the required roles to each group

   * Group: **SV-Executives** with the role: **user**
   * Group: **SV-Representatives** with the role: **user**
   * Group: **HOA-Representatives** with the role: **user**
   * Group: **Administrator** with the role: **process-admin**

3. Build the kjar into your environment

   Clone this repository and run the following command:

   ```
   $ mvn clean install
   ```

4. Add a new deployment unit to your kie server

   Fill the following values:

   * Name: **SolarVillage-1.0.0**
   * Group Name: **com.assignment**
   * Artifact Id: **SolarVillage**
   * Version: **1.0.0-SNAPSHOT**
   
   Select *Next* and select:
    
   * Runtime strategy: **Per Process Instance**

5. Finally Start the deployment unit

## Now lets start the Mock Service

The mock service is a service build using golang and it has 4 main endpoints. This mock will be used to simulate the electrical and structural permit requests. The app binary `rhpam-gpe-mock-permit` can be found in this repository. To run it make sure to set it as executable.

It will start the listener port at **8082**

The endpoints will be the following:

 * GET - http://localhost:8082/ - To list all available permit types currenctly we have 2 (electrical and structural)
 * POST - http://localhost:8082/:type/ - To create a permit
 * GET - http://localhost:8082/:type/:id - To get permit current status
 * DELETE - http://localhost:8082/:type/:id - To cancel the permit

## Let's test the process

### To create an order for residences of type House

 1. Login into RH-PAM with the user pamadmin.
 2. Locate the process and create a new instance with the following values:
   
    * Resident Name: **Joao**
    * Type: **House**
 
 3. Take a look into the log of the RH-PAM to make sure that it executed successfully.
 4. Now you can see that the process followed the path to request both kinds of permits.

### To create an order for Home Owners Associations

 1. Login into RH-PAM with the user pamadmin.
 2. Locate the process and create a new instance with the following values:
   
    * Resident Name: **Pedro**
    * Type: **Apartment**

 3. Now you can see that the process is stopped waiting for an **SV-Representative** select it. So, let's log in with the user **sales** and take the task. Note: If no **SV-Representative** is available for 5 days the process will escalate to the **SV-Executives**.
 4. Once an there is a sales representative, the process will wait for the **HOA-Representative** to approve the project or not. So, let's log in with **hoa** user and approve it.
 5. Now you can see that the process followed the path to request both kinds of permits (Electrical and Structural).
 6. You can now try again and disapprove it. So, it will follow the path to finalize the process.