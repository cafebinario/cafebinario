START TRANSACTION;
CREATE TABLE test(name VARCHAR(32), lastname VARCHAR(32));
INSERT INTO test (name,lastname) values ('Cafe','Binario');
COMMIT;
