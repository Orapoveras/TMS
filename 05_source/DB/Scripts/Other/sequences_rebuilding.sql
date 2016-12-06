-- Created on 11/02/2009 by PIT 
-- Пересоздание последовательностей после импорта данных в пользовательские таблицы

declare 
  -- Local variables here
  i integer;
  type TCursor is ref cursor;
  vCur TCursor;

begin
  for r in (select * from user_cons_columns cc where cc.constraint_name like 'PK%'
  and cc.table_name not like 'TDATAAUDIT%'
  /*and cc.table_name like 'TIAG%'*/
  ) loop
    open vCur for 'select max(' || r.column_name|| ') from '|| r.table_name;
    fetch vCur into i; 
    if nvl(i,0) > 0 then
      -- execute immediate 'drop sequence '|| r.table_name || '_SEQ'; 
      -- execute immediate 'create sequence '|| r.table_name || '_SEQ' || ' start with ' || to_char(i+1); 

      dbms_output.put_line ('drop sequence '|| r.table_name || '_SEQ;'); 
      dbms_output.put_line ('create sequence '|| r.table_name || '_SEQ' || ' start with ' || to_char(i+1) || ';'); 

    end if;
    --dbms_output.put_line('i='|| i);  
  end loop;
  
end;
