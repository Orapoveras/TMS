/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     05/01/2016 12:45:37                          */
/*==============================================================*/



-- Type package declaration
create or replace package PDTypes  
as
    TYPE ref_cursor IS REF CURSOR;
end;

-- Integrity package declaration
create or replace package IntegrityPackage AS
 procedure InitNestLevel;
 function GetNestLevel return number;
 procedure NextNestLevel;
 procedure PreviousNestLevel;
 end IntegrityPackage;
/

-- Integrity package definition
create or replace package body IntegrityPackage AS
 NestLevel number;

-- Procedure to initialize the trigger nest level
 procedure InitNestLevel is
 begin
 NestLevel := 0;
 end;


-- Function to return the trigger nest level
 function GetNestLevel return number is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 return(NestLevel);
 end;

-- Procedure to increase the trigger nest level
 procedure NextNestLevel is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 NestLevel := NestLevel + 1;
 end;

-- Procedure to decrease the trigger nest level
 procedure PreviousNestLevel is
 begin
 NestLevel := NestLevel - 1;
 end;

 end IntegrityPackage;
/


drop trigger tAssignements_bi_x
/

drop trigger tBatteriesLog_bi_x
/

drop trigger tCarAccidentsLog_bi_x
/

drop trigger tDepartments_bi_x
/

drop trigger tDriverLicensesLog_bi_x
/

drop trigger tFinesLog_bi_x
/

drop trigger tFuellingLog_bi_x
/

drop trigger tInspectionsLog_bi_x
/

drop trigger tInsurancesLog_bi_x
/

drop trigger tMedicalCertificatesLog_bi_x
/

drop trigger tNormOrderDetailes_bi_x
/

drop trigger tNormOrders_bi_x
/

drop trigger tParkings_bi_x
/

drop trigger tPersons_bi_x
/

drop trigger tPositions_bi_x
/

drop trigger tRegSertificates_bi_x
/

drop trigger tTiresLog_bi_x
/

drop trigger tTripsLog_bi_x
/

drop trigger tVehicles_bi_x
/

drop trigger tWayBillLog_bi_x
/

alter table tAssignements
   drop constraint FK_PERSONID2A
/

alter table tAssignements
   drop constraint FK_POSITIONID2A
/

alter table tAssignements
   drop constraint FK_VECHICLEID2A
/

alter table tBatteriesLog
   drop constraint FK_VECHICLEID2BL
/

alter table tCarAccidentsLog
   drop constraint FK_PERSONID2CAL
/

alter table tCarAccidentsLog
   drop constraint FK_VECHICLEID2CAL
/

alter table tDepartments
   drop constraint FK_PARENTDEPID
/

alter table tDriverLicensesLog
   drop constraint FK_PERSONID2DLL
/

alter table tFinesLog
   drop constraint FK_PERSONID2FIL
/

alter table tFinesLog
   drop constraint FK_VECHICLEID2FIL
/

alter table tFuellingLog
   drop constraint FK_VECHICLEID2FL
/

alter table tInspectionsLog
   drop constraint FK_VECHICLEID2I
/

alter table tInsurancesLog
   drop constraint FK_PERSONID2IL
/

alter table tInsurancesLog
   drop constraint FK_VECHICLEID2IL
/

alter table tMedicalCertificatesLog
   drop constraint FK_PERSONID2MCL
/

alter table tNormOrderDetailes
   drop constraint FK_NORMORDERID2NOD
/

alter table tNormOrderDetailes
   drop constraint FK_VECHICLEID2NOD
/

alter table tParkings
   drop constraint FK_VECHICLEID2P
/

alter table tPositions
   drop constraint FK_DEPARTMENTID2A
/

alter table tRegSertificates
   drop constraint FK_VECHICLEID2RS
/

alter table tTiresLog
   drop constraint FK_VECHICLEID2TL
/

alter table tTripsLog
   drop constraint FK_TRIPID2WBL
/

alter table tWayBillLog
   drop constraint FK_PERSONID2WBL
/

alter table tWayBillLog
   drop constraint FK_VECHICLEID2WBL
/

drop index VechicleID2A_FK
/

drop index PersonID2A_FK
/

drop index PositionID2A_FK
/

drop index VechicleID2BL_FK
/

drop index VechicleID2CAL_FK
/

drop index PersonID2CAL_FK
/

drop index ParentDepID_FK
/

drop index PersonID2DLL_FK
/

drop index VechicleID2FiL_FK
/

drop index PersonID2FiL_FK
/

drop index VechicleID2FL_FK
/

