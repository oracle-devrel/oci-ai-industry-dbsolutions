CREATE TYPE banktransfer_q_payload AS OBJECT ( message VARCHAR2(4000) );

------- Create Single Queue ----------
DECLARE
    v_qn varchar2(100) := 'fundstransfer_queue'; 
    v_qtab varchar2(100) := 'fundstransfer_queue_table';
    v_qcomm varchar2(1000) := 'Funds Transfer Queue';  
    v_payload varchar2(100) := 'banktransfer_q_payload';
    v_qtype_bool boolean := false;
    
BEGIN 
 
    -- Create Queue Table --------------------------
    DBMS_AQADM.create_queue_table (
      queue_table          => v_qtab,
      queue_payload_type   => v_payload,
      multiple_consumers   => v_qtype_bool,
      comment              => v_qcomm,
      secure => false);

    -- Create Queue -----------------------------------
    DBMS_AQADM.create_queue (queue_name    => v_qn,
                            queue_table   => v_qtab); 

    -- Start the Queue  ----------------------------------
    DBMS_AQADM.start_queue (queue_name => v_qn);  

END;

------ Send Message to a Queue ------------

DECLARE
      l_enqueue_options      DBMS_AQ.ENQUEUE_OPTIONS_T;
      l_message_properties   DBMS_AQ.MESSAGE_PROPERTIES_T;
      l_message_handle       RAW (16);
      l_queue_msg            banktransfer_q_payload; 

      l_msg varchar2(400) := 'ID:1 FROM-ID:200 TO-ID:300 AMOUNT:1000'; 
      
      l_q_name varchar2(400) := 'DOCUSER.fundstransfer_queue'; 

   BEGIN
      l_queue_msg := banktransfer_q_payload (l_msg);

      DBMS_AQ.ENQUEUE (queue_name           => l_q_name,
                       enqueue_options      => l_enqueue_options,
                       message_properties   => l_message_properties,
                       payload              => l_queue_msg,
                       msgid                => l_message_handle);
      COMMIT;
   EXCEPTION
      WHEN OTHERS
      THEN DBMS_OUTPUT.put_line ( SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
END;

--- View Messages in a Queue -----------

SELECT QUEUE, MSG_ID, MSG_STATE, ENQ_TIMESTAMP, DEQ_TIMESTAMP FROM AQ$fundstransfer_queue_table;

----- DeQueue Message ------------------
DECLARE
   
      r_dequeue_options    DBMS_AQ.DEQUEUE_OPTIONS_T;
      r_message_properties DBMS_AQ.MESSAGE_PROPERTIES_T;
      v_message_handle     RAW(16) := '2F940C54433EEF0AE0631A14000A0A3F';
      o_payload            banktransfer_q_payload;    
      v_qname varchar2(100) := 'DOCUSER.fundstransfer_queue'; 
   
   BEGIN 

    DBMS_AQ.DEQUEUE(
        queue_name         => v_qname,
        dequeue_options    => r_dequeue_options,
        message_properties => r_message_properties,
        payload            => o_payload, 
        msgid              => v_message_handle
         ); 
      --:P1_SINGLE_R_MSG := '*** DEQUEUE message => ' || o_payload.message || ' ';
      Htp.p('*** DEQUEUE message => ' || o_payload.message || ' ');
  
     COMMIT;
  
  END;

  ---- Dequeue the Message based on msgid -------

  DECLARE
  msg_id            VARCHAR2(30);
  message           SYS.AQ$_JMS_MESSAGE;
  msg_prop           SYS.AQ$_JMS_USER_PROPERTY_MAP;
  queue_name        VARCHAR2(30) := 'your_queue_name';
  dequeue_options   DBMS_AQADM.dequeue_options_t;
  message_properties DBMS_AQ.message_properties_t;

BEGIN
  msg_id := 'your_msg_id_here';

  dequeue_options.dequeue_mode := DBMS_AQADM.BROWSE;
  dequeue_options.navigation := DBMS_AQADM.NEXT_MESSAGE;

  DBMS_AQ.DEQUEUE(
    queue_name         => queue_name,
    dequeue_options     => dequeue_options,
    message_properties  => message_properties,
    payload             => message,
    msgid                => msg_id
  );

  -- Process the message
  DBMS_OUTPUT.PUT_LINE('Message ID: ' || msg_id);
  DBMS_OUTPUT.PUT_LINE('Message Text: ' || message.text_vc);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

------------- msg based on msg id ---------


  DECLARE
   
      r_dequeue_options    DBMS_AQ.DEQUEUE_OPTIONS_T;
      r_message_properties DBMS_AQ.MESSAGE_PROPERTIES_T;
      v_message_handle     RAW(16) := '2F940C54433EEF0AE0631A14000A0A3F';
      o_payload            banktransfer_q_payload;    
      v_qname varchar2(100) := 'DOCUSER.fundstransfer_queue'; 
   
   BEGIN 

    DBMS_AQ.DEQUEUE(
        queue_name         => v_qname,
        dequeue_options    => r_dequeue_options,
        message_properties => r_message_properties,
        payload            => o_payload, 
        msgid              => v_message_handle
         ); 
      --:P1_SINGLE_R_MSG := '*** DEQUEUE message => ' || o_payload.message || ' ';
      Htp.p('*** DEQUEUE message => ' || o_payload.message || ' ');
  
     COMMIT;
  
  END;

  ---- oracle AQ how to view message without dequeue -------

  DECLARE
  message           SYS.AQ$_JMS_MESSAGE;
  msg_prop           SYS.AQ$_JMS_USER_PROPERTY_MAP;
  queue_name        VARCHAR2(30) := 'DOCUSER.fundstransfer_queue'; 
  browse_options     DBMS_AQADM.browse_options_t;
  message_properties DBMS_AQ.message_properties_t;
  msg_id             VARCHAR2(30) := '2F940C54433EEF0AE0631A14000A0A3F';

BEGIN
  browse_options.wait := DBMS_AQADM.NO_WAIT;

  DBMS_AQ.BROWSE(
    queue_name         => queue_name,
    browse_options      => browse_options,
    message_properties => message_properties,
    payload             => message,
    msgid               => msg_id
  );

  -- Display the message
  DBMS_OUTPUT.PUT_LINE('Message ID: ' || msg_id);
  DBMS_OUTPUT.PUT_LINE('Message Text: ' || message.text_vc);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

------------------------------------------------------------------------------
DECLARE
   dequeue_options     DBMS_AQ.dequeue_options_t;
   message_properties  DBMS_AQ.message_properties_t;
   message_handle      RAW(16);
   message             aq.message_typ;
   queue_name        VARCHAR2(30) := 'DOCUSER.fundstransfer_queue'; 

BEGIN
   dequeue_options.dequeue_mode := DBMS_AQ.BROWSE;

   LOOP
      DBMS_AQ.DEQUEUE(queue_name          => queue_name,
                       dequeue_options    => dequeue_options,
                       message_properties => message_properties,
                       payload            => message,
                       msgid              => message_handle);

      DBMS_OUTPUT.PUT_LINE ('Message: ' || message.subject ||
                                         ' ... ' || message.text );
         
      EXIT WHEN message.subject = 'RED';

   END LOOP;

   dequeue_options.dequeue_mode := DBMS_AQ.REMOVE;
   dequeue_options.msgid        := message_handle;

   DBMS_AQ.DEQUEUE(queue_name => queue_name,
           dequeue_options    => dequeue_options,
           message_properties => message_properties,
           payload            => message,
           msgid              => message_handle);

   DBMS_OUTPUT.PUT_LINE ('Message: ' || message.subject ||
   ' ... ' || message.text );

   COMMIT;
END;

--------

DECLARE
  message  SYS.AQ$_JMS_MESSAGE;
  msg_id   VARCHAR2(30) := '2F940C54433EEF0AE0631A14000A0A3F';
  queue_name VARCHAR2(30) := 'DOCUSER.fundstransfer_queue'; 

BEGIN
  DBMS_AQADM.BROWSE_QUEUE(
    queue_name  => queue_name,
    msgid       => msg_id,
    payload     => message
  );

  DBMS_OUTPUT.PUT_LINE('Message ID: ' || msg_id);
  DBMS_OUTPUT.PUT_LINE('Message Text: ' || message.text_vc);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

-------

DECLARE
  message  SYS.AQ$_JMS_MESSAGE;
  msg_id   VARCHAR2(30) := '2F940C54433EEF0AE0631A14000A0A3F';
  queue_name VARCHAR2(30) := 'DOCUSER.fundstransfer_queue'; 
  browse_options DBMS_AQADM.browse_options_t;

BEGIN
  browse_options.wait := DBMS_AQADM.NO_WAIT;

  DBMS_AQ.BROWSE(
    queue_name         => queue_name,
    browse_options      => browse_options,
    payload             => message,
    msgid               => msg_id
  );

  DBMS_OUTPUT.PUT_LINE('Message Text: ' || message.text_vc);
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

--------------- Get Message ID ---------


DECLARE
      l_enqueue_options      DBMS_AQ.ENQUEUE_OPTIONS_T;
      l_message_properties   DBMS_AQ.MESSAGE_PROPERTIES_T;
      l_message_handle       RAW (16);
      l_queue_msg            banktransfer_q_payload; 
      message_id varchar2(200);

      l_msg varchar2(400) := 'ID:5 FROM-ID:200 TO-ID:300 AMOUNT:1000'; 
      
      l_q_name varchar2(400) := 'DOCUSER.fundstransfer_queue'; 

   BEGIN
      l_queue_msg := banktransfer_q_payload (l_msg);

      DBMS_AQ.ENQUEUE (queue_name           => l_q_name,
                       enqueue_options      => l_enqueue_options,
                       message_properties   => l_message_properties,
                       payload              => l_queue_msg,
                       msgid                => l_message_handle);

      SELECT MSG_ID INTO message_id
          FROM AQ$fundstransfer_queue_table
          WHERE ROWID = (SELECT MAX(ROWID)
                           FROM AQ$fundstransfer_queue_table);

          DBMS_OUTPUT.PUT_LINE('Message ID: ' || message_id);
      COMMIT;
   EXCEPTION
      WHEN OTHERS
      THEN DBMS_OUTPUT.put_line ( SQLERRM || ' - ' || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);
END;

----------
SELECT NAME, QUEUE_TABLE,  ENQUEUE_ENABLED, DEQUEUE_ENABLED,  RECIPIENTS FROM USER_QUEUES where QUEUE_TYPE='NORMAL_QUEUE' 

SELECT QUEUE, MSG_ID, MSG_STATE, ENQ_TIMESTAMP, DEQ_TIMESTAMP FROM AQ$FUNDSTRANSFER_QUEUE_TABLE

-------

SELECT QUEUE, MSG_ID, MSG_PRIORITY, MSG_STATE, ENQ_TIMESTAMP, DEQ_TIMESTAMP FROM AQ$FUNDSTRANSFER_QUEUE_TABLE order by MSG_PRIORITY

DECLARE
   
      r_dequeue_options    DBMS_AQ.DEQUEUE_OPTIONS_T;
      r_message_properties DBMS_AQ.MESSAGE_PROPERTIES_T;
      v_message_handle     RAW(200);
      o_payload            passenger_q_payload;  
      v_dbusername varchar2(100) := V('DB_USERNAME') ;  
      v_qname varchar2(100) := v_dbusername||'.'||:P1_SINGLE_R;
   
   BEGIN 
    DBMS_AQ.DEQUEUE(
        queue_name         => v_qname,
        dequeue_options    => r_dequeue_options,
        message_properties => r_message_properties,
        payload            => o_payload, 
        msgid              => v_message_handle
         ); 
      :P1_SINGLE_R_MSG := '*** DEQUEUE message => ' || o_payload.message || ' ';
  
     COMMIT;
  
  END;