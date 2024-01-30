
Account[] acctsWithContacts = [SELECT Name, BillingCountry, (SELECT FirstName,LastName FROM Contacts) 
                               FROM Account 
                               WHERE BillingCountry = 'France'];
System.debug('Accounts with contacts :' + acctsWithContacts);

// Get child records by dot notations
Contact[] cts0 = acctsWithContacts[0].Contacts;
Contact[] cts1 = acctsWithContacts[1].Contacts;
Contact[] cts2 = acctsWithContacts[2].Contacts;
Contact[] cts3 = acctsWithContacts[3].Contacts;
Contact[] cts4 = acctsWithContacts[4].Contacts;
Contact[] cts5 = acctsWithContacts[5].Contacts;
//Printing 
System.debug('test'+cts0);
System.debug(cts1);
System.debug(cts2);
System.debug(cts3);
System.debug(cts4);
System.debug(cts5);

System.debug('Name of first associated contact : ' 
             + cts0[0].FirstName + ', ' + cts0[0].LastName);

System.debug('Name of sixth associated contact: ' 
             + cts5[0].FirstName + ', ' + cts5[0].LastName);