PL/SQL Developer Test script 3.0
15
-- Created on 21/07/2010 by PIT 
declare 
  -- Local variables here
    cursor c is select * from  all_synonyms  where table_owner = 'SCASSETS';
begin
  -- Test statements here
  for r in c loop
    begin
      execute immediate 'drop public synonym '||r.synonym_name;
    exception
      when others then null;
    end;
  end loop;
 
end;
0
0
