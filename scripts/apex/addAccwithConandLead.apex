// Add account and related contact
Account acct = new Account(
    Name='SFDC Computingss',
    Phone='(415)555-2212',
    NumberOfEmployees=300,
    BillingCity='Berlin');
insert acct;

// Once the account is inserted, the sObject will be 
// populated with an ID.
// Get this ID.
ID acctID = acct.ID;
// Add a contact to this account.
Contact con = new Contact(
    FirstName='Iran',
    LastName='Smith',
    Phone='(415)355-1212',
    Department='Wingo',
    AccountId=acctID);
insert con;

// Add a lead .
Lead le = new Lead(
    FirstName='Iran',
    LastName='Smith',
    Phone='(415)555-1212');
insert le;