drop index VechicleID2I_FK
/

drop index PersonID2IL_FK
/

drop index VechicleID2IL_FK
/

drop index PersonID2MCL_FK
/

drop index VechicleID2NOD_FK
/

drop index NormOrderID2NOD_FK
/

drop index VechicleID2P_FK
/

drop index DepartmentID2A_FK
/

drop index VechicleID2RS_FK
/

drop index VechicleID2TL_FK
/

drop index TripID2WBL_FK
/

drop index VechicleID2WBL_FK
/

drop index PersonID2WBL_FK
/

drop sequence tAssignements_seq
/

drop sequence tBatteriesLog_seq
/

drop sequence tCarAccidentsLog_seq
/

drop sequence tDepartments_seq
/

drop sequence tDriverLicensesLog_seq
/

drop sequence tFinesLog_seq
/

drop sequence tFuellingLog_seq
/

drop sequence tInspectionsLog_seq
/

drop sequence tInsurancesLog_seq
/

drop sequence tMedicalCertificatesLog_seq
/

drop sequence tNormOrderDetailes_seq
/

drop sequence tNormOrders_seq
/

drop sequence tParkings_seq
/

drop sequence tPersons_seq
/

drop sequence tPositions_seq
/

drop sequence tRegSertificates_seq
/

drop sequence tTiresLog_seq
/

drop sequence tTripsLog_seq
/

drop sequence tVehicles_seq
/

drop sequence tWayBillLog_seq
/

create sequence tAssignements_seq
/

create sequence tBatteriesLog_seq
/

create sequence tCarAccidentsLog_seq
/

create sequence tDepartments_seq
/

create sequence tDriverLicensesLog_seq
/

create sequence tFinesLog_seq
/

create sequence tFuellingLog_seq
/

create sequence tInspectionsLog_seq
/

create sequence tInsurancesLog_seq
/

create sequence tMedicalCertificatesLog_seq
/

create sequence tNormOrderDetailes_seq
/

create sequence tNormOrders_seq
/

create sequence tParkings_seq
/

create sequence tPersons_seq
/

create sequence tPositions_seq
/

create sequence tRegSertificates_seq
/

create sequence tTiresLog_seq
/

create sequence tTripsLog_seq
/

create sequence tVehicles_seq
/

create sequence tWayBillLog_seq
/

/*==============================================================*/
/* Table: tAssignements                                         */
/*==============================================================*/
create table tAssignements 
(
   AssignementID        NUMBER(12)           not null,
   PositionID           NUMBER(12),
   VehicleID            NUMBER(12),
   PersonID             NUMBER(12),
   AssignmentDate       DATE,
   AssignmentNotes      VARCHAR2(1024),
   constraint PK_TASSIGNEMENTS primary key (AssignementID)
)
/

comment on table tAssignements is
'Назначения сотрудников на должности и закрепление за ними автомобилей.'
/

comment on column tAssignements.AssignementID is
'Внутренний номер назначения'
/

comment on column tAssignements.PositionID is
'Внутренний номер должности'
/

comment on column tAssignements.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tAssignements.PersonID is
'Внутренний номер физического лица'
/

comment on column tAssignements.AssignmentDate is
'Дата назначения на должность или закрепления автомобиля'
/

comment on column tAssignements.AssignmentNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PositionID2A_FK                                       */
/*==============================================================*/
create index PositionID2A_FK on tAssignements (
   PositionID ASC
)
/

/*==============================================================*/
/* Index: PersonID2A_FK                                         */
/*==============================================================*/
create index PersonID2A_FK on tAssignements (
   PersonID ASC
)
/

