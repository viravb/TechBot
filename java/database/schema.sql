DROP TABLE IF EXISTS subby_toppy, sub_topic, topic;
DROP SEQUENCE IF EXISTS  seq_sub_id, seq_topic_id 

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

INSERT INTO topic (topic_name, topic_answer) ------ 1
VALUES  ('stress', '<p>
By it''s very nature, a coding bootcamp is an inherently stressful experience. Coding bootcamps are intensive, they are difficult, and they will challenge you in ways you have never been challenged before. But dont worry! Techbot has your back 
I can help you with the following topics:
<ul>
<li> &#x2022; Tips to help manage stress </li>
<li> &#x2022; App suggestion</li>
</ul>
<a href=https://drive.google.com/file/d/1iu3ZW_8elgbRBueb7TZoIFsFY8Bzy_OJ/view target="_blank">Heres a resource, you rockstar you</a>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 2
VALUES ('time', '<p>
At any point in time during the cohort you are sure to be managing several different things at once: the coding bootcamp 
(which includes your technical education and your Pathway curriculum), your family and friends, a job or side hustle, and/or life''s general commitments (scheduling a dentist appointment, changing the oil in your car, buying groceries, etc.). Thus, it is crucially important during the cohort that you practice productive time management techniques.
Let''s explore some techniques to help you manage your time better:
<ul>
<li>&#x2022; Pomodoro technique</li>
<li>&#x2022; Preventing burnout</li>
<li>&#x2022; App suggestion</li>
</ul>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 3
VALUES ('pitch', '<p>
Your Elevator Pitch will serve as your first impression when meeting new people - both professionally and personally. First impressions are formed within the first 7 to 17 seconds of meeting someone, which is why having a well-crafted elevator pitch will be a vital part of your job search. Your Pathway Program team will help you to craft your perfect pitch and ensure that you feel comfortable and confident when using it.
<br>
<a href=https://drive.google.com/file/d/1hzCGriWG65jSGtGtVArYmlv7TR8jmeAr/view target="_blank"> View the Elevator Pitch Presentation </a>
<br>
If you have additional questions about the elevator pitch please ask about the following topics:
<ul>
<li>&#x2022; How what is the target length? </li>
<li>&#x2022; Watch an example </li>
</ul>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 4
VALUES ('resume', '<p>
Did you know that the average recruiter spends just 6 seconds looking at a resume to decide if they''re going to reach out to them for an interview or not?! Just 6 seconds!!
<br>
Your resume will serve as your first impression when applying to jobs and we want to ensure that you''re putting your best foot forward with your resume as you begin applying to jobs in the technology industry. It usually takes a few drafts to perfect your resume, keep in mind that you''ll be submitting several drafts of your resume during the course of the cohort, and your Pathway Director will be helping you throughout the cohort to perfect your resume so by the time you begin applying to jobs, you''ll have an awesome resume that will impress any hiring manager!
<br>
<a href="https://drive.google.com/file/d/14QJxHbgz1fobZ8mIObZSRPZa2z3OTLZE/view" target="_blank"> Resume Presentation </a>
<br>
If you have additional questions about resumes please ask about the following topics:
<br>
<ul>
<li>&#x2022; How long should my resume be?</li>
<li>&#x2022; How do I describe my capstone on my resume?</li>
<li>&#x2022; How do I describe my professional experience on my resume?</li>
<li>&#x2022; Please provide an example</li>
</p>
');

INSERT INTO topic (topic_name, topic_answer) ------ 5
VALUES ('cover', '<p>
For many technology roles, cover letters will be an optional addition to your application. Thus, it is recommended that you skip the addition of a cover letter unless the following 2 situations arise:
<br>
<br>
It is a job you REALLY want, such as your dream job or you have valuable information to share that is not already included within your resume.
<br>
<br>
If you have additional questions about cover letters please ask about the following topics:
<ul>
<li>&#x2022; I would like an example of a cover letter</li>
<li>&#x2022; How do I write a cover letter?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 6
VALUES ('linkedin', '<p>
Not only will LinkedIn serve as your online resume, but you can network, look for jobs post about your experiences, use it as a research tool for interviews, and so much more.
<br>
<iframe src="https://drive.google.com/file/d/189yFPUiDDDLJYuVf1TrS7Tnr_3Qjlaxh/preview" width="640" height="480" allow="autoplay"></iframe>
<br>
If you have additional questions about LinkedIn please ask about the following topics:
<ul>
<li>&#x2022; Please provide tips on taking a profile photo</li>
<li>&#x2022; How many connections should I have?</li>
<li>&#x2022; What should be in my summary?</li>
</ul>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 7
VALUES ('role', '<p>
As you begin to do research on the career path that makes the most sense for you in the technology field, you''ll find that the options are endless. We''ve compiled a list of some of the most common roles in technology to help you not only form an understanding of the roles that will be available to you after graduation, but also to form an understanding of the different types of roles that you''ll be interacting with in your new technology career.
<br>
<a href="https://drive.google.com/file/d/1vtJWC6Ok6dOt6ATb-EONgEXy8Ux1K8vP/view" target="_blank">Job Role Presentation</a>
<br>
Additional question:
<ul>
<li>&#x2022; Can I switch roles within my career?</li>
</ul>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 8
VALUES ('recruiter', '<p>
As you begin your job search for a job in technology, you''ll find that it''s not uncommon to work with third party recruiters for roles. Because technology is such an in-demand field, companies will often work with outside recruiting agencies to assist them with finding individuals for their roles.
<br>
<iframe src="https://drive.google.com/file/d/1bSJnO1PAU9mR5-ftAQx7ORj9PJRZ8WNL/preview" width="640" height="480" allow="autoplay"></iframe>
<br>
If you have additional questions about recruiters please ask the following:
<br>
<ul>
<li>&#x2022; What is an agency recruiter?</li>
<li>&#x2022; What is a corporate recruiter?</li>
<li>&#x2022; What agencies do you recommend?</li>
</ul>
');

INSERT INTO topic (topic_name, topic_answer) ------ 9
VALUES ('network', '<p>
Networking is going to be a vital part of your new career in technology. We want you all to feel comfortable and confident when it comes to networking with folks in the tech industry. Because of this, it''s important for you to begin networking sooner than later, so you can build up a quality network of connections in the industry.
<br>
<a href="https://drive.google.com/file/d/1q_spUYbGgL7Vi1SbFnDVSjv2sl9t_B16/view" target="_blank"> Networking Presentation</a>
<br>
If you have additional questions about networking please ask about the following:
<br>
<ul>
<li>How should I approach someone at a networking event?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 10
VALUES ('interview', '<p>
Interviewing begins the moment you receive a call or email from the recruiter informing you that they''re interested in scheduling an interview. From that moment until the day of your interview, you need to ensure that you''re as prepared as possible. If you go into any interview without a high level of preparation, it will not go well. Preparation is key when interviewing for roles in the tech industry.
<br>
<a href="https://drive.google.com/file/d/1cqBMTovYMlKF1pTjU9V8J29w2jnaKmk5/view" target="_blank"> Interview Presentation</a>
<br>
If you have additional questions about networking please ask about the following:
<ul>
<li>What should I bring to an interview?</li>
<li>What should I wear?</li>
</ul>
</p>
');

INSERT INTO topic (topic_name, topic_answer) ------ 11
VALUES ('search', '<p>
At this point of the cohort we''ve given you all the tools and tricks you need to know in order to be successful in landing a job in technology. We''ve put together some great resources for you to be strategic in your job search and to help you stay organized.
<br>
<a href="https://drive.google.com/file/d/1l4pY-8z3GLTWMsx1pH_-pWFo1GUocdNk/view" target="_blank">Job Search Presentation</a>
<br>
If you have additional questions about the job search please ask the following:
<ul>
<li>What are some suggested job boards?</li>
<li>What terms should I use in the job search?</li>
<li>I want to learn about job alerts</li>
</ul>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 12
VALUES ('array', '<p>
An array is a series of values of the same data type that are held together in a wrapper that can be treated as a single thing.  
Arrays are created using the new keyword and Arrays are a fixed size ( The number of items the array will contain must be set when the array is created and cannot be changed after it is set. ).
<br>
<a href="https://www.w3schools.com/java/java_arrays.asp" target="_blank" > Info on Java Arrays </a>
<br>
If you have additional questions about arrays please ask the following:
<ul>
<li>When is an array''s size determined?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 13
VALUES ('loop', '<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/6djggrlkHY8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
Loops allow code to repeated for a set number of times.   Loops use a boolean condition, and execute the code while that condition is true and stop execution once the condition becomes false. 
<br>
The boolean condition must start true, and something in the loop must change the loop so that it eventually becomes false, and ends the loop.
<br>
If you have additional questions about loops please ask the following:
<ul>
<li>&#x2022; What are the pitfalls of loops?</li>
<li>&#x2022; What is a for loop?</li>
<li>&#x2022; What is a while loop?</li>
<li>&#x2022; What is a for each loop?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 14
VALUES ('Variable', '<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/so1iUWaLmKA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>	
Variables are storage containers paired with a symbolic name or identifier.  They holds some known or unknown amount of information referred to as a value.  Variables have a Data Type that defines what type of data that variable can hold.	
https://www.w3schools.com/java/java_variables.asp
If you have additional questions about variables please ask the following:
<li> &#x2022; How do you declare a variable?</li>
<li> &#x2022; What is a final variable?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 15
VALUES ('mvc', '<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/DUg2SWWK18I" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<p>Model View Controller (MVC) is a pattern that divides the application based on responsibility.
<img src = https://techaffinity.com/blog/wp-content/uploads/2019/07/MVC-Architecture-TechAffinity-1024x576.png></a>
The end result is that the Model and View are unaware that the other exists. This decouples the Model and View. 
<a href=https://www.freecodecamp.org/news/the-model-view-controller-pattern-mvc-architecture-and-frameworks-explained/ target="_blank"> Free Code Camp resource about MVC </a>
If you have additional questions about the MVC please ask the following:
<ul>
<li> Why use the MVC model? </li>
<ul>
</p>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 16
VALUES ('database', '<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/hRulZhTtUTg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
A database is an organized collection of data that can be accessed, managed, and updated.
A relational database is a particular type of database built upon the relational model of data 
Data in a relational database can be accessed and reassembled in many different ways without having to reorganize the data.
- Each entity is stored in a table.
- Columns are called attributes
- Rows represent individual records.
Rows represent individual records and consist of many attributes organized using columns.
<a href=https://www.javatpoint.com/what-is-database target=""_blank"">Here</a> is a link to understand more about a database
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 17
VALUES ('help', '<p>
Here are some topics I can help with:
<ul>
<li>&#x2022; Pathway (Career Development)</li>
<li>&#x2022; Curriculum (Technical Topics)</li>
<li>&#x2022; Motivational Quotes to keep you going!</li>
<li>&#x2022; Open job positions</li>
<br>
You can ask questions like the below:
<br>
<li>&#x2022; How do I write a resume?</li>
<li>&#x2022; What is a loop? </li>
<li>&#x2022; How do I prepare for an interview?</li>
<li>&#x2022; How do I work with recruiters?</li>
<li>&#x2022; Help me find an open job position</li>
</ul>
Please ask me about only one sub-topic at a time
</p>
');

INSERT INTO topic (topic_name, topic_answer) ------ 18
VALUES ('stressed', '<p>
By it''s very nature, a coding bootcamp is an inherently stressful experience. Coding bootcamps are intensive, they are difficult, and they will challenge you in ways you have never been challenged before. But dont worry! Techbot has your back 
I can help you with the following topics:
<ul>
<li> &#x2022; Tips to help manage stress </li>
<li> &#x2022; App suggestion</li>
</ul>
<a href=https://drive.google.com/file/d/1iu3ZW_8elgbRBueb7TZoIFsFY8Bzy_OJ/view target="_blank">Heres a resource, you rockstar you</a>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 19
VALUES ('resumes', '<p>
Did you know that the average recruiter spends just 6 seconds looking at a resume to decide if they''re going to reach out to them for an interview or not?! Just 6 seconds!!
<br>
Your resume will serve as your first impression when applying to jobs and we want to ensure that you''re putting your best foot forward with your resume as you begin applying to jobs in the technology industry. It usually takes a few drafts to perfect your resume, keep in mind that you''ll be submitting several drafts of your resume during the course of the cohort, and your Pathway Director will be helping you throughout the cohort to perfect your resume so by the time you begin applying to jobs, you''ll have an awesome resume that will impress any hiring manager!
<br>
<a href="https://drive.google.com/file/d/14QJxHbgz1fobZ8mIObZSRPZa2z3OTLZE/view" target="_blank"> Resume Presentation </a>
<br>
If you have additional questions about resumes please ask about the following topics:
<br>
<ul>
<li>&#x2022; How long should my resume be?</li>
<li>&#x2022; How do I describe my capstone on my resume?</li>
<li>&#x2022; How do I describe my professional experience on my resume?</li>
<li>&#x2022; Please provide an example</li>
</p>
');

INSERT INTO topic (topic_name, topic_answer) ------ 20
VALUES ('roles', '<p>
As you begin to do research on the career path that makes the most sense for you in the technology field, you''ll find that the options are endless. We''ve compiled a list of some of the most common roles in technology to help you not only form an understanding of the roles that will be available to you after graduation, but also to form an understanding of the different types of roles that you''ll be interacting with in your new technology career.
<br>
<a href="https://drive.google.com/file/d/1vtJWC6Ok6dOt6ATb-EONgEXy8Ux1K8vP/view" target="_blank">Job Role Presentation</a>
<br>
Additional question:
<ul>
<li>&#x2022; Can I switch roles within my career?</li>
</ul>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 21
VALUES ('recruiters', '<p>
As you begin your job search for a job in technology, you''ll find that it''s not uncommon to work with third party recruiters for roles. Because technology is such an in-demand field, companies will often work with outside recruiting agencies to assist them with finding individuals for their roles.
<br>
<iframe src="https://drive.google.com/file/d/1bSJnO1PAU9mR5-ftAQx7ORj9PJRZ8WNL/preview" width="640" height="480" allow="autoplay"></iframe>
<br>
If you have additional questions about recruiters please ask the following:
<br>
<ul>
<li>&#x2022; What is an agency recruiter?</li>
<li>&#x2022; What is a corporate recruiter?</li>
<li>&#x2022; What agencies do you recommend?</li>
</ul>
');

INSERT INTO topic (topic_name, topic_answer) ------ 22
VALUES ('networking', '<p>
Networking is going to be a vital part of your new career in technology. We want you all to feel comfortable and confident when it comes to networking with folks in the tech industry. Because of this, it''s important for you to begin networking sooner than later, so you can build up a quality network of connections in the industry.
<br>
<a href="https://drive.google.com/file/d/1q_spUYbGgL7Vi1SbFnDVSjv2sl9t_B16/view" target="_blank"> Networking Presentation</a>
<br>
If you have additional questions about networking please ask about the following:
<br>
<ul>
<li>How should I approach someone at a networking event?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 23
VALUES ('interviews', '<p>
Interviewing begins the moment you receive a call or email from the recruiter informing you that they''re interested in scheduling an interview. From that moment until the day of your interview, you need to ensure that you''re as prepared as possible. If you go into any interview without a high level of preparation, it will not go well. Preparation is key when interviewing for roles in the tech industry.
<br>
<a href="https://drive.google.com/file/d/1cqBMTovYMlKF1pTjU9V8J29w2jnaKmk5/view" target="_blank"> Interview Presentation</a>
<br>
If you have additional questions about networking please ask about the following:
<ul>
<li>What should I bring to an interview?</li>
<li>What should I wear?</li>
</ul>
</p>
');

INSERT INTO topic (topic_name, topic_answer) ------ 24
VALUES ('interviewing', '<p>
Interviewing begins the moment you receive a call or email from the recruiter informing you that they''re interested in scheduling an interview. From that moment until the day of your interview, you need to ensure that you''re as prepared as possible. If you go into any interview without a high level of preparation, it will not go well. Preparation is key when interviewing for roles in the tech industry.
<br>
<a href="https://drive.google.com/file/d/1cqBMTovYMlKF1pTjU9V8J29w2jnaKmk5/view" target="_blank"> Interview Presentation</a>
<br>
If you have additional questions about networking please ask about the following:
<ul>
<li>What should I bring to an interview?</li>
<li>What should I wear?</li>
</ul>
</p>
');

INSERT INTO topic (topic_name, topic_answer) ------ 25
VALUES ('searching', '<p>
At this point of the cohort we''ve given you all the tools and tricks you need to know in order to be successful in landing a job in technology. We''ve put together some great resources for you to be strategic in your job search and to help you stay organized.
<br>
<a href="https://drive.google.com/file/d/1l4pY-8z3GLTWMsx1pH_-pWFo1GUocdNk/view" target="_blank">Job Search Presentation</a>
<br>
If you have additional questions about the job search please ask the following:
<ul>
<li>What are some suggested job boards?</li>
<li>What terms should I use in the job search?</li>
<li>I want to learn about job alerts</li>
</ul>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 26
VALUES ('arrays', '<p>
An array is a series of values of the same data type that are held together in a wrapper that can be treated as a single thing.  
Arrays are created using the new keyword and Arrays are a fixed size ( The number of items the array will contain must be set when the array is created and cannot be changed after it is set. ).
<br>
<a href="https://www.w3schools.com/java/java_arrays.asp" target="_blank" > Info on Java Arrays </a>
<br>
If you have additional questions about arrays please ask the following:
<ul>
<li>When is an array''s size determined?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 27
VALUES ('loops', '<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/6djggrlkHY8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
Loops allow code to repeated for a set number of times.   Loops use a boolean condition, and execute the code while that condition is true and stop execution once the condition becomes false. 
<br>
The boolean condition must start true, and something in the loop must change the loop so that it eventually becomes false, and ends the loop.
<br>
If you have additional questions about loops please ask the following:
<ul>
<li>&#x2022; What are the pitfalls of loops?</li>
<li>&#x2022; What is a for loop?</li>
<li>&#x2022; What is a while loop?</li>
<li>&#x2022; What is a for each loop?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 28
VALUES ('Variables', '<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/so1iUWaLmKA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>	
Variables are storage containers paired with a symbolic name or identifier.  They holds some known or unknown amount of information referred to as a value.  Variables have a Data Type that defines what type of data that variable can hold.	
https://www.w3schools.com/java/java_variables.asp
If you have additional questions about variables please ask the following:
<li> &#x2022; How do you declare a variable?</li>
<li> &#x2022; What is a final variable?</li>
</p>');

INSERT INTO topic (topic_name, topic_answer) ------ 29
VALUES ('databases', '<p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/hRulZhTtUTg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<br>
A database is an organized collection of data that can be accessed, managed, and updated.
A relational database is a particular type of database built upon the relational model of data 
Data in a relational database can be accessed and reassembled in many different ways without having to reorganize the data.
- Each entity is stored in a table.
- Columns are called attributes
- Rows represent individual records.
Rows represent individual records and consist of many attributes organized using columns.
<a href=https://www.javatpoint.com/what-is-database target=""_blank"">Here</a> is a link to understand more about a database
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (1, 1)
VALUES ('tip', '<p>
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
');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (1, 2)
VALUES ('App', '<p> The
<a href = https://www.anxietycanada.com/resources/mindshift-cbt/ target="_blank">Mindshift CBT App</a> is a great resource to help you take charge of your anxiety
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (2, 3)
VALUES ('pomodoro', '<p>
Information on the Pomodoro Technique can be found  
<a href=https://todoist.com/productivity-methods/pomodoro-technique target="_blank">here</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (2, 4)
VALUES ('burnout', '<p>
Information on preventing burnout can be found here:
<a href=https://inside.ewu.edu/calelearning/psychological-skills/preventing-burnout/ target="_blank"> Preventing Burnout </a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (2, 5)
VALUES ('app', '<p>
The idea is simple: you open the app and say you want to plant a tree. Then you put your phone down. If you pick up your phone and switch to another app, your tree will die. Last 25 minutes, and your tree will live. Over time, you''ll grow an entire forest of trees, a reminder of all the time you intentionally spent getting things done instead of scrolling through Twitter.
<br>
<a href=https://www.forestapp.cc/ target="_blank">Forest App</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (3, 6)
VALUES ('length', 'p>
30 - 40 seconds
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (3, 7)
VALUES ('example', '<p>
<iframe src="https://drive.google.com/file/d/1w5K9SXOBLVG2KUu8AnupknA7r2B17Yam/preview" width="640" height="480" allow="autoplay"></iframe>
Luke maintains eye contact -- even in a remote environment, you feel like Luke is talking directly to you! This self-proclaimed nature boy also manages to either always smile or smize (smile with his eyes), which gives his pitch a lot of humanity.
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (4, 8)
VALUES ('long', '<p>
The end goal is that your resume will be the front of one page -- BUT, if the first draft of your resume is 2 pages, that is OK and we will work with you on the formatting and wording for your second draft
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (4, 9)
VALUES ('capstone', '<p>
Useful information on how to describe your capstones
<a href="https://drive.google.com/file/d/1VhcVvmSUaeBPOlNZNUTAPav2ed91iz0_/view" target="_blank"> here </a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (4, 10)
VALUES ('experience', '<p>
Useful information on how to describe your professional experience <a href="https://drive.google.com/file/d/1WpkbS0boeZbEJ_VtmO4COXh0m9Y7LkOh/view" target="_blank">here</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (4, 11)
VALUES ('example', '<p>
<a href="https://drive.google.com/file/d/1PlIMdlrWUtuKSfQrZwSeqlLhSIu34I_r/view" target="_blank">Here''s a good example from a previous student</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (5, 12)
VALUES ('example', '<a href="https://drive.google.com/file/d/1fRQubO25QqeFtLH2BF77Fx2DmCa7q5M0/view" target="_blank">Here''s a good example from a previous student</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (5, 13)
VALUES ('how', '<p>
<a href="https://hbr.org/2014/02/how-to-write-a-cover-letter" target="_blank">How to write a cover letter</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (6, 14)
VALUES ('photo', '<p>
<ul>
<li>&#x2022; A professional headshot in a suit and tie is great, but something business casual is even better!</li>
<li>&#x2022; 
No distractions in the photo - just you (don’t use a photo with multiple people and crop everyone else out)
</li>
<li>&#x2022; 
No selfies - take the time and have someone take a photo of you
</li>
<li>&#x2022; 
Don’t forget to SMILE!
</li>
<li>&#x2022; 
Make sure to get your headshot approved by your Pathway Director
</li>
<li>&#x2022; 
Take it a step further by adding a background photo that shows off your personality
</li>
<li>&#x2022; 
If you need additional tips for taking your own headshot, check out our Professional Headshot Guide
</li>
</ul>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (6, 15)
VALUES ('connection', '<p>
<ul>
<li>&#x2022; 
Try to get a minimum of 50 connections and continue to build your network. </li>
<li>&#x2022; 
Only connect with those you know; if you do not know them, but would like to connect, include a personal message  with your connection request.
</li>
<li>&#x2022; 
Add classmates, TE team members (who you know), former colleagues, family, friends, etc.
</li>
<ul>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (6, 16)
VALUES ('summary', '<p>
<a href="https://drive.google.com/file/d/1xgWz-NntDHfUqARj9yLay7dBnMMI9GGi/view" target="_blank">How to write a LinkedIn summary</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (7, 17)
VALUES ('switch', '<p>
You can move into a different role or career path down the line. You can even move roles multiple times!
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (8, 18)
VALUES ('agency', '<p>
Also referred to as "external recruiters," or "third-party recruiters," agency recruiters are hired by a company to fill their open positions. Often working to hire a variety of positions for several different companies at any one point in time, agency recruiters are not dedicated to supporting a single company. Because of the nature of their work, agency recruiters have a good grasp on the local and regional hiring trends since they get exposure to the processes, requirements, and culture of many different organizations. Agency recruiters, and their representative agencies, tend to specialize in a specific field or industry such as IT/technical, creative, financial & legal, etc.
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (8, 19)
VALUES ('corporate', '<p>
Also referred to as "in-house recruiters," or "inside recruiters," corporate recruiters are hired by an organization to fill internal roles for the organization itself. For example, a Google Corporate Recruiter would be hired to fill open positions for Google and Google alone. Corporate recruiters can be general (i.e. generalists) or specific in their scope - oftentimes, in larger corporations, corporate recruiters will have specified hiring areas. For example, a "Google Corporate Technical Recruiter," would only hire for technical roles at Google. Corporate recruiters have a deep organizational understanding and connection to the company''s mission and values.
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (8, 20)
VALUES ('recommend', '<p>
<ul>
<li>&#x2022; Robert Half</li>
<li>&#x2022; TEKSystems</li>
<li>&#x2022; Randstad Technologies</li>
<li>&#x2022; Modis</li>
<li>&#x2022; Apex Systems</li>
<li>&#x2022; Brooksource</li>
<li>&#x2022; K-Force</li>
<li>&#x2022; Sogeti</li>
<li>&#x2022; Capgemini</li>
<li>&#x2022; Vaco</li>
<li>&#x2022; Lucas Group</li>
<li>&#x2022; Aerotek</li>
<li>&#x2022; Ascendum Solutions</li>
</ul>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (9, 21)
VALUES ('approach', '<p>
You should always start off with a handshake, introduce yourself, and ask them a question. This will get the conversation flowing and allow you to listen and ask more follow-up questions based on their response.
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (10, 22)
VALUES ('bring', '<p>
Always bring several copies of your resume, a notebook with questions to ask the interviewers, and at least 2 pens (in case one stops working). If you don''t bring anything at all, it will be a red flag to the interviewers.
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (10, 23)
VALUES ('wear', '<p>
It''s always best to be overdressed than underdressed. Even if the company has a casual environment, put in the extra effort and wear a button-up or nice top with dress slacks or a skirt.
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (11, 24)
VALUES ('board', '<p>
<ul>
<li>Huntr Job Portal</li>
<li>Google Jobs</li>
<li>Indeed</li>
<li>LinkedIn</li>
<li>Dice</li>
<li>Glassdoor</li>
<li>CareerBuilder</li>
<li>Handshake</li>
<li>Monster</li>
</ul>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (11, 25)
VALUES ('term', '<p>
Listed below are some key terms that can be used during your job search. Add junior, associate, jr, entry level, or apprentice to any of your search queries to better narrow your results.

<ul>
<li>Application Developer</li>
<li>Application Support Analyst</li>
<li>Automation Developer</li>
<li>Back-end Developer</li>
<li>BI Developer</li>
<li>C# Developer</li>
<li>Coder</li>
<li>Database Developer</li>
<li>Development Intern</li>
<li>Front-end Developer</li>
<li>Full Stack Developer</li>
<li>Java Developer</li>
<li>.NET Developer</li>
<li>Programmer 1</li>
<li>Programmer I</li>
<li>Programmer Analyst</li>
<li>QA Analyst</li>
<li>Software Apprentice</li>
<li>Software Developer</li>
<li>Software Engineer</li>
<li>SQL Developer</li>
<li>Test Automation Developer</li>
<li>UI Developer</li>
<li>Web Developer</li>
</ul>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (11, 26)
VALUES ('alert', '<p>
Job alerts (or job agents) will be critical tools for you to leverage to streamline your job search. Once set up, job alerts will automatically unearth new jobs that match your preferences (based on your keywords and filters) and notify you daily via email and push notifications so you discover great opportunities as soon as possible. Watch the video tutorial below to start setting up your job alerts today!
<br>
<a href="https://drive.google.com/file/d/1rVwteWiIqi6_dKKRISDYlryiQYwiPO48/view" target="_blank"> Job Alert Presentation</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (12, 27)
VALUES ('size', '<p>
Arrays are fixed-length - the size is set when created and cannot be changed
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (12, 28)
VALUES ('index', '<p>
Arrays have a 0 based index
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (12, 29)
VALUES ('create', '<p>
String[] instructors = new String[5];
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (13, 30)
VALUES ('pitfall', '<p>
Infinite loop: One of the most common mistakes while implementing any sort of looping is that it may not ever exit, that is the loop runs for infinite time. This happens when the condition fails for some reason.
<br>
<br>
Another pitfall is that you might be adding something into you collection object through loop and you can run out of memory. If you try and execute the below program, after some time, out of memory exception will be thrown.
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (13, 31)
VALUES ('for', '<p>
<img src="https://media.geeksforgeeks.org/wp-content/uploads/20191108131134/For-Loop.jpg">
<br>
When we know the exact number of times the loop is going to run, we use for loop. It provides a concise way of writing initialization, test condition, and increment/decrement statements in one line. Thus, it is easy to debug and also has no risk of forgetting any part of the loop, since the condition is checked before.
<a href="https://www.w3schools.com/java/java_for_loop.asp" target="_blank"> Guide </a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (13, 32)
VALUES ('while', '<p>
<img src="https://media.geeksforgeeks.org/wp-content/uploads/20191118164726/While-Loop-GeeksforGeeks.jpg">
<br>
The while loop is used when the number of iterations is not known but the terminating condition is known. Loop is executed until the given condition evaluates to false. While loop is also an entry-controlled loop as the condition is checked before entering the loop. The test condition is checked first and then the control goes inside the loop.
<br>
Although for loop is easy to use and implement, there may be situations where the programmer is unaware of the number of iterations, it may depend on the user or the system. Thus, when the only iterating and/or terminating condition is known, while loop is to be used.
<br>
While loop is much like repeating if statement.
<a href="https://www.w3schools.com/java/java_while_loop.asp" target="_blank"> Guide </a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (13, 33)
VALUES ('each', ' <p>
<iframe width="560" height="315" src="https://www.youtube.com/embed/6SweFjpcYOI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
 <br>
 
<a href=https://www.geeksforgeeks.org/for-each-loop-in-java/ target="_blank">This</a> article is a great resource for more info on for-each loops!

</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (14, 34)
VALUES ('declare', '<p>
To create a variable, you must specify the type and assign it a value:
<br>
<br>
<a href="https://www.javatpoint.com/java-variable-declaration" target="_blank">How to create a variable</a>
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (14, 35)
VALUES ('final', '<p>
If you don''t want others (or yourself) to overwrite existing values, use the final keyword (this will declare the variable as "final" or "constant", which means unchangeable and read-only).
</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (15, 36)
VALUES ('why', '<p>The MVC pattern helps you break up the frontend and backend code into separate components. This way, it''s much easier to manage and make changes to either side without them interfering with each other</p>');

INSERT INTO sub_topic (sub_name, sub_answer) ------ (16, 37)
VALUES ('sql', '<p>
SQL is Structured Query Language :  a language that lets you access and manipulate databases.

<a href=https://www.w3schools.com/sql/sql_intro.asp target ="_blank">Here</a> is a link to get a brief intro to SQL

</p>');

INSERT INTO subby_toppy (topic_id, sub_id)
VALUES   (1, 1), (1, 2), (2, 3), (2, 4), (2, 5), (3, 6), (3, 7), (4, 8), (4, 9), (4, 10), (4, 11), (5, 12), (5, 13), (6, 14), (6, 15), (6, 16), (7, 17), 
		 (8, 18), (8, 19), (8, 20), (9, 21), (10, 22), (10, 23), (11, 24), (11, 25), (11, 26), (12, 27), (12, 28), (12, 29), (13, 30), (13, 31), (13, 32), 
		 (13, 33), (14, 34), (14, 35), (15, 36), (16, 37), (18, 1), (18, 2), (19, 8), (19, 9), (19, 10), (19, 11), (20, 17), (21, 18), (21, 19), (21, 20), 
		 (22, 21), (23, 22), (23, 23), (24, 22), (24, 23), (25, 24), (25, 25), (25, 26), (26, 27), (26, 28), (26, 29), (27, 30), (27, 31), (27, 32), (27, 33), 
		 (28, 34), (28, 25);

COMMIT TRANSACTION;