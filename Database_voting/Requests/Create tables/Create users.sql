USE Smart_voting;

CREATE TABLE Users
(
	UserID INT PRIMARY KEY IDENTITY,
	Email VARCHAR(50) UNIQUE NOT NULL CHECK(Email !=''),
	UserPassword VARCHAR(50) NOT NULL CHECK(UserPassword !=''),
	UserName NVARCHAR(50) NOT NULL,
	Age INT DEFAULT 18 CHECK(Age >0 AND Age < 100)
)