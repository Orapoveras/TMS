PL/SQL Developer Test script 3.0
41
DECLARE
  lv_server      VARCHAR2(255) := 'mail.softclub.by';
  lv_rcpt        VARCHAR2(255) := 'ihar.piatrenka@b-logic.by';
  lv_from        VARCHAR2(255) := 'scassets/cenTOS-ORCL@b-logic.by';
  lv_subject     VARCHAR2(255) := 'This is subject, Ёто заголовок';
  lv_message     VARCHAR2(255) := 'Ќе вопрос, в теле сообщени€ все по-русски';
  lv_conn        UTL_SMTP.CONNECTION;

  CHAR_SET constant varchar(200) := 'Content-Type: text/html;charset=UTF-8' ||UTL_TCP.CRLF;
  MIME_VERSION constant varchar(200) := 'MIME-version: 1.0' || UTL_TCP.CRLF;
  CONT_ENCODING constant varchar(200) := 'Content-Transfer-Encoding: quoted-printable ' ||UTL_TCP.CRLF;

BEGIN
  lv_Conn := UTL_SMTP.Open_Connection(lv_server);
  UTL_SMTP.Helo(lv_conn, lv_server);
  UTL_SMTP.Mail(lv_conn, lv_from);
  UTL_SMTP.Rcpt(lv_conn, lv_rcpt);
  UTL_SMTP.OPEN_DATA(lv_conn);

  -- ¬се четыре закомментированные ниже строчки не работают
  -- UTL_SMTP.WRITE_DATA(lv_conn, 'Subject: ' ||  lv_subject || UTL_TCP.CRLF);
  -- UTL_SMTP.WRITE_RAW_DATA(lv_conn, UTL_ENCODE.QUOTED_PRINTABLE_ENCODE(UTL_RAW.CAST_TO_RAW('Subject: ' ||  lv_subject || UTL_TCP.CRLF)));
  -- UTL_SMTP.WRITE_DATA(lv_conn, 'Subject: =?UTF-8?Q?' || UTL_RAW.CAST_TO_VARCHAR2(UTL_ENCODE.BASE64_ENCODE(UTL_RAW.CAST_TO_RAW(lv_subject))) || '?=' || UTL_TCP.CRLF);
  -- UTL_SMTP.WRITE_DATA(lv_conn, 'Subject: =?UTF-8?Q?' || UTL_RAW.CAST_TO_VARCHAR2(UTL_ENCODE.QUOTED_PRINTABLE_ENCODE(UTL_RAW.CAST_TO_RAW(lv_subject))) || '?=' || UTL_TCP.CRLF);

  UTL_SMTP.WRITE_DATA(lv_conn, 'MIME-version: 1.0' || UTL_TCP.CRLF);
  UTL_SMTP.WRITE_DATA(lv_conn, 'Content-Type: text/html;charset=utf-8' || UTL_TCP.CRLF);
  UTL_SMTP.WRITE_DATA(lv_conn, 'Content-Transfer-Encoding: quoted-printable '|| UTL_TCP.CRLF);

  UTL_SMTP.write_raw_data(lv_conn, utl_raw.cast_to_raw('Subject:' || lv_subject));
  UTL_SMTP.WRITE_DATA(lv_conn, UTL_TCP.CRLF); -- this crlf is for 'Subject' field

  UTL_SMTP.WRITE_DATA(lv_conn, 'Date: ' || TO_CHAR(SYSDATE, 'dd Mon yy hh24:mi:ss' ) ||' -0800 (GMT)' || UTL_TCP.CRLF);
  UTL_SMTP.WRITE_DATA(lv_conn, 'From: ' || lv_from || UTL_TCP.CRLF);
  UTL_SMTP.WRITE_DATA(lv_conn, 'To: ' || lv_rcpt || UTL_TCP.CRLF);
  UTL_SMTP.WRITE_DATA(lv_conn,  UTL_TCP.CRLF);
  UTL_SMTP.WRITE_RAW_DATA(lv_conn, UTL_ENCODE.QUOTED_PRINTABLE_ENCODE(UTL_RAW.CAST_TO_RAW(lv_message)));
  UTL_SMTP.WRITE_DATA(lv_conn, UTL_TCP.CRLF);
  UTL_SMTP.CLOSE_DATA(lv_conn);
  UTL_SMTP.QUIT(lv_conn);
END;
0
0
