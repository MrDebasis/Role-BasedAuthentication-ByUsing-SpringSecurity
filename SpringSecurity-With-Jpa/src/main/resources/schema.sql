CREATE  TABLE Users (
user_id int AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(45) NOT NULL ,
  password VARCHAR(255) NOT NULL ,
  enabled boolean NOT NULL
  );
CREATE  TABLE Roles (
roleid int AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(65) NOT NULL 
  );
CREATE TABLE user_roles (
    user_id int ,
    roleid int ,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
	FOREIGN KEY (roleid) REFERENCES Roles(roleid)
);