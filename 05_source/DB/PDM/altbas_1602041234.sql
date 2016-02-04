/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     04.02.2016 12:35:29                          */
/*==============================================================*/


alter table tAssignements
   drop primary key cascade
/

drop table tAssignements cascade constraints
/

drop table tDriverLicensesLog cascade constraints
/

drop table tMedicalCertificatesLog cascade constraints
/

/*==============================================================*/
/* Table: tAssignments                                          */
/*==============================================================*/
create table tAssignments 
(
   AssignmentID         NUMBER(12)           not null,
   PositionID           NUMBER(12),
   VehicleID            NUMBER(12),
   PersonID             NUMBER(12),
   AssignmentDate       DATE,
   AssignmentNotes      VARCHAR2(1024),
   constraint PK_TASSIGNMENTS primary key (AssignmentID)
)
/

comment on table tAssignments is
'Назначения сотрудников на должности и закрепление за ними автомобилей.'
/

comment on column tAssignments.AssignmentID is
'Внутренний номер назначения'
/

comment on column tAssignments.PositionID is
'Внутренний номер должности'
/

comment on column tAssignments.VehicleID is
'Внутренний номер транспортного средства'
/

comment on column tAssignments.PersonID is
'Внутренний номер физического лица'
/

comment on column tAssignments.AssignmentDate is
'Дата назначения на должность или закрепления автомобиля'
/

comment on column tAssignments.AssignmentNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PositionID2A_FK                                       */
/*==============================================================*/
create index PositionID2A_FK on tAssignments (
   PositionID ASC
)
/

/*==============================================================*/
/* Index: PersonID2A_FK                                         */
/*==============================================================*/
create index PersonID2A_FK on tAssignments (
   PersonID ASC
)
/

/*==============================================================*/
/* Index: VechicleID2A_FK                                       */
/*==============================================================*/
create index VechicleID2A_FK on tAssignments (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tDriverLicensesLog                                    */
/*==============================================================*/
create table tDriverLicensesLog 
(
   DriverLicenseID      NUMBER(12)           not null,
   PersonID             NUMBER(12),
   DriverLicenseStartDate DATE,
   DriverLicenseEndDate DATE,
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

comment on column tDriverLicensesLog.DriverLicenseStartDate is
'Дата выдачи водительского удостоверения'
/

comment on column tDriverLicensesLog.DriverLicenseEndDate is
'Дата окончания действия водительского удостоверения'
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
/* Table: tMedicalCertificatesLog                               */
/*==============================================================*/
create table tMedicalCertificatesLog 
(
   MedicalCertificateID NUMBER(12)           not null,
   PersonID             NUMBER(12),
   MedicalCertificateStartDate DATE,
   MedicalCertificateEndDate DATE,
   MedicalCertificateNotes VARCHAR2(1024),
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

comment on column tMedicalCertificatesLog.MedicalCertificateStartDate is
'Дата выдачи медицинской справки'
/

comment on column tMedicalCertificatesLog.MedicalCertificateEndDate is
'Дата окончания действия медицинской справки'
/

comment on column tMedicalCertificatesLog.MedicalCertificateNotes is
'Примечания'
/

/*==============================================================*/
/* Index: PersonID2MCL_FK                                       */
/*==============================================================*/
create index PersonID2MCL_FK on tMedicalCertificatesLog (
   PersonID ASC
)
/

alter table tAssignments
   add constraint FK_PERSONID2A foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tAssignments
   add constraint FK_POSITIONID2A foreign key (PositionID)
      references tPositions (PositionID)
/

alter table tAssignments
   add constraint FK_VECHICLEID2A foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tDriverLicensesLog
   add constraint FK_PERSONID2DLL foreign key (PersonID)
      references tPersons (PersonID)
/

alter table tMedicalCertificatesLog
   add constraint FK_PERSONID2MCL foreign key (PersonID)
      references tPersons (PersonID)
/


create or replace trigger tAssignments_bi_x before insert on tAssignments for each row
begin
  if :new.AssignmentID
  is null then  
    select tAssignments_seq.nextval into :new.AssignmentID
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


create or replace trigger tMedicalCertificatesLog_bi_x before insert on tMedicalCertificatesLog for each row
begin
  if :new.MedicalCertificateID
  is null then  
    select tMedicalCertificatesLog_seq.nextval into :new.MedicalCertificateID
      from dual;
  end if;  
end;
/

