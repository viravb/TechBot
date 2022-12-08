DROP TABLE IF EXISTS subby_toppy, topic, sub_topic
DROP SEQUENCE IF EXISTS seq_topic_id, seq_sub_id
CREATE SEQUENCE seq_topic_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
CREATE TABLE topic (
	topic_id INT NOT NULL DEFAULT nextval('seq_topic_id'),
	topic_name VARCHAR(36) NOT NULL,
	topic_answer VARCHAR(8000) NOT NULL,
	
	CONSTRAINT PK_topic PRIMARY KEY (topic_id)
);
CREATE SEQUENCE seq_sub_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
CREATE TABLE sub_topic (
	sub_id INT NOT NULL DEFAULT nextval('seq_sub_id'),
	sub_name VARCHAR(36) NOT NULL,
	sub_answer VARCHAR(8000) NOT NULL,
	
	CONSTRAINT PK_sub_topic PRIMARY KEY (sub_id)
);
CREATE TABLE subby_toppy (
	topic_id INT NOT NULL,
	sub_id INT NOT NULL,
	
	CONSTRAINT PK_subby_toppy PRIMARY KEY (topic_id, sub_id),
	CONSTRAINT FK_subby_toppy_topic_id FOREIGN KEY (topic_id) REFERENCES topic(topic_id),
	CONSTRAINT FK_subby_toppy_sub_id FOREIGN KEY (sub_id) REFERENCES sub_topic(sub_id)
);
INSERT INTO topic (topic_name, topic_answer)
VALUES   ('resume', 'bitch'), ('cover', 'g');
INSERT INTO sub_topic (sub_name, sub_answer)
VALUES  ('size', '16'), ('sections', '4');
INSERT INTO subby_toppy (topic_id, sub_id)
VALUES   (1, 1), (2, 2);

COMMIT TRANSACTION;