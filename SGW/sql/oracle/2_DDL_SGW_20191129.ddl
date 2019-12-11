-- 생성자 Oracle SQL Developer Data Modeler 19.2.0.182.1216
--   위치:        2019-11-29 14:09:31 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



CREATE TABLE sm_access (
    user_id                VARCHAR2(50) NOT NULL,
    access_elec_document   VARCHAR2(50) NOT NULL,
    access_email           VARCHAR2(50) NOT NULL,
    access_board           VARCHAR2(50) NOT NULL
);

CREATE TABLE sm_adm (
    admin_id                     VARCHAR2(50) NOT NULL,
    admin_password               VARCHAR2(512) NOT NULL,
    admin_name                   VARCHAR2(50) NOT NULL,
    admin_date_last_login        VARCHAR2(50),
    admin_date_created           VARCHAR2(50) NOT NULL,
    admin_date_last_pw_changed   VARCHAR2(50),
    admin_access_ip              VARCHAR2(500) NOT NULL
);

ALTER TABLE sm_adm ADD CONSTRAINT sm_adm_pk PRIMARY KEY ( admin_id );

CREATE TABLE sm_board (
    board_id                   INTEGER NOT NULL,
    board_title                VARCHAR2(60) NOT NULL,
    board_content              LONG NOT NULL,
    board_writer_name          VARCHAR2(50) NOT NULL,
    board_attached_file_name   VARCHAR2(250),
    board_date_regist          VARCHAR2(50) NOT NULL,
    user_id                    VARCHAR2(50) NOT NULL
);

ALTER TABLE sm_board ADD CONSTRAINT sm_board_pk PRIMARY KEY ( board_id );

CREATE TABLE sm_company (
    company_id       VARCHAR2(50) NOT NULL,
    company_name     VARCHAR2(100) NOT NULL,
    company_domain   VARCHAR2(200)
);

ALTER TABLE sm_company ADD CONSTRAINT sm_company_pk PRIMARY KEY ( company_id );

CREATE TABLE sm_docu_status (
    status_code   VARCHAR2(50) NOT NULL,
    status_name   VARCHAR2(50)
);

ALTER TABLE sm_docu_status ADD CONSTRAINT sm_docu_status_pk PRIMARY KEY ( status_code );

CREATE TABLE sm_elec_document (
    document_id                   VARCHAR2(50) NOT NULL,
    document_title                VARCHAR2(50) NOT NULL,
    document_content              VARCHAR2(4000) NOT NULL,
    first_id                      VARCHAR2(50) NOT NULL,
    first_name                    VARCHAR2(50) NOT NULL,
    first_status                  VARCHAR2(50) NOT NULL,
    first_approval_date           VARCHAR2(50),
    second_id                     VARCHAR2(50),
    second_name                   VARCHAR2(50),
    second_status                 VARCHAR2(50),
    second_approval_date          VARCHAR2(50),
    third_id                      VARCHAR2(50),
    third_name                    VARCHAR2(50),
    third_status                  VARCHAR2(50),
    third_approval_date           VARCHAR2(50),
    fourth_id                     VARCHAR2(50),
    fourth_name                   VARCHAR2(50),
    fourth_status                 VARCHAR2(50),
    fourth_approval_date          VARCHAR2(50),
    final_id                      VARCHAR2(50) NOT NULL,
    final_name                    VARCHAR2(50) NOT NULL,
    final_status                  VARCHAR2(50) NOT NULL,
    final_approval_date           VARCHAR2(50),
    document_attached_file_name   VARCHAR2(250)
);

ALTER TABLE sm_elec_document ADD CONSTRAINT sm_elec_document_pk PRIMARY KEY ( document_id );

CREATE TABLE sm_emil (
    mail_id                       VARCHAR2(50) NOT NULL,
    mail_title                    VARCHAR2(50) NOT NULL,
    mail_content                  VARCHAR2(4000) NOT NULL,
    mail_time_send                VARCHAR2(50) NOT NULL,
    sender_name                   VARCHAR2(50) NOT NULL,
    receiver_name                 VARCHAR2(1000) NOT NULL,
    cc_name                       VARCHAR2(1000),
    document_attached_file_name   VARCHAR2(250)
);

ALTER TABLE sm_emil ADD CONSTRAINT sm_emil_pk PRIMARY KEY ( mail_id );

