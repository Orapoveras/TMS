create or replace package TMSVehicle_pkg is

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
