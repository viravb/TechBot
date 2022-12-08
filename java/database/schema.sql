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
VALUES   ('stress', '<p>
By it''s very nature, a coding bootcamp is an inherently stressful experience. Coding bootcamps are intensive, they are difficult, and they will challenge you in ways you have never been challenged before. But dont worry! Techbot has your back 
I can help you with the following topics:
<ul>
<li> &#x2022; Tips to help manage stress </li>
<li> &#x2022; App suggestion</li>
</ul>

<a href=https://drive.google.com/file/d/1iu3ZW_8elgbRBueb7TZoIFsFY8Bzy_OJ/view target="_blank">Heres a resource, you rockstar you</a>
</p>'), ('time', '<p>
At any point in time during the cohort you are sure to be managing several different things at once: the coding bootcamp 
(which includes your technical education and your Pathway curriculum), your family and friends, a job or side hustle, and/or life''s general commitments (scheduling a dentist appointment, changing the oil in your car, buying groceries, etc.). Thus, it is crucially important during the cohort that you practice productive time management techniques.

Let''s explore some techniques to help you manage your time better:
<ul>
<li>&#x2022; Pomodoro technique</li>
<li>&#x2022; Preventing burnout</li>
<li>&#x2022; App suggestion</li>
</ul>

</p>')

INSERT INTO sub_topic (sub_name, sub_answer)
VALUES  ('tip', '<p>
<ul>
<li>&#x2022; Make (and keep to) a schedule</li>
<li>&#x2022; While you''re at it, schedule breaks into your day</li>
<li>&#x2022; Remind yourself you are here to learn</li>
<li>&#x2022; Don''t compare yourself to others</li>
<li>&#x2022; Move your body</li>
<li>&#x2022; Drink water</li>
<li>&#x2022; Celebrate your wins!</li>
<ul>
</p>
'), ('App', '<p> The
<a href = https://www.anxietycanada.com/resources/mindshift-cbt/ target="_blank">Mindshift CBT App</a> is a great resource to help you take charge of your anxiety
</p>');

INSERT INTO subby_toppy (topic_id, sub_id)
VALUES   (1, 1), (1, 2);

SELECT * FROM topic
COMMIT TRANSACTION;