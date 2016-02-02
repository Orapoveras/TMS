/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     02/02/2016 10:52:56                          */
/*==============================================================*/


drop trigger tDepartments_bi_x
/

alter table tDepartments 
   rename column DepartmentID to DepID
/

alter table tDepartments 
   rename column tDe_DepartmentID to ParentDepID
/

comment on column tDepartments.ParentDepID is
'Внутренний номер головного подразделения'
/

alter table tPositions 
   rename column DepartmentID to DepID
/


create or replace trigger tDepartments_bi_x before insert on tDepartments for each row
begin
  if :new.DepID
  is null then  
    select tDepartments_seq.nextval into :new.DepID
      from dual;
  end if;  
end;
/

