PL/SQL Developer Test script 3.0
29
declare
  message_body varchar2(2000);
  crlf varchar(2) := chr(13) || chr (10);
begin
  
  message_body := message_body || 'declare ' || crlf;
  message_body := message_body || '  message_body varchar2(2000);' || crlf;
  message_body := message_body || '  crlf varchar(2) := chr(13) || chr (10);' || crlf || crlf;
  message_body := message_body || 'begin' || crlf;
  message_body := message_body || '  ' || crlf;
  message_body := message_body || '  message_body := message_body || ''declare'' || crlf' || crlf;
  message_body := message_body || '  ' || crlf;
  message_body := message_body || '  utl_mail.send(' || crlf;
  message_body := message_body || '  sender     => ''ihar.piatrenka@b-logic.by'',' || crlf;
  message_body := message_body || '  recipients => ''ihar.piatrenka@b-logic.by'',' || crlf;
  message_body := message_body || '     subject => ''Тестовое сообщение с помощью процедуры pl/sql'',' || crlf;
  message_body := message_body || '     message => message_body,' || crlf;
  message_body := message_body || '   mime_type => ''text; charset=utf8''' || crlf;
  message_body := message_body || '  );' || crlf;
  message_body := message_body || 'end;' || crlf;
  
  utl_mail.send(
  sender     => 'apex/cenTOS-ORCL@b-logic.by',
  recipients => 'ihar.piatrenka@b-logic.by',
     subject => 'Тестовое сообщение с помощью процедуры pl/sql v3',
     message => message_body,
   mime_type => 'text; charset=utf8'
  );
end;
0
0
