create view VTTRIPSLOG as 
select TRIPID,
       WAYBILLID,
       TRIPQUEUE,
       TRIPDISTANCE,
       TRIPNAME,
       TRIPNOTES
  from TTRIPSLOG
