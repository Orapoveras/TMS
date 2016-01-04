PL/SQL Developer Test script 3.0
34
DECLARE
  c UTL_SMTP.CONNECTION;
 
  PROCEDURE send_header(name IN VARCHAR2, header IN VARCHAR2) AS
  BEGIN
    UTL_SMTP.WRITE_DATA(c, name || ': ' || header || UTL_TCP.CRLF);
  END;
 
BEGIN
  c := UTL_SMTP.OPEN_CONNECTION('mail.softclub.by');
  UTL_SMTP.HELO(c, 'b-logic.by');
  UTL_SMTP.MAIL(c, 'apex@b-logic.by');
  UTL_SMTP.RCPT(c, 'ihar.piatrenka@b-logic.by');
  UTL_SMTP.OPEN_DATA(c);
  send_header('From',    '<scassets/cenTOS-ORCL@orcl>');
  send_header('To',      '<ihar.piatrenka@b-logic.by>');
  send_header('Subject', 'Hello v2');
  UTL_SMTP.WRITE_DATA(c, UTL_TCP.CRLF || 'Hello, world! Как слышно, прием');
  UTL_SMTP.CLOSE_DATA(c);
  UTL_SMTP.QUIT(c);
EXCEPTION
  WHEN utl_smtp.transient_error OR utl_smtp.permanent_error THEN
    BEGIN
      UTL_SMTP.QUIT(c);
    EXCEPTION
      WHEN UTL_SMTP.TRANSIENT_ERROR OR UTL_SMTP.PERMANENT_ERROR THEN
        raise_application_error(-20001, 'Failed to send mail due to the following error: ' || sqlerrm);
        --NULL; -- When the SMTP server is down or unavailable, we don't have
              -- a connection to the server. The QUIT call will raise an
              -- exception that we can ignore.
    END;
    raise_application_error(-20000,
      'Failed to send mail due to the following error: ' || sqlerrm);
END;
0
0
