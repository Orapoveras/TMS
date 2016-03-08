/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     16.02.2016 11:53:11                          */
/*==============================================================*/


create sequence tBreakageServiceLog_seq
/

create sequence tMileageServiceLog_seq
/

/*==============================================================*/
/* Table: tBreakageServiceLog                                   */
/*==============================================================*/
create table tBreakageServiceLog 
(
   BreakageServID       NUMBER(12)           not null,
   VehicleID            NUMBER(12),
   BreakageServDate     DATE,
   BreakageName         VARCHAR(255),
   BreakageServCost     NUMBER(12,4),
   BreakageServNotes    VARCHAR(1024),
   constraint PK_TBREAKAGESERVICELOG primary key (BreakageServID)
)
/

comment on table tBreakageServiceLog is
'Журнал регистрации обслуживания поломок автомобиля'
/

comment on column tBreakageServiceLog.BreakageServID is
'ID обслуживания'
/

comment on column tBreakageServiceLog.VehicleID is
'ID автомобиля'
/

comment on column tBreakageServiceLog.BreakageServDate is
'Дата обслуживания'
/

comment on column tBreakageServiceLog.BreakageName is
'Наименование поломки'
/

comment on column tBreakageServiceLog.BreakageServCost is
'Стоимость обслуживания'
/

comment on column tBreakageServiceLog.BreakageServNotes is
'Примечание'
/

/*==============================================================*/
/* Index: VehicleID2BSL_FK                                      */
/*==============================================================*/
create index VehicleID2BSL_FK on tBreakageServiceLog (
   VehicleID ASC
)
/

/*==============================================================*/
/* Table: tMileageServiceLog                                    */
/*==============================================================*/
create table tMileageServiceLog 
(
   MileageServID        Number(12)           not null,
   VehicleID            NUMBER(12),
   MileageServDate      DATE,
   NextMileageServDate  DATE,
   CurrMileage          NUMBER(12),
   IntervalMileage      NUMBER(12),
   MileageServCost      NUMBER(12,4),
   MileageServNotes     VARCHAR(1024),
   constraint PK_TMILEAGESERVICELOG primary key (MileageServID)
)
/

comment on table tMileageServiceLog is
'Журнал регистрации обслуживания автомобиля по пробегу'
/

comment on column tMileageServiceLog.MileageServID is
'ID обслуживания'
/

comment on column tMileageServiceLog.VehicleID is
'ID автомобиля'
/

comment on column tMileageServiceLog.MileageServDate is
'Дата обслуживания'
/

comment on column tMileageServiceLog.NextMileageServDate is
'Запланированная дата следующего обслуживания'
/

comment on column tMileageServiceLog.CurrMileage is
'Текущий пробег'
/

comment on column tMileageServiceLog.IntervalMileage is
'Межинтервальный пробег'
/

comment on column tMileageServiceLog.MileageServCost is
'Стоимость обслуживания'
/

comment on column tMileageServiceLog.MileageServNotes is
'Примечание'
/

/*==============================================================*/
/* Index: VehicleID2MSL_FK                                      */
/*==============================================================*/
create index VehicleID2MSL_FK on tMileageServiceLog (
   VehicleID ASC
)
/

alter table tBreakageServiceLog
   add constraint FK_VEHICLEID2BSL foreign key (VehicleID)
      references tVehicles (VehicleID)
/

alter table tMileageServiceLog
   add constraint FK_VEHICLEID2MSL foreign key (VehicleID)
      references tVehicles (VehicleID)
/


create or replace trigger tBreakageServiceLog_bi_x before insert on tBreakageServiceLog for each row
begin
  if :new.BreakageServID
  is null then  
    select tBreakageServiceLog_seq.nextval into :new.BreakageServID
      from dual;
  end if;  
end;
/


create or replace trigger tMileageServiceLog_bi_x before insert on tMileageServiceLog for each row
begin
  if :new.MileageServID
  is null then  
    select tMileageServiceLog_seq.nextval into :new.MileageServID
      from dual;
  end if;  
end;
/

