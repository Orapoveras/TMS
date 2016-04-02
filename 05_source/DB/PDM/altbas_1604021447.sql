/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     02/04/2016 14:50:40                          */
/*==============================================================*/


alter table tTripsLog
   drop constraint FK_TRIPID2WBL
/

drop index TripID2WBL_FK
/

alter table tTripsLog
   drop primary key cascade
/

drop table tmp_tTripsLog cascade constraints
/

rename tTripsLog to tmp_tTripsLog
/

alter table tDriverLicensesLog add DriverLicenseNum VARCHAR2(255)
/

comment on column tDriverLicensesLog.DriverLicenseNum is
'Серия и номер водительского удостоверения'
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
   TripName             VARCHAR2(255),
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

--WARNING: The following insert order will not restore columns: TripName (допилено вручную)
insert into tTripsLog (TripID, WayBillID, TripQueue, TripDistance, TripNotes, Tripname)
select TripID, WayBillID, TripQueue, TripDistance, TripNotes, dbms_lob.substr(tripname, 255, 1)
from tmp_tTripsLog 
/

--WARNING: Drop cancelled because columns cannot be restored: TripName
--drop table tmp_tTripsLog cascade constraints
--/
/*==============================================================*/
/* Index: TripID2WBL_FK                                         */
/*==============================================================*/
create index TripID2WBL_FK on tTripsLog (
   WayBillID ASC
)
/

alter table tVehicles add VehicleRegNum VARCHAR2(255)
/

comment on column tVehicles.VehicleRegNum is
'Регистрационный номер'
/

alter table tVehicles add GAIRegDivision VARCHAR2(255)
/

comment on column tVehicles.GAIRegDivision is
'Регистрационное подразделение ГАИ'
/

alter table tVehicles add ProcessOperation VARCHAR2(255)
/

comment on column tVehicles.ProcessOperation is
'Технологическая операция'
/

alter table tVehicles add VehicleModel VARCHAR2(255)
/

comment on column tVehicles.VehicleModel is
'Технические данные: марка, модель'
/

alter table tVehicles add IssueYear VARCHAR2(255)
/

comment on column tVehicles.IssueYear is
'Год выпуска'
/

alter table tVehicles add ShassisNum VARCHAR2(255)
/

comment on column tVehicles.ShassisNum is
'Номер кузова'
/

alter table tVehicles add ShassisNum2 VARCHAR2(255)
/

comment on column tVehicles.ShassisNum2 is
'Номер рамы'
/

alter table tVehicles add ShassisNum3 VARCHAR2(255)
/

comment on column tVehicles.ShassisNum3 is
'Номер шасси'
/

alter table tVehicles add VehicleColor VARCHAR2(255)
/

comment on column tVehicles.VehicleColor is
'Цвет'
/

alter table tVehicles add RegCertSeries VARCHAR2(255)
/

comment on column tVehicles.RegCertSeries is
'Свидетельство о регистрации: серия'
/

alter table tVehicles add RegCertNum VARCHAR2(255)
/

comment on column tVehicles.RegCertNum is
'Свидетельство о регистрации: номер'
/

alter table tVehicles add DocName VARCHAR2(255)
/

comment on column tVehicles.DocName is
'Документ подтверждающий законность приобретения'
/

alter table tVehicles add DocSeria VARCHAR2(255)
/

comment on column tVehicles.DocSeria is
'Серия документа'
/

alter table tVehicles add DocNum VARCHAR2(255)
/

comment on column tVehicles.DocNum is
'Номер документа'
/

alter table tVehicles add TechInspectResult VARCHAR2(255)
/

comment on column tVehicles.TechInspectResult is
'Результат технического осмотра'
/

alter table tVehicles add TechInspectYear VARCHAR2(255)
/

comment on column tVehicles.TechInspectYear is
'Год технического осмотра'
/

alter table tVehicles add PrevVehicleRegNum VARCHAR2(255)
/

comment on column tVehicles.PrevVehicleRegNum is
'Прежний регистрационный знак'
/

alter table tVehicles add VehicleRegDate DATE
/

comment on column tVehicles.VehicleRegDate is
'Дата регистрации'
/

alter table tVehicles add VehicleOwnerName VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerName is
'Наименование владельца'
/

alter table tVehicles add VehicleOwnerBirthDate DATE
/

comment on column tVehicles.VehicleOwnerBirthDate is
'Дата рождения владельца'
/

alter table tVehicles add VehicleOwnerDocName VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerDocName is
'Наименование документа'
/

alter table tVehicles add VehicleOwnerDocSeries VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerDocSeries is
'Серия документа владельца'
/

alter table tVehicles add VehicleOwnerDocNum VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerDocNum is
'Номер документа владельца'
/

alter table tVehicles add VehicleOwnerDocIssued VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerDocIssued is
'Кем выдан документ владельца'
/

alter table tVehicles add VehicleOwnerAddr VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerAddr is
'Адрес: область'
/

alter table tVehicles add VehicleOwnerAddr2 VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerAddr2 is
'Адрес: район'
/

alter table tVehicles add VehicleOwnerAddr3 VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerAddr3 is
'Адрес: населенный пункт'
/

alter table tVehicles add VehicleOwnerAddr4 VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerAddr4 is
'Адрес: улица'
/

alter table tVehicles add VehicleOwnerAddr5 VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerAddr5 is
'Адрес: дом'
/

alter table tVehicles add VehicleOwnerAddr6 VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerAddr6 is
'Адрес: корпус'
/

alter table tVehicles add VehicleOwnerAddr7 VARCHAR2(255)
/

comment on column tVehicles.VehicleOwnerAddr7 is
'Адрес: квартира'
/

alter table tVehicles add VehicleSpecialMarks VARCHAR2(255)
/

comment on column tVehicles.VehicleSpecialMarks is
'Особые отметки'
/

alter table tTripsLog
   add constraint FK_TRIPID2WBL foreign key (WayBillID)
      references tWayBillLog (WayBillID)
/

-- WARNING Тоже допилено вручную, чтобы удалить его из только что созданной временной таблицы
drop trigger tTripsLog_bi_x
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

