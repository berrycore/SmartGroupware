alter table sm_notice drop column notice_content;
alter table sm_notice add(notice_content long);
alter table sm_notice add(admin_id varchar2(50));
alter table sm_notice drop constraint sm_notice_sm_users_fk;
ALTER TABLE sm_notice ADD CONSTRAINT sm_notice_sm_adm_fk FOREIGN KEY ( admin_id ) REFERENCES sm_adm ( admin_id );