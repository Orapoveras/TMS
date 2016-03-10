------------------------------------------------------
-- ��� �������, ��������� � �������� ��� SCAssets   --
------------------------------------------------------
﻿create view VTTRIPSLOG as 
select TRIPID,
       WAYBILLID,
       TRIPQUEUE,
       TRIPDISTANCE,
       TRIPNAME,
       TRIPNOTES
  from TTRIPSLOG
 
/ 
﻿create or replace package TMSAppCommon_pkg is

  -- Author  : PIT
  -- Created : 27/01/2016 13:42:21
  -- Purpose : Not specific applied functionality of TMS
  
  -- Public type declarations
  -- type <TypeName> is <Datatype>;
  
  -- Public constant declarations
  -- <ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  -- <VariableName> <Datatype>;

  -- Public function and procedure declarations
  -- function <FunctionName>(<Parameter> <Datatype>) return <Datatype>;

  -- Рассчитать расход топлива по автомобилю за период
  procedure CalcFuelConsumtion (aVehicleID in number, aFromDate in Date, aToDate in Date);

end TMSAppCommon_pkg;
/
create or replace package body TMSAppCommon_pkg is

  -- Private type declarations
  --type <TypeName> is <Datatype>;
  
  -- Private constant declarations
  --<ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  --<VariableName> <Datatype>;

  -- Function and procedure implementations
  --function <FunctionName>(<Parameter> <Datatype>) return <Datatype> is
  --  <LocalVariable> <Datatype>;
  --begin
  --  <Statement>;
  --  return(<Result>);
  --end;

  -- Рассчитать расход топлива по автомобилю за период
  procedure CalcFuelConsumtion (aVehicleID in number, aFromDate in Date, aToDate in Date)
  is
  begin
    NULL;
  end CalcFuelConsumtion;

end TMSAppCommon_pkg;
/
 
/ 
﻿create or replace package TMSPerson_pkg is

  -- Author  : PIT
  -- Created : 01/03/2016 14:13:38
  -- Purpose : All rules for using entity Persons
  
  -- Public type declarations
  type tPersons_aat is table of tPersons%rowtype index by pls_integer;
  
  subtype fullname_t is varchar2(10000);
  
  -- Public constant declarations
  -- <ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  -- <VariableName> <Datatype>;

  -- Public function and procedure declarations
  function fullname(aName tPersons.name%type,
                    aSurname tPersons.Surname%type) return fullname_t;

  function fullname(aPersonID tPersons.Personid%type) return fullname_t;

end TMSPerson_pkg;
/
create or replace package body TMSPerson_pkg is

  -- Private type declarations
  -- type <TypeName> is <Datatype>;
  
  -- Private constant declarations
  -- <ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  vFullname TMSPERSON_PKG.fullname_t;

  -- Function and procedure implementations
  -- Public function and procedure declarations

  function fullname(aName tPersons.name%type,
                    aSurname tPersons.surname%type) return fullname_t is
  begin
    return aName || ' ' || aSurname;
  end;

  function fullname(aPersonID tPersons.Personid%type) return fullname_t is
  begin
    vFullname :=  aPersonID;
    select fullname(v.name, v.surname) into vFullname
      from tPersons v
     where v.Personid = aPersonID;
    return vFullname;
  end;

begin
  null;
end TMSPerson_pkg;
/
 
/ 
﻿create or replace package TMSVehicle_pkg is

  -- Author  : PIT
  -- Created : 01/03/2016 14:13:38
  -- Purpose : All rules for using entity Vehicles
  
  -- Public type declarations
  type tvehicles_aat is table of tvehicles%rowtype index by pls_integer;
  
  subtype fullname_t is varchar2(10000);
  
  -- Public constant declarations
  -- <ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  -- <VariableName> <Datatype>;

  -- Public function and procedure declarations
  function fullname(aVehicleName tvehicles.vehiclename%type,
                    aVehicleNotes tvehicles.vehiclenotes%type) return fullname_t;

  function fullname(aVehicleID tvehicles.vehicleid%type) return fullname_t;

end TMSVehicle_pkg;
/
create or replace package body TMSVehicle_pkg is

  -- Private type declarations
  -- type <TypeName> is <Datatype>;
  
  -- Private constant declarations
  -- <ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  vFullname TMSVEHICLE_PKG.fullname_t;

  -- Function and procedure implementations
  -- Public function and procedure declarations

  function fullname(aVehicleName tvehicles.vehiclename%type,
                    aVehicleNotes tvehicles.vehiclenotes%type) return fullname_t is
  begin
    return aVehicleName || '(' || substr(aVehicleNotes, 1, 20) || ')';
  end;

  function fullname(aVehicleID tvehicles.vehicleid%type) return fullname_t is
  begin
    vFullname :=  aVehicleID;
    select fullname(v.vehiclename, v.vehiclenotes) into vFullname
      from tVehicles v
     where v.vehicleid = aVehicleID;
    return vFullname;
  end;

begin
  null;
end TMSVehicle_pkg;
/
 
/ 
﻿create or replace package TMSWayBill_pkg is

  -- Author  : PIT
  -- Created : 01/03/2016 14:13:38
  -- Purpose : All rules for using entity WayBills
  
  -- Public type declarations
  type twaybilllog_aat is table of twaybilllog%rowtype index by pls_integer;
  
  subtype fullname_t is varchar2(10000);
  
  -- Public constant declarations
  -- <ConstantName> constant <Datatype> := <Value>;

  -- Public variable declarations
  -- <VariableName> <Datatype>;

  -- Public function and procedure declarations
  function fullname(aDate twaybilllog.waybilldate%type,
                    aVehicleID twaybilllog.vehicleid%type,
                    aPersonID twaybilllog.personid%type
                   ) return fullname_t;

end TMSWayBill_pkg;
/
create or replace package body TMSWayBill_pkg is

  -- Private type declarations
  -- type <TypeName> is <Datatype>;
  
  -- Private constant declarations
  -- <ConstantName> constant <Datatype> := <Value>;

  -- Private variable declarations
  vFullname TMSWAYBILL_PKG.fullname_t;

  -- Function and procedure implementations
  -- Public function and procedure declarations
  function fullname(aDate twaybilllog.waybilldate%type,
                    aVehicleID twaybilllog.vehicleid%type,
                    aPersonID twaybilllog.personid%type
                   ) return fullname_t is
    -- <LocalVariable> <Datatype>;
  begin
    -- <Statement>;
    vFullname := to_char(aDate) || ': ' || tmsVehicle_pkg.fullname(aVehicleID) ||': ' || tmsPerson_pkg.fullname(aPersonID);
    return(vFullname);
  end;

begin
  -- Initialization
  -- <Statement>;
  null;
end TMSWayBill_pkg;
/
 
/ 
