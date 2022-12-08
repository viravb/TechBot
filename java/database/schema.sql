DROP TABLE IF EXISTS subject, question;
DROP SEQUENCE IF EXISTS seq_subject_id, seq_question_id;
CREATE SEQUENCE seq_subject_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
CREATE TABLE subject (
	subject_id INT NOT NULL DEFAULT nextval('seq_subject_id'),
	subject_type VARCHAR(36) NOT NULL,
	
	CONSTRAINT PK_subjects PRIMARY KEY (subject_id)
);
CREATE SEQUENCE seq_answer_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
CREATE TABLE question (
	question_id INT NOT NULL DEFAULT nextval('seq_answer_id'),
	question_keyword VARCHAR NOT NULL,
	answer VARCHAR(65535) NOT NULL,
	
	CONSTRAINT PK_question PRIMARY KEY (question_id)
);
CREATE TABLE sub_que (
	subject_id INT NOT NULL,
	question_id INT NOT NULL,
	
	CONSTRAINT PK_sub_que PRIMARY KEY (subject_id, question_id),
	CONSTRAINT FK_sub_que_subject_id FOREIGN KEY (subject_id) REFERENCES subject(subject_id),
	CONSTRAINT FK_sub_que_question_id FOREIGN KEY (question_id) REFERENCES question(question_id)
);
INSERT INTO subject (subject_type)
VALUES  ('networking'), ('resumes'), ('interviews'),('cover'), ('imposter'), ('stress'), ('job offer'), ('relocation'), ('elevator'), ('negotiation'), ('phone'), ('behavioral'),
('benefits'), ('linkedin'), ('alumni'), ('matchmaking'), ('job search'), ('technical'), ('positions'), ('side'), ('time'), ('help');
COMMIT TRANSACTION;