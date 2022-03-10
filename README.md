# ptms :heartpulse: :heartpulse: :heartpulse:
Project Time Management System in CSIT

## What ptms :balloon: :balloon: :balloon:
This is a web-based application that provides an online platform for a certain company's employees to report/record their time allotted or time retendered per project. The system also helps the company to monitor their employees' rendered time and work done per project. This has a pleasant user interface and user-friendly functionalities.

Our project consists of
- ptms : Frontend application.
- ptms API: Backend application API with MySQL Workbench.

## Technology stack. :sparkles: :sparkles: :sparkles:
### ptms
- :white_check_mark: [HTML](https://html.com) for creating frontend application.
- :white_check_mark: [JavaScript](https://www.javascript.com) for building our frontend HTML application
- :white_check_mark: [Bootstrap](https://getbootstrap.com) for styling our application.

Our main language of development is [PHP](https://www.php.net)

### ptms Database.
- [MySQL Workbench](https://www.mysql.com/products/workbench/) for our database.

## Prequistics. :key: :key: :key:
### Check the required :pushpin: :pushpin: :pushpin:
First, check the required 

- Bitnami Applications for PHP or other application server.
  You can check by typing
  ```
  http://localhost:8080
  ```
  into the your browser.
  
You can download Bitnami [here](https://bitnami.com)

## Running the application. :crystal_ball: :crystal_ball:	 :crystal_ball:	

You go to your browser and paste url `http://localhost:8080/Name your project folder.` will see the web application runs at `http://localhost:8080/Name your project folder.`

**Reminder: this topic needs to be done only once.**

check file initialize.php to setting base_url that is correct port and project folder fo but in my setting port is 8888 you should change it Usually the normal port is at 80 or `http://localhost` and correct name database user name and password


### Database setup (ptms API) :card_index_dividers:
**Reminder: this topic needs to be done only once.**

At ptms, we use [MySQL Workbench](https://www.mysql.com/products/workbench/) to store user data and credentials, this section will teach you how to set up the database locally. But first of all

- You should have MySQL Workbench installed in your machine.
- You should know your master password of `phpmyadmin` superuser. (They will ask for it during the installation).

If top 2 requirements surpassed. You're ready to develop ptms's database. These are steps to get the database running.

if you want to develop more database use  My SQL Workbench for easy to add more table or etc.

**WARNING: You should follow the instructions exactly or you'll end up with a broken database that's super hard to work with and fix.**

- Go your browser
  
  Login php my admin on your browser

  Next

  CREATE DATABASE "ptms" select utf8 unicode ci and then click  Create ;

  This means you've successfully created a database.

- import simple database

  Click import on your database and  select file.sql on floder db

  and click go You should see a message saying

  Import has been successfully finished.

  This means you've import successfully to the database.

### Features

## Admin Panel
- Secure Login and Logout

**Dashboard**
- Display the summary of lists.

**Work Type List Management**
- Add New Work Type
- List All Work Types
- View Work Type
- Update Work Type
- Delete Work Type

**Employee Management**
- Add New Employee
- List All Employees
- View Employee Details
- Update Employee Details
- Delete Employee Details

**Project Management**
- Add New Project
- List All Project
- View Project Details
- Update Project Details
- List Project's Employees Report List
- View Employees Report
- Overwrite Employees Report
- Delete Employees Report
- Close Project
- Delete Project Record

**Reports**
- Total Rendered Time
- Rendered Time of Employees
- Employee Time Allotted Per Project
- Print Reports

**Manage User List (CRUD)**
**Manage Account Details/Credentials**
**Manage System Information**

## Employee-Side

**Secure Login and Logout**
**Project Management**
- List All Project
- Add New Report Per Project
- View Project Details
- List Reports on Project
- Update Report
- Delete Report

**Reports**
- Rendered Time Summary
- Time Allotted Per Project
- Print Reports
- Manage Account Details/

# user admin for this website
**admin**
- jimmyyjp password 9981
- phuwin password 9981
- fforce password 9981
- kasibook password 9981

# user staff for this website
**staff**
- ppromxx password 9981
- seatawinan password 9981
- bbverpj password 9981
- firstkp password 9981

# user Employee for this website
**Employee**
- yin@nu.ac.th password 9981
- bestboom@nu.ac.th password 9981