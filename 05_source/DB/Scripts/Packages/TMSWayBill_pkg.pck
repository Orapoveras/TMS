create or replace package TMSWayBill_pkg is

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
