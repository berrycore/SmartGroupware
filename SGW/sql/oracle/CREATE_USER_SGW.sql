CREATE USER c##sgw IDENTIFIED BY sgwservice1#;
GRANT CONNECT, RESOURCE TO c##sgw;
alter user c##sgw default tablespace users quota unlimited on users;