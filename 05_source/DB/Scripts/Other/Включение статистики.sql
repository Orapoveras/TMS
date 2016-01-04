-- под учетной записью sys на указанной БД выполнить команды:

grant select on v_$session to public;
grant select on v_$sesstat to public;
grant select on v_$statname to public;
grant select on v_$mystat to public;

-- Можно public заменить на scassets

 