CREATE TABLE sm_notice (
    notice_id                   INTEGER NOT NULL,
    notice_title                VARCHAR2(50) NOT NULL,
    notice_content              VARCHAR2(4000) NOT NULL,
    notice_writer_name          VARCHAR2(50) NOT NULL,
    notice_attached_file_name   VARCHAR2(250),
    notice_date_regist          VARCHAR2(50) NOT NULL,
    admin_id                    VARCHAR2(50) NOT NULL
);

ALTER TABLE sm_notice ADD CONSTRAINT sm_notice_pk PRIMARY KEY ( notice_id );

CREATE TABLE sm_position (
    position_id     VARCHAR2(50) NOT NULL,
    position_name   VARCHAR2(50) NOT NULL
);

ALTER TABLE sm_position ADD CONSTRAINT sm_position_pk PRIMARY KEY ( position_id );

CREATE TABLE sm_reply (
    reply_id            INTEGER NOT NULL,
    reply_writer_name   VARCHAR2(50) NOT NULL,
    reply_content       VARCHAR2(1000) NOT NULL,
    reply_date_regist   VARCHAR2(50) NOT NULL,
    parent_board_id     INTEGER NOT NULL
);

ALTER TABLE sm_reply ADD CONSTRAINT sm_reply_pk PRIMARY KEY ( reply_id );

CREATE TABLE sm_teams (
    team_id          VARCHAR2(50) NOT NULL,
    team_name        VARCHAR2(100) NOT NULL,
    team_parent_id   VARCHAR2(50) NOT NULL
);

ALTER TABLE sm_teams ADD CONSTRAINT sm_teams_pk PRIMARY KEY ( team_id );

CREATE TABLE sm_users (
    user_id                     VARCHAR2(50) NOT NULL,
    user_password               VARCHAR2(512),
    user_name                   VARCHAR2(50),
    user_email                  VARCHAR2(100),
    user_phone                  VARCHAR2(50),
    user_description            VARCHAR2(500),
    user_date_last_login        VARCHAR2(50),
    user_date_last_pw_changed   VARCHAR2(50),
    user_date_employment        VARCHAR2(50),
    user_date_retirement        VARCHAR2(50),
    team_id                     VARCHAR2(50) NOT NULL,
    position_id                 VARCHAR2(50) NOT NULL
);

ALTER TABLE sm_users ADD CONSTRAINT sm_users_pk PRIMARY KEY ( user_id );

ALTER TABLE sm_access
    ADD CONSTRAINT sm_access_sm_users_fk FOREIGN KEY ( user_id )
        REFERENCES sm_users ( user_id );

ALTER TABLE sm_board
    ADD CONSTRAINT sm_board_sm_users_fk FOREIGN KEY ( user_id )
        REFERENCES sm_users ( user_id );

ALTER TABLE sm_elec_document
    ADD CONSTRAINT sm_elec_docu_sm_docu_status_fk FOREIGN KEY ( final_status )
        REFERENCES sm_docu_status ( status_code );

ALTER TABLE sm_notice
    ADD CONSTRAINT sm_notice_sm_adm_fk FOREIGN KEY ( admin_id )
        REFERENCES sm_adm ( admin_id );

ALTER TABLE sm_reply
    ADD CONSTRAINT sm_reply_sm_board_fk FOREIGN KEY ( parent_board_id )
        REFERENCES sm_board ( board_id );

ALTER TABLE sm_users
    ADD CONSTRAINT sm_users_sm_position_fk FOREIGN KEY ( position_id )
        REFERENCES sm_position ( position_id );

ALTER TABLE sm_users
    ADD CONSTRAINT sm_users_sm_teams_fk FOREIGN KEY ( team_id )
        REFERENCES sm_teams ( team_id );

CREATE SEQUENCE sm_board_board_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER sm_board_board_id_trg BEFORE
    INSERT ON sm_board
    FOR EACH ROW
    WHEN ( new.board_id IS NULL )
BEGIN
    :new.board_id := sm_board_board_id_seq.nextval;
END;
/

CREATE SEQUENCE sm_notice_notice_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER sm_notice_notice_id_trg BEFORE
    INSERT ON sm_notice
    FOR EACH ROW
    WHEN ( new.notice_id IS NULL )
BEGIN
    :new.notice_id := sm_notice_notice_id_seq.nextval;
END;
/

CREATE SEQUENCE sm_reply_reply_id_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER sm_reply_reply_id_trg BEFORE
    INSERT ON sm_reply
    FOR EACH ROW
    WHEN ( new.reply_id IS NULL )
BEGIN
    :new.reply_id := sm_reply_reply_id_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                            12
-- CREATE INDEX                             0
-- ALTER TABLE                             18
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           3
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          3
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
