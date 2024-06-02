-- Exercise 2: Managing a Fitness Center Database
CREATE TABLE Members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);
CREATE TABLE WorkoutSessions (
    session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (name, age)
VALUES
('Ronak Patel', 24),
('John Smith', 42),
('Jane Doe', 36);

SELECT * FROM Members;

INSERT INTO WorkoutSessions (member_id, session_date, session_time, activity)
VALUES
(1, '2023-06-02', 'Morning', 'Weight Lifting'),
(2, '2023-06-01', 'Afternoon', 'Cardio'),
(3, '2023-06-04', 'Evening', 'Yoga');

SELECT * FROM WorkoutSessions;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM WorkoutSessions;
SET SQL_SAFE_UPDATES = 1;

UPDATE WorkoutSessions
SET session_time = 'Morning'
WHERE member_id = 3;

DELETE FROM WorkoutSessions
WHERE member_id = 2;


