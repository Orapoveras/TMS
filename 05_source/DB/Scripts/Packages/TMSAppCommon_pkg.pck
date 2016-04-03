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

  -- Given a set of word delimiters, return number of words in S
  function WordCount (aStr in varchar2, aWordDelims in varchar2) return number;

  -- Given a set of word delimiters, return the N'th word in S
  Function ExtractWord(aN in number, aStr in varchar2, aWordDelims in varchar2) return varchar2;


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

  -- Given a set of word delimiters, return number of words in S
  function WordCount (aStr in varchar2, aWordDelims in varchar2) return number is
    return_value number;
  begin
    select nvl(regexp_count(aStr, '[^' || nvl(aWordDelims, ' ') || ']+'), 0) into return_value from dual;
    return return_value;
  end WordCount;

  -- Given a set of word delimiters, return the N'th word in S
  Function ExtractWord(aN in number, aStr in varchar2, aWordDelims in varchar2) return varchar2 is
    return_value varchar2(32767);
  begin
    if aN > 0 then
      select regexp_substr(aStr, '[^' || nvl(aWordDelims, ' ') || ']+', 1, aN) into return_value from dual;
    end if;
    return return_value;
  end ExtractWord;

end TMSAppCommon_pkg;
/
