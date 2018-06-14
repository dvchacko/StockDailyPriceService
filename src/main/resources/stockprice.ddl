DROP TABLE SECURITY_TYPE;

CREATE TABLE SECURITY_TYPE
(  ID INT NOT NULL,
   NAME VARCHAR(10),
   PRIMARY KEY (ID)
);

DROP TABLE SECURITY;
CREATE TABLE SECURITY
( ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(100),
  TICKER VARCHAR(10),
  SECURITY_TYPE INT NOT NULL,
  PRIMARY KEY (ID),
  CONSTRAINT FK_SECURITY_TYPE FOREIGN KEY (SECURITY_TYPE)    REFERENCES SECURITY_TYPE(ID)
);