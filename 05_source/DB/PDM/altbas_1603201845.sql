/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     20/03/2016 19:20:28                          */
/*==============================================================*/


create sequence tFuelTypesRef_seq
/

create sequence tIniRef_seq
/

create sequence tPaymentTypesRef_seq
/

/*==============================================================*/
/* Table: tFuelTypesRef                                         */
/*==============================================================*/
create table tFuelTypesRef 
(
   FuelTypeID           NUMBER(12)           not null,
   FuelTypeName         VARCHAR(255),
   FuelTypeNotes        VARCHAR(255),
   constraint PK_TFUELTYPESREF primary key (FuelTypeID)
)
/

comment on table tFuelTypesRef is
'Справочник марок топлива'
/

comment on column tFuelTypesRef.FuelTypeID is
'Внутренний номер марки топлива'
/

comment on column tFuelTypesRef.FuelTypeName is
'Марка топлива'
/

comment on column tFuelTypesRef.FuelTypeNotes is
'Примечания'
/

alter table tFuellingLog add FuelVolume NUMBER(12)
/

comment on column tFuellingLog.FuelVolume is
'Заправлено литров'
/

alter table tFuellingLog add FuelTypeID NUMBER(12)
/

comment on column tFuellingLog.FuelTypeID is
'Внутренний номер марки топлива'
/

alter table tFuellingLog add FuelPrice NUMBER(22,2)
/

comment on column tFuellingLog.FuelPrice is
'Стоимость литра'
/

alter table tFuellingLog add FuelTotal NUMBER(22,2)
/

comment on column tFuellingLog.FuelTotal is
'Стоимость заправки'
/

alter table tFuellingLog add PaymentTypeID NUMBER(12)
/

comment on column tFuellingLog.PaymentTypeID is
'Внутренний номер способа оплаты'
/

/*==============================================================*/
/* Table: tIniRef                                               */
/*==============================================================*/
create table tIniRef 
(
   IsRem                NUMBER(1),
   IniID                NUMBER(12)           not null,
   IniName              VARCHAR2(50),
   IniValue             VARCHAR2(255),
   IniSection           NUMBER(12),
   IniNotes             VARCHAR2(255),
   BranchID             NUMBER(12)           not null,
   AppID                NUMBER(12),
   OldDBID              NUMBER(12),
   OldID                NUMBER(12),
   GUID                 NUMBER(12),
   constraint PK_TINIREF primary key (IniID)
)
/

comment on table tIniRef is
'Параметры настройки приложения'
/

comment on column tIniRef.IsRem is
'Признак комментария'
/

comment on column tIniRef.IniID is
'Внутренний номер параметра настройки'
/

comment on column tIniRef.IniName is
'Идентификатор параметра настройки'
/

comment on column tIniRef.IniValue is
'Значение параметра настройки'
/

comment on column tIniRef.IniSection is
'Раздел пораметра настройки'
/

comment on column tIniRef.IniNotes is
'Примечания'
/

comment on column tIniRef.BranchID is
'Внутренний номер филиала'
/

comment on column tIniRef.AppID is
'Внутренний  номер приложения'
/

comment on column tIniRef.OldDBID is
'Внутренний номер унаследованой бд'
/

comment on column tIniRef.OldID is
'Внутренний номер первичного ключа унаследованной бд'
/

comment on column tIniRef.GUID is
'Унифицированный внутренний номер записи'
/

/*==============================================================*/
/* Table: tPaymentTypesRef                                      */
/*==============================================================*/
create table tPaymentTypesRef 
(
   PaymentTypeID        NUMBER(12)           not null,
   PaymentTypeName      VARCHAR(255),
   PaymentTypeNotes     VARCHAR(255),
   constraint PK_TPAYMENTTYPESREF primary key (PaymentTypeID)
)
/

comment on table tPaymentTypesRef is
'Справочник способов оплаты'
/

comment on column tPaymentTypesRef.PaymentTypeID is
'Внутренний номер способа оплаты'
/

comment on column tPaymentTypesRef.PaymentTypeName is
'Способ оплаты'
/

comment on column tPaymentTypesRef.PaymentTypeNotes is
'Примечания способа оплаты'
/

alter table tFuellingLog
   add constraint FK_FUELTYPEID2FT foreign key (FuelTypeID)
      references tFuelTypesRef (FuelTypeID)
/

alter table tFuellingLog
   add constraint FK_PAYMENTTYPEID2PT foreign key (PaymentTypeID)
      references tPaymentTypesRef (PaymentTypeID)
/


create or replace trigger tFuelTypesRef_bi_x before insert on tFuelTypesRef for each row
begin
  if :new.FuelTypeID
  is null then  
    select tFuelTypesRef_seq.nextval into :new.FuelTypeID
      from dual;
  end if;  
end;
/


create or replace trigger tIniRef_bi_x before insert on tIniRef for each row
begin
  if :new.IniID
  is null then  
    select tIniRef_seq.nextval into :new.IniID
      from dual;
  end if;  
end;
/


create or replace trigger tPaymentTypesRef_bi_x before insert on tPaymentTypesRef for each row
begin
  if :new.PaymentTypeID
  is null then  
    select tPaymentTypesRef_seq.nextval into :new.PaymentTypeID
      from dual;
  end if;  
end;
/

