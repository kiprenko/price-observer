INSERT INTO `price_observer`.`user_role` (`id`, `name`)
VALUES (1, "admin"),
       (2, "user"),
       (3, "god");

INSERT INTO `price_observer`.`user` (`id`, `first_name`, `last_name`, `email`, `birth`, `password`, `role_id`)
VALUES (1, "admin", "admin", "admin@gmail.com", '2020-01-01', "admin", 3),
       (2, "Evgeniy", "Kiprenko", "zhenyakiprenko@gmail.com", '2000-02-15', "admin", 1),
       (3, "Viktoriia", "Abakumova", "abakumovaviktory@gmail.com", '1999-07-08', "admin", 1),
       (4, "Test", "Test", "test@gmail.com", '2020-02-02', "test", 2),
       (5, "User", "User", "user@gmail.com", '2020-03-03', "test", 2);

INSERT INTO `price_observer`.`product_type` (`name`)
VALUES ("smartphone"),
       ("laptop"),
       ("tablet"),
       ("smartwatch"),
       ("earphones"),
       ("TV");

INSERT INTO `price_observer`.`manufacturer` (`name`, `country`)
VALUES ("Apple", "USA"),
       ("Samsung", "South Korea"),
       ("Xiaomi", "China"),
       ("Huawei", "China"),
       ("Meizu", "China"),
       ("OnePlus", "China"),
       ("Philips", "Netherlands"),
       ("Bosch", "Germany"),
       ("Asus", "Taiwan"),
       ("Acer", "Taiwan"),
       ("LG", "South Korea"),
       ("Lenovo", "Hong Kong"),
       ("HP", "USA"),
       ("Dell", "USA"),
       ("Microsoft", "USA"),
       ("JBL", "USA"),
       ("Sony", "Japan");