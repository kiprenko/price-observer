<img src="docs/logo.png" alt="Price Observer logo">

# Price Observer

## Introduction

Price Observer is a price monitoring web-application. The application is built using Java programming language, Spring
Boot, and MySQL database.

The application itself is a pretty and clear tool to monitor the price of popular products. In the current version the
application support only the products made by Apple company. <br>
Price Observer supports Sign-In/Sign-Up possibility implemented with Spring Security. Authorized users can add products
they like into the wishlist for more comfortable price monitoring. The full list of the application features you may see
below:

- Review existing product categories;
- Search product by name or model;
- Review a product description and its price history;
- Create an account in the application;
- Sign In using your account and add products to the wishlist;
- Change account information.

## User Interface

Price Observer has a very smooth and useful User Interface. The main page of the application looks in a next way:

![Price Observer main page](docs/poMainPage.png)

You may see five main product categories on the main page. When you click on any of them you will be redirected to this
category page. Here is the "Smartphone" category page.

![Price Observer smartphones page](docs/poSmartphoneCategory.png)

The same page for the "Smartwatch" category.

![Price Observer smartwatches page](docs/poSmartWatchCategory.png)

When you click on the product you like, the page with a detailed product description is opened.

![Price Observer product view page](docs/poProductViewPage.png)

Also, I need to show you how nice our Sign-in/Sign-Up page looks like.

![Price Observer Sign-In/Sign-up page](docs/poSignInSignUpPage.png)

## Getting started

### Prerequisites

To run the application you need such things installed on your machine:

- Java 11
- Maven

### Build and run

1. Clone the project to your machine using git;
2. Open the root directory of the project;
3. Open a terminal and run the next command ```cd webapp```. You will be moved to the webapp module directory;
4. Run the Spring Boot Application by the ```mvn spring-boot:run``` command;
5. Wait till the Maven builds and runs the project;
6. Open http://localhost:8080 to verify the application running.

That's it.

## Documentation

### Use case diagram

![Use Case Diagram](docs/useCaseDiagram.png)

### Project structure

The project represents Maven multi-module project. It has four main modules:

- [auto](auto) module, which contains auto-tests;
- [core](core) module, which contains business logic and logic to interact with a database;
- [parser](parser) module, which contains logic to parse store sites;
- [webapp](webapp) module, which contains web-application layer logic (controllers, etc).

To run the application from your IDE use [Application](webapp/src/main/java/priceobserver/Application.java) class
located in [webapp](webapp) module.

### Database structure

The application uses MySQL database. For the database creation is used [main.sql](db/main.sql) file. Other important
database scripts may be found in this [folder](db).<br/>
The database schema visualization is provided below:
![Price Observer database schema visualisation](docs/dbSchema.png)

#### Database filling

To fill the database with product information the application uses store sites parsing. To parse sites was used Java
library **[jsoup](https://jsoup.org/)**

## Authors

🦉 **Viktoriia Abakumova**

- Email: abakumovaviktory@gmail.com
- [LinkedIn](http://linkedin.com/in/viktoriia-abakumova)

🦝 **Evgeniy Kiprenko**

- Email: zhenyakiprenko@gmail.com
- [LinkedIn](https://www.linkedin.com/in/kiprenko/)