SELECT subject_type, description FROM subjects
FULL OUTER JOIN sub_answer ON subjects.subject_id = sub_answer.subject_id
FULL OUTER JOIN answers ON sub_answer.answer_id = answers.answer_id

SELECT * FROM subjects


DROP TABLE IF EXISTS cat_question, question_sub, sub_answer, users, categories, questions, subjects, answers;
DROP SEQUENCE IF EXISTS seq_user_id, seq_cat_id, seq_question_id, seq_subject_id, seq_answer_id;


CREATE SEQUENCE seq_cat_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;
  
  

CREATE TABLE categories (
	cat_id INT NOT NULL DEFAULT nextval('seq_cat_id'),
	name VARCHAR(36) NOT NULL UNIQUE,
	
	CONSTRAINT PK_categories PRIMARY KEY (cat_id)
);

CREATE SEQUENCE seq_question_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;

CREATE TABLE questions (
	question_id INT NOT NULL DEFAULT nextval('seq_question_id'),
	question_text VARCHAR(255) NOT NULL,
	
	CONSTRAINT PK_questions PRIMARY KEY (question_id)
);

CREATE SEQUENCE seq_subject_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;

CREATE TABLE subjects (
	subject_id INT NOT NULL DEFAULT nextval('seq_subject_id'),
	subject_type VARCHAR(36) NOT NULL,
	
	CONSTRAINT PK_subjects PRIMARY KEY (subject_id)
);

CREATE SEQUENCE seq_answer_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;

CREATE TABLE answers (
	answer_id INT NOT NULL DEFAULT nextval('seq_answer_id'),
	description VARCHAR(255) NOT NULL,
	
	CONSTRAINT PK_answers PRIMARY KEY (answer_id)
);


CREATE TABLE cat_question (
	cat_id INT NOT NULL,
	question_id INT NOT NULL,
	
	CONSTRAINT PK_cat_question PRIMARY KEY (cat_id, question_id),
	CONSTRAINT FK_cat_question_cat_id FOREIGN KEY (cat_id) REFERENCES categories(cat_id),
	CONSTRAINT FK_cat_question_question_id FOREIGN KEY (question_id) REFERENCES questions(question_id)
);

CREATE TABLE question_sub (
	question_id INT NOT NULL,
	subject_id INT NOT NULL,
	
	CONSTRAINT PK_question_sub PRIMARY KEY (question_id, subject_id),
	CONSTRAINT FK_question_sub_question_id FOREIGN KEY (question_id) REFERENCES questions(question_id),
	CONSTRAINT FK_question_sub_subject_id FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

CREATE TABLE sub_answer (
	subject_id INT NOT NULL,
	answer_id INT NOT NULL,
	
	CONSTRAINT PK_sub_answer PRIMARY KEY (subject_id, answer_id),
	CONSTRAINT FK_sub_answer_subject_id FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
	CONSTRAINT FK_sub_answer_answer_id FOREIGN KEY (answer_id) REFERENCES answers(answer_id)
);

CREATE SEQUENCE seq_user_id
  INCREMENT BY 1
  NO MAXVALUE
  NO MINVALUE
  CACHE 1;


CREATE TABLE users (
	user_id int DEFAULT nextval('seq_user_id'::regclass) NOT NULL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

INSERT INTO categories (name) VALUES ('Pathway');

INSERT INTO questions (question_text) VALUES ('I need help with'),
											 ('Where can I learn about'),
											 ('I dont understand'),
											 ('What is');
											 
INSERT INTO subjects (subject_type) VALUES ('writing a cover letter'),
										   ('prepping for an interview'),
										   ('folllwing up with employers'),
										   ('what to wear to an interview'),
										   ('common STAR questions');
										   
INSERT INTO answers (description) VALUES ('This is a good resource for learning about cover letters https://careercenter.umich.edu/article/cover-letters'),
										 ('Here is a great resource for learning about job interviews https://careercenter.umich.edu/article/interviewing-resources'),
										 ('Here is a resource on what to wear to an interview https://www.thebalancemoney.com/best-interview-attire-for-every-type-of-interview-2061364#:~:text=For%20women%2C%20a%20blouse%20and,will%20distract%20the%20hiring%20manager.'),
										 ('Here is another resource on what to wear to an interview https://cultivatedculture.com/what-to-wear-to-an-interview/'),
        									 ('Here is a resource on the top 30 STAR questions https://www.themuse.com/advice/behavioral-interview-questions-answers-examples');
									
INSERT INTO answers (description) VALUES ('This is a good resource for learning about cover letters https://careercenter.umich.edu/article/cover-letters'),
										 ('Here is a great resource for learning about job interviews https://careercenter.umich.edu/article/interviewing-resources'),
										 ('Here is a resource on what to wear to an interview https://www.thebalancemoney.com/best-interview-attire-for-every-type-of-interview-2061364#:~:text=For%20women%2C%20a%20blouse%20and,will%20distract%20the%20hiring%20manager.'),
										 ('Here is another resource on what to wear to an interview https://cultivatedculture.com/what-to-wear-to-an-interview/'),
										 ('Here is a resource on the top 30 STAR questions https://www.themuse.com/advice/behavioral-interview-questions-answers-examples'),
										 ('Goodbye');

INSERT INTO cat_question (cat_id, question_id) VALUES (1,1), (1,2), (1,3), (1,4);

INSERT INTO question_sub (question_id, subject_id) VALUES (1,1), (1,2), (1,3), (1,4), (2,1), (2,2), (2,3), (2,4), (3,1), (3,2), (3,3), (3,4),
														  (4,1), (4,2), (4,3), (4,4);
														  
INSERT INTO sub_answer (subject_id, answer_id) VALUES (1,1), (2,2), (3,3), (3,4), (4,5);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO subjects (subject_type)
VALUES ('networking'), ('resumes'), ('interviews'),('cover'), ('imposter'), ('stress'), ('job offer'), ('relocation'), ('elevator'), ('negotiation'), ('phone'), ('behavioral'),
('benefits'), ('linkedin'), ('alumni'), ('matchmaking'), ('job search'), ('technical'), ('positions'), ('side'), ('time')





COMMIT TRANSACTION;


SELECT categories.name, question_text, subject_type, description FROM categories
FULL OUTER JOIN cat_question ON categories.cat_id = cat_question.cat_id
FULL OUTER JOIN questions ON cat_question.question_id = questions.question_id
FULL OUTER JOIN question_sub ON questions.question_id = question_sub.question_id
FULL OUTER JOIN subjects ON question_sub.subject_id = subjects.subject_id
FULL OUTER JOIN sub_answer ON subjects.subject_id = sub_answer.subject_id
FULL OUTER JOIN answers ON sub_answer.answer_id = answers.answer_id
