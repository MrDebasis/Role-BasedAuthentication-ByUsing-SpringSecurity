INSERT INTO Users(user_name,password,enabled)
VALUES ('subhashree','$2y$12$9UCYvKKYweQxe5/xlGeFtuu1gpE6smKnL/kmnGAqpN.Iw/zYptT2y',true);
INSERT INTO Users(user_name,password,enabled)
VALUES ('jyoti','$2y$12$WGD5kYVQEvkoam3t2u02fu/8BJYXMR1ppbPLr4i5mNJYsNSS9Dv0K',true);
INSERT INTO Roles (Name)
VALUES ('ADMIN');
INSERT INTO Roles (Name)
VALUES ('USER');
INSERT INTO user_roles (user_id , roleid)
VALUES (1,1);
INSERT INTO user_roles (user_id , roleid)
VALUES (1,2);
INSERT INTO user_roles (user_id , roleid)
VALUES (2,2);