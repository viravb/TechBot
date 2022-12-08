<<<<<<< HEAD
DROP TABLE IF EXISTS subject, question;
DROP SEQUENCE IF EXISTS seq_subject_id, seq_question_id;
=======
START TRANSACTION;
ROLLBACK;
DROP TABLE IF EXISTS sub_answer, users, subjects, answers;
DROP SEQUENCE IF EXISTS seq_user_id, seq_subject_id, seq_answer_id;


>>>>>>> 8915e789803aee235bf9b937d10bb9667200c620
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
<<<<<<< HEAD
COMMIT TRANSACTION;
=======
										   
INSERT INTO answers (description)
VALUES('Networking is going to be a vital part of your new career in technology https://drive.google.com/file/d/1q_spUYbGgL7Vi1SbFnDVSjv2sl9t_B16/view');

INSERT INTO answers (description)
VALUES('Your resume will serve as your first impression when applying to jobs and we want to ensure that youre putting your best foot forward with your resume as you begin applying to jobs in the technology industry.');

INSERT INTO answers (description)
VALUES ('Interviewing begins the moment you receive a call or email from the recruiter informing you that theyre interested in scheduling an interview.');

INSERT INTO answers (description)
VALUES ('https://drive.google.com/file/d/1HLd3jBgWWtcHxl5HcRdBt3edBuxd6ndL/view');

INSERT INTO answers (description)
VALUES ('Strategies to cope with imposter feelings include talking about what you are experiencing, questioning your negative thoughts, and avoiding comparing yourself to others.');

INSERT INTO answers (description)
VALUES ('Make and keep to a schedule
-While youre at it, schedule breaks into your day
-Remind yourself you are here to learn
-Dont compare yourself to others
-Move your body
-Drink water
-Celebrate your wins!');

INSERT INTO answers (description)
VALUES ('As a Tech Elevator student, you will log all job offers (not just the position you accept). For quick access to the Job Offer Form and the Attestation form, visit the "Logging Your Offer" lesson within this unit');

INSERT INTO answers (description)
VALUES ('Looking at relocation opportunities is a great way to expand your job search and cast a wider net when applying for jobs!');

INSERT INTO answers (description)
VALUES ('Your Elevator Pitch will serve as your first impression when meeting new people - both professionally and personally');

INSERT INTO answers (description)
VALUES ('The worst thing that can happen when you negotiate is that you are told "no" and you are left with your original offer... not a bad outcome!');

INSERT INTO answers (description)
VALUES ('Confirm the scheduled time. Before the day of your interview, confirm the date and time so youre sure to pick up when the call comes in.');

INSERT INTO answers (description)
VALUES ('https://www.glassdoor.com/blog/guide/how-to-prepare-for-a-behavioral-interview/');

INSERT INTO answers (description)
VALUES ('https://resources.workable.com/tutorial/employee-benefits-guide');

INSERT INTO answers (description)
VALUES ('https://theundercoverrecruiter.com/how-optimize-your-linkedin-profile-job-search/');

INSERT INTO answers (description)
VALUES ('https://www.linkedin.com/groups/7026303/');


INSERT INTO answers (description)
VALUES ('Matchmaking can be a nerve-racking experience, but it is not designed to be so!');


INSERT INTO answers (description)
VALUES ('Simply applying to a job is not enough -- your application could easily fall into the infamous "Black Hole" of the applicant tracking system (ATS), especially at a larger company.');

INSERT INTO answers (description)
VALUES ('Know your audience - if youre meeting with a recruiter or non-technical person, highlight your soft skills and dont get too technical. If youre meeting with a Software Developer or someone more technical');

INSERT INTO answers (description)
VALUES ('Application Programmers  write programs to handle a specific job, such as a program to track inventory within an organization.');

INSERT INTO answers (description)
VALUES ('There are many things that you can do that give you something to talk about in answer to the �What have you done...�');

INSERT INTO answers (description)
VALUES ('Get a to-do list and a timer.');

INSERT INTO answers (description)
VALUES ('I can answer questions like the below:
		What is a resume
		How to write a resume
		What is matchmaking
		How to do the job search');

INSERT INTO sub_answer (subject_id, answer_id) VALUES (1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7), (8,8), (9,9), (10,10), (11,11), (12,12), (13,13), (14,14),(15,15), (16,16), (17,17),
(18,18), (19,19), (20,20), (21,21), (22,22);

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

COMMIT TRANSACTION;

SELECT * FROM answers


>>>>>>> 8915e789803aee235bf9b937d10bb9667200c620
