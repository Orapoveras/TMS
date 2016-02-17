create or replace package TMSAppCommon_pkg is

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
