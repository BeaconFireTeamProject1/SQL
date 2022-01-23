use onboarding;

insert into role (ID, RoleName)
values (1, 'HR');

insert into role (ID, RoleName)
values (2, 'Employee');

insert into user (ID, UserName, Password, Email) 
values (1, 'admin', '123123', 'admin@test.com');

insert into userrole (ID, UserID, RoleID, ActiveFlag, CreateDate)
values (1, 1, 1, true, 'someday');

insert into user (ID, UserName, Password, Email) 
values (2, 'test', '123123', 'test@test.com');

insert into userrole (ID, UserID, RoleID, ActiveFlag, CreateDate)
values (2, 2, 2, true, 'someday too');

-- ---------------------------------------------

insert into person (ID, FirstName, LastName, MiddleName, Email, CellPhone, AlternatePhone, Gender, SSN, DOB, UserID)
values (1, 'First', 'Person', null, 'first@person', '123-456-789', null, 'male', '123-45-6789', '2000-01-01', 1);

insert into visastatus (ID, VisaType, Active, createUser)
values (1, 'H-1B', true, 1);

insert into employee (ID, PersonID, Title, ManagerID, StartDate, EndDate, Avatar, Car, VisaStatusID, VisaStartDate, VisaEndDate, DriverLicense, DriverLicense_ExpirationDate)
values (1, 1, 'HR', 1, '2020-01-01', '2099-01-01', 'avatar', null, 1, '2010-01-01', '2030-01-01', null, null);

INSERT INTO contact (ID, PersonID, name, address, phone, Relationship, Title, isReference, isEmergency)
VALUES (1, 1, 'E contact 1', 'E address 1', '999-999-9999', null, null, false, true);

INSERT INTO address (ID, AddressLine1, AddressLine2, City, Zipcode, State, PersonID)
VALUES (1, 'address line 1', null, 'city', '12345', 'state', 1);

INSERT INTO applicationworkflow (ID, EmployeeID, CreatedDate, Status, Comments, Type)
VALUES (2, 1, '2022-01-20', 'reject', 'Your EADcard is approved. You are all set.', 'I983');
-- -------------------------------------------

insert into person (ID, FirstName, LastName, MiddleName, Email, CellPhone, AlternatePhone, Gender, SSN, DOB, UserID)
values (2, 'Second', 'Person', null, 'second@person', '223-456-789', null, 'male', '223-45-6789', '2000-02-02', 2);

insert into visastatus (ID, VisaType, Active, createUser)
values (2, 'F1', true, 2);

insert into employee (ID, PersonID, Title, ManagerID, StartDate, EndDate, Avatar, Car, VisaStatusID, VisaStartDate, VisaEndDate, DriverLicense, DriverLicense_ExpirationDate)
values (2, 2, 'employee', 1, '2020-02-02', '2099-02-02', 'avatar2', 'car2', 2, '2010-02-02', '2030-02-02', '#DL', '2077-02-02');

INSERT INTO contact (ID, PersonID, name, address, phone, Relationship, Title, isReference, isEmergency)
VALUES (2, 2, 'E contact 2', 'E address 2', '999-999-9998', null, null, false, true);

INSERT INTO address (ID, AddressLine1, AddressLine2, City, Zipcode, State, PersonID)
VALUES (2, 'address line 1', null, 'city2', '22345', 'state2', 2);

INSERT INTO address (ID, AddressLine1, AddressLine2, City, Zipcode, State, PersonID)
VALUES (3, 'address 2 line 1', null, 'city2', '22345*', 'state2', 2);

INSERT INTO applicationworkflow (ID, EmployeeID, CreatedDate, Status, Comments, Type)
VALUES (1, 2, '2022-01-19', 'reject', 'Get Started', 'EADReceipt');

INSERT INTO personaldocument (ID, EmployeeID, Path, Title, Comment)
VALUES (1, 2, 'testpath', 'randomshit', null);

INSERT INTO personaldocument (ID, EmployeeID, Path, Title, Comment)
VALUES (2, 2, 'testpath2', 'randomshit2', null);