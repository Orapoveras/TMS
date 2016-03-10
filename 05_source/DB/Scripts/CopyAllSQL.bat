@echo off
echo ------------------------------------------------------>AllSQL.sql
echo -- Все функции, процедуры и триггеры для SCAssets   -->>Allsql.sql
echo ------------------------------------------------------>>Allsql.sql
for /R Functions %%i in (*.fnc, *.sql, *.trg, *.prc) do type "%%i" >> Allsql.sql
for /R Procedures %%i in (*.fnc, *.sql, *.trg, *.prc) do type "%%i" >> Allsql.sql
for /R Views %%i in (*.fnc, *.sql, *.trg, *.prc) do call AddFile.bat "%%i"
for /R Packages %%i in (*.pck, *.spc, *.bdy, *.sql) do call AddFile.bat "%%i"
for /R Triggers %%i in (*.fnc, *.sql, *.trg, *.prc) do type "%%i" >> Allsql.sql
echo ------------------------------------------------------>Allsql_add.sql
echo -- Дополнительный скрипт обновления БД              -->>Allsql_add.sql
echo ------------------------------------------------------>>Allsql_add.sql
rem type Other\alter_add.sql>>Allsql_add.sql
pause

