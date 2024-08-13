USE new_schema;
CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

SELECT * FROM Members;
INSERT INTO Members (id, name, age) values (1, "Devin", 35);
INSERT INTO Members (id, name, age) values (2, "Sue", 49);
INSERT INTO Members (id, name, age) values (3, "Megan", 24);

SELECT * FROM WorkoutSessions;
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) values (212, 1, "2024-05-25", "18:00", "Boxing");
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) values (112, 2, "2024-03-15", "12:00", "Swimming");
INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) values (312, 3, "2024-04-19", "14:00", "Dancing");



UPDATE WorkoutSessions set session_time = "17:00" 
WHERE member_id = (SELECT id FROM Members WHERE name = "Devin");

DELETE FROM WorkoutSessions WHERE member_id = (SELECT id FROM Members WHERE name = "Devin");
DELETE FROM Members WHERE id = 1;