/*==============================================================*/
/* Index: VechicleID2A_FK                                       */
/*==============================================================*/
create index VechicleID2A_FK on tAssignements (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tBatteriesLog                                         */
/*==============================================================*/
create table tBatteriesLog 
(
   BatteryMountID       NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   BatteryMountDate     DATE,
   BatteryName          VARCHAR2(255),
   BatteryLifeTime      NUMBER(12),
   BatteryMileage       NUMBER(22,3),
   BatteryMotoHours     NUMBER(22,3),
   BatteryNotes         VARCHAR2(1024),
   constraint PK_TBATTERIESLOG primary key (BatteryMountID)
)
/

comment on table tBatteriesLog is
'Журнал замены аккумуляторов'
/

comment on column tBatteriesLog.BatteryMountID is
'Внутренний номер замены аккумулятора'
/

comment on column tBatteriesLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tBatteriesLog.BatteryMountDate is
'Дата замены аккумулятора'
/

comment on column tBatteriesLog.BatteryName is
'Наименование аккумулятора'
/

comment on column tBatteriesLog.BatteryLifeTime is
'Срок эксплуатации аккумулятора в месяцах'
/

comment on column tBatteriesLog.BatteryMileage is
'Наработка в тысячах километров'
/

comment on column tBatteriesLog.BatteryMotoHours is
'Количество моточасов'
/

comment on column tBatteriesLog.BatteryNotes is
'Примечания'
/

/*==============================================================*/
/* Index: VechicleID2BL_FK                                      */
/*==============================================================*/
create index VechicleID2BL_FK on tBatteriesLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tCarAccidentsLog                                      */
/*==============================================================*/
create table tCarAccidentsLog 
(
   CarAccidentID        NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   PersonID             NUMBER(12),
   CarAccidentDate      DATE,
   CarAccidentNotes     VARCHAR2(1024),
   constraint PK_TCARACCIDENTSLOG primary key (CarAccidentID)
)
/

comment on table tCarAccidentsLog is
'Журнал регистрации дорожных происшествий'
/

comment on column tCarAccidentsLog.CarAccidentID is
'Внутренний номер дорожно-транспортного происшествия'
/

comment on column tCarAccidentsLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tCarAccidentsLog.PersonID is
'Внутренний номер физического лица'
/

comment on column tCarAccidentsLog.CarAccidentDate is
'Дата дорожно-транспортного происшествия'
/

comment on column tCarAccidentsLog.CarAccidentNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PersonID2CAL_FK                                       */
/*==============================================================*/
create index PersonID2CAL_FK on tCarAccidentsLog (
   PersonID ASC
)
/

/*==============================================================*/
/* Index: VechicleID2CAL_FK                                     */
/*==============================================================*/
create index VechicleID2CAL_FK on tCarAccidentsLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tDepartments                                          */
/*==============================================================*/
create table tDepartments 
(
   DepartmentID         NUMBER(12)           not null,
   tDe_DepartmentID     NUMBER(12),
   DepName              VARCHAR2(255),
   DepNotes             VARCHAR2(1024),
   constraint PK_TDEPARTMENTS primary key (DepartmentID)
)
/

comment on table tDepartments is
'Организационная структура предприятия'
/

comment on column tDepartments.DepartmentID is
'Внутренний номер подразделения'
/

comment on column tDepartments.tDe_DepartmentID is
'Внутренний номер подразделения'
/

comment on column tDepartments.DepName is
'Наименование подразделения'
/

comment on column tDepartments.DepNotes is
'Примечания'
/

/*==============================================================*/
/* Index: ParentDepID_FK                                        */
/*==============================================================*/
create index ParentDepID_FK on tDepartments (
   tDe_DepartmentID ASC
)
/

/*==============================================================*/
/* Table: tDriverLicensesLog                                    */
/*==============================================================*/
create table tDriverLicensesLog 
(
   DriverLicenseID      NUMBER(12)           not null,
   PersonID             NUMBER(12),
   DriverLicenseDate    DATE,
   DriverLicenseNotes   VARCHAR2(1024),
   constraint PK_TDRIVERLICENSESLOG primary key (DriverLicenseID)
)
/

comment on table tDriverLicensesLog is
'Журнал регистрации водительских удостоверений'
/

comment on column tDriverLicensesLog.DriverLicenseID is
'Внутренний номер водительского удостоверения'
/

comment on column tDriverLicensesLog.PersonID is
'Внутренний номер физического лица'
/

comment on column tDriverLicensesLog.DriverLicenseDate is
'Дата выдачи водительского удостоверения'
/

comment on column tDriverLicensesLog.DriverLicenseNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PersonID2DLL_FK                                       */
/*==============================================================*/
create index PersonID2DLL_FK on tDriverLicensesLog (
   PersonID ASC
)
/

/*==============================================================*/
/* Table: tFinesLog                                             */
/*==============================================================*/
create table tFinesLog 
(
   FineID               NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   PersonID             NUMBER(12),
   FineDate             DATE,
   FineNotes            VARCHAR2(1024),
   constraint PK_TFINESLOG primary key (FineID)
)
/

comment on table tFinesLog is
'Журнал штрафов, нарушений, административных протоколов'
/

comment on column tFinesLog.FineID is
'Внутренний номер штрафа'
/

comment on column tFinesLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tFinesLog.PersonID is
'Внутренний номер физического лица'
/

comment on column tFinesLog.FineDate is
'Дата штрафа, административного протокола'
/

comment on column tFinesLog.FineNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PersonID2FiL_FK                                       */
/*==============================================================*/
create index PersonID2FiL_FK on tFinesLog (
   PersonID ASC
)
/

/*==============================================================*/
/* Index: VechicleID2FiL_FK                                     */
/*==============================================================*/
create index VechicleID2FiL_FK on tFinesLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tFuellingLog                                          */
/*==============================================================*/
create table tFuellingLog 
(
   FuellingID           NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   FuellingDate         DATE,
   FuellingNotes        VARCHAR2(1024),
   constraint PK_TFUELLINGLOG primary key (FuellingID)
)
/

comment on table tFuellingLog is
'Журнал заправок топливом'
/

comment on column tFuellingLog.FuellingID is
'Внутренний номер заправки'
/

comment on column tFuellingLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tFuellingLog.FuellingDate is
'Дата заправки'
/

comment on column tFuellingLog.FuellingNotes is
'Примечания'
/

/*==============================================================*/
/* Index: VechicleID2FL_FK                                      */
/*==============================================================*/
create index VechicleID2FL_FK on tFuellingLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tInspectionsLog                                       */
/*==============================================================*/
create table tInspectionsLog 
(
   InspectionID         NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   InspectionDate       DATE,
   InspectionNotes      VARCHAR2(1024),
   constraint PK_TINSPECTIONSLOG primary key (InspectionID)
)
/

comment on table tInspectionsLog is
'Журнал регистрации государственных техосмотров'
/

comment on column tInspectionsLog.InspectionID is
'Внутренний номер отметки техосмотра технического паспорта'
/

comment on column tInspectionsLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tInspectionsLog.InspectionDate is
'Дата прохождения техосмотра  технического паспорта'
/

comment on column tInspectionsLog.InspectionNotes is
'Примечания'
/

/*==============================================================*/
/* Index: VechicleID2I_FK                                       */
/*==============================================================*/
create index VechicleID2I_FK on tInspectionsLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tInsurancesLog                                        */
/*==============================================================*/
create table tInsurancesLog 
(
   InsuranceID          NUMBER(12)           not null,
   PersonID             NUMBER(12),
   VehicleID            NUMBER(12),
   InsuranceStartDate   DATE,
   InsuranceEndDate     DATE,
   InsurancePolicy      VARCHAR2(1024),
   InsuranceCompany     VARCHAR2(1024),
   InsuranceType        VARCHAR2(1024),
   InsuranceCost        NUMBER(22,2),
   InsuranceNotes       VARCHAR2(1024),
   constraint PK_TINSURANCESLOG primary key (InsuranceID)
)
/

comment on table tInsurancesLog is
'Журнал регистрации договоров страхования, в том числе обязательного страхования гражданской ответственности'
/

comment on column tInsurancesLog.InsuranceID is
'Внутренний номер договора страхования'
/

comment on column tInsurancesLog.PersonID is
'Внутренний номер физического лица'
/

comment on column tInsurancesLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tInsurancesLog.InsuranceStartDate is
'Дата начала действия договора'
/

comment on column tInsurancesLog.InsuranceEndDate is
'Дата окончания действия договора'
/

comment on column tInsurancesLog.InsurancePolicy is
'Страховой полис'
/

comment on column tInsurancesLog.InsuranceCompany is
'Страховая компания'
/

comment on column tInsurancesLog.InsuranceType is
'Тип страхования'
/

comment on column tInsurancesLog.InsuranceCost is
'Стоимость страхования'
/

comment on column tInsurancesLog.InsuranceNotes is
'Примечания'
/

/*==============================================================*/
/* Index: VechicleID2IL_FK                                      */
/*==============================================================*/
create index VechicleID2IL_FK on tInsurancesLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Index: PersonID2IL_FK                                        */
/*==============================================================*/
create index PersonID2IL_FK on tInsurancesLog (
   PersonID ASC
)
/

/*==============================================================*/
/* Table: tMedicalCertificatesLog                               */
/*==============================================================*/
create table tMedicalCertificatesLog 
(
   MedicalCertificateID NUMBER(12)           not null,
   PersonID             NUMBER(12),
   MedicalCertificatDate DATE,
   MedicalCertificatNotes VARCHAR2(1024),
   constraint PK_TMEDICALCERTIFICATESLOG primary key (MedicalCertificateID)
)
/

comment on table tMedicalCertificatesLog is
'Журнал регистрации медицинских справок'
/

comment on column tMedicalCertificatesLog.MedicalCertificateID is
'Внутренний номер водительской медицинской справки'
/

comment on column tMedicalCertificatesLog.PersonID is
'Внутренний номер физического лица'
/

comment on column tMedicalCertificatesLog.MedicalCertificatDate is
'Дата выдачи медицинской справки'
/

comment on column tMedicalCertificatesLog.MedicalCertificatNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PersonID2MCL_FK                                       */
/*==============================================================*/
create index PersonID2MCL_FK on tMedicalCertificatesLog (
   PersonID ASC
)
/

/*==============================================================*/
/* Table: tNormOrderDetailes                                    */
/*==============================================================*/
create table tNormOrderDetailes 
(
   DetailID             NUMBER(12)           not null,
   NormOrderID          NUMBER(12),
   VehicleID            NUMBER(12),
   DetailQueue          NUMBER(12),
   DetailNotes          VARCHAR2(1024),
   constraint PK_TNORMORDERDETAILES primary key (DetailID)
)
/

comment on table tNormOrderDetailes is
'Информация о нормах расхода топлива по конкретному автомобилю'
/

comment on column tNormOrderDetailes.DetailID is
'Внутренний номер детализации приказа'
/

comment on column tNormOrderDetailes.NormOrderID is
'Внутренний номер приказа'
/

comment on column tNormOrderDetailes.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tNormOrderDetailes.DetailQueue is
'Порядковый номер строки в приказе'
/

comment on column tNormOrderDetailes.DetailNotes is
'Примечания'
/

/*==============================================================*/
/* Index: NormOrderID2NOD_FK                                    */
/*==============================================================*/
create index NormOrderID2NOD_FK on tNormOrderDetailes (
   NormOrderID ASC
)
/

/*==============================================================*/
/* Index: VechicleID2NOD_FK                                     */
/*==============================================================*/
create index VechicleID2NOD_FK on tNormOrderDetailes (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tNormOrders                                           */
/*==============================================================*/
create table tNormOrders 
(
   NormOrderID          NUMBER(12)           not null,
   NormOrderDate        DATE,
   NormOrderNotes       VARCHAR2(1024),
   constraint PK_TNORMORDERS primary key (NormOrderID)
)
/

comment on table tNormOrders is
'Журнал регистрации приказов установки норм расходов'
/

comment on column tNormOrders.NormOrderID is
'Внутренний номер приказа'
/

comment on column tNormOrders.NormOrderDate is
'Дата приказа определения норм расхода топлива'
/

comment on column tNormOrders.NormOrderNotes is
'Примечания'
/

/*==============================================================*/
/* Table: tParkings                                             */
/*==============================================================*/
create table tParkings 
(
   ParkingID            NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   ParkingNum           VARCHAR2(255),
   ParkingName          VARCHAR2(255),
   ParkingAddress       VARCHAR2(255),
   ParkingContract      VARCHAR2(255),
   ParkingNotes         VARCHAR2(1024),
   ParkingFromDate      DATE,
   ParkingToDate        DATE,
   constraint PK_TPARKINGS primary key (ParkingID)
)
/

comment on table tParkings is
'Места хранения автомобилей'
/

comment on column tParkings.ParkingID is
'Внутренний номер парковочного места'
/

comment on column tParkings.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tParkings.ParkingNum is
'Гаражный, стояночный номер'
/

comment on column tParkings.ParkingName is
'Наименование парковки'
/

comment on column tParkings.ParkingAddress is
'Адрес парковки, местонахождение'
/

comment on column tParkings.ParkingContract is
'Договор хранения, охраны'
/

comment on column tParkings.ParkingNotes is
'Примечания'
/

comment on column tParkings.ParkingFromDate is
'Начало действия парковочного места'
/

comment on column tParkings.ParkingToDate is
'Окончание действия парковочного места'
/

/*==============================================================*/
/* Index: VechicleID2P_FK                                       */
/*==============================================================*/
create index VechicleID2P_FK on tParkings (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tPersons                                              */
/*==============================================================*/
create table tPersons 
(
   PersonID             NUMBER(12)           not null,
   Name                 VARCHAR2(255),
   Surname              VARCHAR2(255),
   PersonNotes          VARCHAR2(1024),
   constraint PK_TPERSONS primary key (PersonID)
)
/

comment on table tPersons is
'Физические лица'
/

comment on column tPersons.PersonID is
'Внутренний номер физического лица'
/

comment on column tPersons.Name is
'Имя физического лица'
/

comment on column tPersons.Surname is
'Отчество физического лица'
/

comment on column tPersons.PersonNotes is
'Примечания'
/

/*==============================================================*/
/* Table: tPositions                                            */
/*==============================================================*/
create table tPositions 
(
   PositionID           NUMBER(12)           not null,
   DepartmentID         NUMBER(12),
   PositionName         VARCHAR2(255),
   PositionNotes        VARCHAR2(1024),
   constraint PK_TPOSITIONS primary key (PositionID)
)
/

comment on table tPositions is
'Должности на предприятии'
/

comment on column tPositions.PositionID is
'Внутренний номер должности'
/

comment on column tPositions.DepartmentID is
'Внутренний номер подразделения'
/

comment on column tPositions.PositionName is
'Наименование должности'
/

comment on column tPositions.PositionNotes is
'Примечания'
/

/*==============================================================*/
/* Index: DepartmentID2A_FK                                     */
/*==============================================================*/
create index DepartmentID2A_FK on tPositions (
   DepartmentID ASC
)
/

/*==============================================================*/
/* Table: tRegSertificates                                      */
/*==============================================================*/
create table tRegSertificates 
(
   RegSertificateID     NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   RegSertificateNum    VARCHAR2(30),
   RegSertificateDate   DATE,
   RegSertificateNotes  VARCHAR2(1024),
   RegNum               VARCHAR2(30),
   ModelName            VARCHAR2(1024),
   ManufactureDate      DATE,
   Color                VARCHAR2(255),
   BodyNum              VARCHAR2(255),
   CarType              VARCHAR2(255),
   PermissibleWeight    NUMBER(12),
   OwnerName            VARCHAR2(255),
   Address              VARCHAR2(255),
   constraint PK_TREGSERTIFICATES primary key (RegSertificateID)
)
/

comment on table tRegSertificates is
'Свидетельства о регистрации автомобилей'
/

comment on column tRegSertificates.RegSertificateID is
'Внутренний номер отметки техосмотра технического паспорта'
/

comment on column tRegSertificates.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tRegSertificates.RegSertificateNum is
'Номер свидетельства регистации'
/

comment on column tRegSertificates.RegSertificateDate is
'Дата выдачи сертификата'
/

comment on column tRegSertificates.RegSertificateNotes is
'Примечания'
/

comment on column tRegSertificates.RegNum is
'Регистрационный знак'
/

comment on column tRegSertificates.ModelName is
'Марка-модель'
/

comment on column tRegSertificates.ManufactureDate is
'Год выпуска'
/

comment on column tRegSertificates.Color is
'Цвет автомобиля'
/

comment on column tRegSertificates.BodyNum is
'Номер кузова (рама)'
/

comment on column tRegSertificates.CarType is
'Тип транспортного средства'
/

comment on column tRegSertificates.PermissibleWeight is
'Разрешенная масса, кг'
/

comment on column tRegSertificates.OwnerName is
'Владелец'
/

comment on column tRegSertificates.Address is
'Адрес'
/

/*==============================================================*/
/* Index: VechicleID2RS_FK                                      */
/*==============================================================*/
create index VechicleID2RS_FK on tRegSertificates (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tTiresLog                                             */
/*==============================================================*/
create table tTiresLog 
(
   TiresMountID         NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   TiresMountDate       DATE,
   TiresMountNotes      VARCHAR2(1024),
   constraint PK_TTIRESLOG primary key (TiresMountID)
)
/

comment on table tTiresLog is
'Журнал установки шин'
/

comment on column tTiresLog.TiresMountID is
'Внутренний номер установки шин'
/

comment on column tTiresLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tTiresLog.TiresMountDate is
'Дата установки шин'
/

comment on column tTiresLog.TiresMountNotes is
'Примечания'
/

/*==============================================================*/
/* Index: VechicleID2TL_FK                                      */
/*==============================================================*/
create index VechicleID2TL_FK on tTiresLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tTripsLog                                             */
/*==============================================================*/
create table tTripsLog 
(
   TripID               NUMBER(12)           not null,
   WayBillID            NUMBER(12),
   TripQueue            NUMBER(12),
   TripDistance         NUMBER(22,3),
   TripName             CLOB,
   TripNotes            VARCHAR2(1024),
   constraint PK_TTRIPSLOG primary key (TripID)
)
/

comment on table tTripsLog is
'Журнал регистрации поездок'
/

comment on column tTripsLog.TripID is
'Внутренний номер поездки'
/

comment on column tTripsLog.WayBillID is
'Внутренний номер путевого листа'
/

comment on column tTripsLog.TripQueue is
'Порядковый номер поездки'
/

comment on column tTripsLog.TripDistance is
'Расстояние поездки'
/

comment on column tTripsLog.TripName is
'Наименование поездки'
/

comment on column tTripsLog.TripNotes is
'Примечания'
/

/*==============================================================*/
/* Index: TripID2WBL_FK                                         */
/*==============================================================*/
create index TripID2WBL_FK on tTripsLog (
   WayBillID ASC
)
/

/*==============================================================*/
/* Table: tVehicles                                             */
/*==============================================================*/
create table tVehicles 
(
   VehicleID            NUMBER(12)           not null,
   VehicleName          VARCHAR2(255),
   VehicleNotes         VARCHAR2(1024),
   constraint PK_TVEHICLES primary key (VehicleID)
)
/

comment on table tVehicles is
'Транспорт предприятия'
/

comment on column tVehicles.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tVehicles.VehicleName is
'Наименование транспортного средства'
/

comment on column tVehicles.VehicleNotes is
'Примечания'
/

/*==============================================================*/
/* Table: tWayBillLog                                           */
/*==============================================================*/
create table tWayBillLog 
(
   WayBillID            NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   PersonID             NUMBER(12),
   WayBillDate          DATE,
   WayBillNotes         VARCHAR2(1024),
   constraint PK_TWAYBILLLOG primary key (WayBillID)
)
/

comment on table tWayBillLog is
'Журнал регистрации путевых листов'
/

comment on column tWayBillLog.WayBillID is
'Внутренний номер путевого листа'
/

comment on column tWayBillLog.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tWayBillLog.PersonID is
'Внутренний номер физического лица'
/

comment on column tWayBillLog.WayBillDate is
'Дата путевого листа автомобиля'
/

comment on column tWayBillLog.WayBillNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PersonID2WBL_FK                                       */
/*==============================================================*/
create index PersonID2WBL_FK on tWayBillLog (
   PersonID ASC
)
/

/*==============================================================*/
/* Index: VechicleID2WBL_FK                                     */
/*==============================================================*/
create index VechicleID2WBL_FK on tWayBillLog (
   VehicleID ASC
)
/

alter table tAssignements
   add constraint FK_PERSONID2A foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tAssignements
   add constraint FK_POSITIONID2A foreign key (PositionID)
      references tPositions (PositionID)
/

alter table tAssignements
   add constraint FK_VECHICLEID2A foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tBatteriesLog
   add constraint FK_VECHICLEID2BL foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tCarAccidentsLog
   add constraint FK_PERSONID2CAL foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tCarAccidentsLog
   add constraint FK_VECHICLEID2CAL foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tDepartments
   add constraint FK_PARENTDEPID foreign key (tDe_DepartmentID)
      references tDepartments (DepartmentID)
/

alter table tDriverLicensesLog
   add constraint FK_PERSONID2DLL foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tFinesLog
   add constraint FK_PERSONID2FIL foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tFinesLog
   add constraint FK_VECHICLEID2FIL foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tFuellingLog
   add constraint FK_VECHICLEID2FL foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tInspectionsLog
   add constraint FK_VECHICLEID2I foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tInsurancesLog
   add constraint FK_PERSONID2IL foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tInsurancesLog
   add constraint FK_VECHICLEID2IL foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tMedicalCertificatesLog
   add constraint FK_PERSONID2MCL foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tNormOrderDetailes
   add constraint FK_NORMORDERID2NOD foreign key (NormOrderID)
      references tNormOrders (NormOrderID)
/

alter table tNormOrderDetailes
   add constraint FK_VECHICLEID2NOD foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tParkings
   add constraint FK_VECHICLEID2P foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tPositions
   add constraint FK_DEPARTMENTID2A foreign key (DepartmentID)
      references tDepartments (DepartmentID)
/

alter table tRegSertificates
   add constraint FK_VECHICLEID2RS foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tTiresLog
   add constraint FK_VECHICLEID2TL foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tTripsLog
   add constraint FK_TRIPID2WBL foreign key (WayBillID)
      references tWayBillLog (WayBillID)
/

alter table tWayBillLog
   add constraint FK_PERSONID2WBL foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tWayBillLog
   add constraint FK_VECHICLEID2WBL foreign key (VehicleID)
      references tVehicles (VehicleID)
/


create or replace trigger tAssignements_bi_x before insert on tAssignements for each row
begin
  if :new.AssignementID
  is null then  
    select tAssignements_seq.nextval into :new.AssignementID
      from dual;
  end if;  
end;
/


create or replace trigger tBatteriesLog_bi_x before insert on tBatteriesLog for each row
begin
  if :new.BatteryMountID
  is null then  
    select tBatteriesLog_seq.nextval into :new.BatteryMountID
      from dual;
  end if;  
end;
/


create or replace trigger tCarAccidentsLog_bi_x before insert on tCarAccidentsLog for each row
begin
  if :new.CarAccidentID
  is null then  
    select tCarAccidentsLog_seq.nextval into :new.CarAccidentID
      from dual;
  end if;  
end;
/


create or replace trigger tDepartments_bi_x before insert on tDepartments for each row
begin
  if :new.DepartmentID
  is null then  
    select tDepartments_seq.nextval into :new.DepartmentID
      from dual;
  end if;  
end;
/


create or replace trigger tDriverLicensesLog_bi_x before insert on tDriverLicensesLog for each row
begin
  if :new.DriverLicenseID
  is null then  
    select tDriverLicensesLog_seq.nextval into :new.DriverLicenseID
      from dual;
  end if;  
end;
/


create or replace trigger tFinesLog_bi_x before insert on tFinesLog for each row
begin
  if :new.FineID
  is null then  
    select tFinesLog_seq.nextval into :new.FineID
      from dual;
  end if;  
end;
/


create or replace trigger tFuellingLog_bi_x before insert on tFuellingLog for each row
begin
  if :new.FuellingID
  is null then  
    select tFuellingLog_seq.nextval into :new.FuellingID
      from dual;
  end if;  
end;
/


create or replace trigger tInspectionsLog_bi_x before insert on tInspectionsLog for each row
begin
  if :new.InspectionID
  is null then  
    select tInspectionsLog_seq.nextval into :new.InspectionID
      from dual;
  end if;  
end;
/


create or replace trigger tInsurancesLog_bi_x before insert on tInsurancesLog for each row
begin
  if :new.InsuranceID
  is null then  
    select tInsurancesLog_seq.nextval into :new.InsuranceID
      from dual;
  end if;  
end;
/


create or replace trigger tMedicalCertificatesLog_bi_x before insert on tMedicalCertificatesLog for each row
begin
  if :new.MedicalCertificateID
  is null then  
    select tMedicalCertificatesLog_seq.nextval into :new.MedicalCertificateID
      from dual;
  end if;  
end;
/


create or replace trigger tNormOrderDetailes_bi_x before insert on tNormOrderDetailes for each row
begin
  if :new.DetailID
  is null then  
    select tNormOrderDetailes_seq.nextval into :new.DetailID
      from dual;
  end if;  
end;
/


create or replace trigger tNormOrders_bi_x before insert on tNormOrders for each row
begin
  if :new.NormOrderID
  is null then  
    select tNormOrders_seq.nextval into :new.NormOrderID
      from dual;
  end if;  
end;
/


create or replace trigger tParkings_bi_x before insert on tParkings for each row
begin
  if :new.ParkingID
  is null then  
    select tParkings_seq.nextval into :new.ParkingID
      from dual;
  end if;  
end;
/


create or replace trigger tPersons_bi_x before insert on tPersons for each row
begin
  if :new.PersonID
  is null then  
    select tPersons_seq.nextval into :new.PersonID
      from dual;
  end if;  
end;
/


create or replace trigger tPositions_bi_x before insert on tPositions for each row
begin
  if :new.PositionID
  is null then  
    select tPositions_seq.nextval into :new.PositionID
      from dual;
  end if;  
end;
/


create or replace trigger tRegSertificates_bi_x before insert on tRegSertificates for each row
begin
  if :new.RegSertificateID
  is null then  
    select tRegSertificates_seq.nextval into :new.RegSertificateID
      from dual;
  end if;  
end;
/


create or replace trigger tTiresLog_bi_x before insert on tTiresLog for each row
begin
  if :new.TiresMountID
  is null then  
    select tTiresLog_seq.nextval into :new.TiresMountID
      from dual;
  end if;  
end;
/


create or replace trigger tTripsLog_bi_x before insert on tTripsLog for each row
begin
  if :new.TripID
  is null then  
    select tTripsLog_seq.nextval into :new.TripID
      from dual;
  end if;  
end;
/


create or replace trigger tVehicles_bi_x before insert on tVehicles for each row
begin
  if :new.VehicleID
  is null then  
    select tVehicles_seq.nextval into :new.VehicleID
      from dual;
  end if;  
end;
/


create or replace trigger tWayBillLog_bi_x before insert on tWayBillLog for each row
begin
  if :new.WayBillID
  is null then  
    select tWayBillLog_seq.nextval into :new.WayBillID
      from dual;
  end if;  
end;
/

