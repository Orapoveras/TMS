create or replace package TMSPerson_pkg is

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
  function fullname(aPersonName tPersons.Personname%type,
                    aPersonNotes tPersons.Personnotes%type) return fullname_t;

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

  function fullname(aPersonName tPersons.Personname%type,
                    aPersonNotes tPersons.Personnotes%type) return fullname_t is
  begin
    return aPersonName || '(' || substr(aPersonNotes, 1, 20) || ')';
  end;

  function fullname(aPersonID tPersons.Personid%type) return fullname_t is
  begin
    vFullname :=  aPersonID;
    select fullname(v.Personname, v.Personnotes) into vFullname
      from tPersons v
     where v.Personid = aPersonID;
    return vFullname;
  end;

begin
  null;
end TMSPerson_pkg;
/
