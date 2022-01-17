drop database if exists userdb;
create database userdb;
use userdb;

create table User(
ID int AUTO_INCREMENT not null primary key,
UserName varchar(100) not null,
Password varchar(100) not null,
Email varchar(200) not null
);

create table Role(
ID int AUTO_INCREMENT not null primary key,
RoleName varchar(200) not null  -- HR, Employee 
);

create table UserRole(
ID int auto_increment not null primary key,
UserID int not null,
RoleID int not null,
ActiveFlag boolean,
CreateDate varchar(200),
constraint fk_UserID
foreign key(UserID) references User(ID),
constraint fk_RoleID
foreign key(RoleID) references Role(ID)
);

create table RegistrationToken(
ID int auto_increment not null primary key,
Token varchar(200) not null,
ValidDuration varchar(200) not null,
Email varchar(200) not null
);

-- ---------------------------------------------------------------- 

drop database if exists onboarding;
create database onboarding;
use onboarding;

create table Person(
ID int auto_increment not null primary key,
FirstName varchar(200) not null,
LastName varchar(200) not null,
MiddleName varchar(200) null,
Email varchar(200) not null, 
CellPhone varchar(200) not null,
AlternatePhone varchar(200) null,
Gender varchar(100) not null,
SSN varchar(100) not null,
DOB varchar(200) not null,
UserID int not null
);

create table VisaStatus(
ID int auto_increment not null primary key,
VisaType varchar(200) not null,
Active boolean,
CreateUser int not null,
constraint fk_VisaStatus_Person
foreign key(CreateUser) references Person(ID)
);

create table Employee(
ID int auto_increment not null primary key,
PersonID int not null,
Title varchar(200) null,
ManagerID int not null,
StartDate varchar(200) not null,
EndDate varchar(200) not null,
Avatar varchar(300) not null,
Car varchar(200) null,
VisaStatusID int not null,
VisaStartDate varchar(200) not null,
VisaEndDate varchar(200) not null,
DriverLicense varchar(200) null,
DriverLicense_ExpirationDate varchar(200) null,
constraint fk_Employee_Person
foreign key(PersonID) references Person(ID),
constraint fk_Employee_VisaStatus
foreign key(VisaStatusID) references VisaStatus(ID)
);

create table Contact(
ID int auto_increment not null primary key,
PersonID int not null,
Relationship varchar(200) null,
Title varchar(200) null,
isReferrence boolean,
isEmergency boolean,
constraint fk_Contact_Person
foreign key(PersonID) references Person(ID)
);

create table Address(
ID int auto_increment not null primary key,
AddressLine1 varchar(200) not null,
AddressLine2 varchar(200) null,
City varchar(200) not null,
Zipcode varchar(200) not null,
State varchar(200) not null,
PersonID int not null,
constraint fk_Address_Person
foreign key(PersonID) references Person(ID)
);

create table PersonalDocument(
ID int auto_increment not null primary key,
EmployeeID int not null,
Path varchar(300) not null,
Title varchar(200) not null,
Comment varchar(400) not null,
constraint fk_Document_Employee
foreign key(EmployeeID) references Employee(ID)
);

create table DigitalDocument(
ID int auto_increment not null primary key,
Type varchar(200) not null,
Required boolean,
TemplateLocation varchar(300) not null,
Description varchar(300) not null
);

create table ApplicationWorkFlow(
ID int auto_increment not null primary key,
EmployeeID int not null,
CreatedDate varchar(200) not null,
Status varchar(200) not null,
Comments varchar(400) not null,
Type varchar(200) not null, -- OnBoard, OPT
constraint fk_Application_Employee
foreign key(EmployeeID) references Employee(ID)
)

