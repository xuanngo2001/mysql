--DROP DATABASE Test;
CREATE DATABASE Test;

-- Create tables.
USE Test;
CREATE TABLE Emails(
        Contact_id INT NOT NULL,
        Email NCHAR(50) NOT NULL,
        Label NCHAR(50) NOT NULL,
        CONSTRAINT PK_Emails PRIMARY KEY (Contact_id, Email)
    );

CREATE TABLE Contacts(
        id INT AUTO_INCREMENT PRIMARY KEY, 
        Firstname NCHAR(50) NOT NULL, 
        Lastname NCHAR(50) NOT NULL
    );
    -- Auto increment by 1 starting from 2.
    ALTER TABLE Contacts AUTO_INCREMENT=2;

-- Add foreign keys.
ALTER TABLE Emails ADD CONSTRAINT FK_Emails_Contacts FOREIGN KEY(Contact_id) REFERENCES Contacts (id);

-- Insert data.
USE Test;
INSERT INTO Contacts(Firstname, Lastname) VALUES('Joe', 'Smith');
    INSERT INTO Emails(Contact_id, Email, Label) VALUES(LAST_INSERT_ID(), 'joe.smith@OpenWritings.net', 'personal'); 
INSERT INTO Contacts(Firstname, Lastname) VALUES('Anne', 'Bond');
    INSERT INTO Emails(Contact_id, Email, Label) VALUES(LAST_INSERT_ID(), 'anne.bond@OpenWritings.net', 'work'); 
INSERT INTO Contacts(Firstname, Lastname) VALUES('James', 'Bond');
    INSERT INTO Emails(Contact_id, Email, Label) VALUES(LAST_INSERT_ID(), 'james.bond@OpenWritings.net', 'work');    

-- Display tables content.
USE Test;
SELECT * FROM Contacts;
SELECT * FROM Emails;