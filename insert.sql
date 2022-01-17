use onboarding;

insert into person (ID, FirstName, LastName, MiddleName, Email, CellPhone, AlternatePhone, Gender, SSN, DOB, UserID)
values (1, 'First', 'Person', null, 'first@person', '123-456-789', null, 'male', '123-45-6789', '01-01-2000', 1);

insert into visastatus (ID, VisaType, Active, createUser)
values (1, 'H-1B', true, 1);

insert into employee (ID, PersonID, Title, ManagerID, StartDate, EndDate, Avatar, Car, VisaStatusID, VisaStartDate, VisaEndDate, DriverLicense, DriverLicense_ExpirationDate)
values (1, 1, null, 1, '01-01-2020', '01-01-2099', 'avatar', null, 1, '01-01-2010', '01-01-2030', null, null);

INSERT INTO contact (ID, PersonID, Relationship, Title, isReferrence, isEmergency)
VALUES (1, 1, null, null, false, true);

INSERT INTO address (ID, AddressLine1, AddressLine2, City, Zipcode, State, PersonID)
VALUES (1, 'address line 1', null, 'city', '12345', 'state', 1);

-- -------------------------------------------

insert into person (ID, FirstName, LastName, MiddleName, Email, CellPhone, AlternatePhone, Gender, SSN, DOB, UserID)
values (2, 'Second', 'Person', null, 'second@person', '223-456-789', null, 'male', '223-45-6789', '02-02-2000', 2);

insert into visastatus (ID, VisaType, Active, createUser)
values (2, 'F1', true, 2);

insert into employee (ID, PersonID, Title, ManagerID, StartDate, EndDate, Avatar, Car, VisaStatusID, VisaStartDate, VisaEndDate, DriverLicense, DriverLicense_ExpirationDate)
values (2, 2, null, 1, '02-02-2020', '02-02-2099', 'avatar2', 'car2', 2, '02-02-2010', '02-02-2030', '#DL', '02-02-2077');

INSERT INTO contact (ID, PersonID, Relationship, Title, isReferrence, isEmergency)
VALUES (2, 2, null, null, false, true);

INSERT INTO address (ID, AddressLine1, AddressLine2, City, Zipcode, State, PersonID)
VALUES (2, 'address line 1', null, 'city2', '22345', 'state2', 2);

INSERT INTO address (ID, AddressLine1, AddressLine2, City, Zipcode, State, PersonID)
VALUES (3, 'address 2 line 1', null, 'city2', '22345*', 'state2', 2);

