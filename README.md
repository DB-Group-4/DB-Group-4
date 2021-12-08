# DB-Group-4
# Team and Members
Thanh Phan

Mai lee

Ouchithya Bollu

Vaishnavi Mahesha
# Project Introduction
The project topic is ‘Campus Eats’, it is a food ordering application which will ensure faster and safer mode of food delivery on campuses. From the University’s point of view this application might help them regulate food delivery to staff and students internally by preventing inflow and outflow of the people not related to the university.


Campus eat can also provide users with the ability to order food for on-demand delivery and earn money at their own hours. It can also provide an alternative for tedious part time jobs.


Users can be both the customer and delivery agent at the same time.


Food quality can be closely monitored by the University with on-campus food delivery app which in-turn helps in developing a stronger niner nation. Moreover, campus eats can help both university and the students financially.


Storing data manually can turn out to be a tedious task so instead we can use a database that stores and manages the data efficiently for a smooth functioning. So, the database we are using is campus_eat_fall2020 which consists of the following tables:


  Delivery
 
  Driver
  
  Faculty	
    
  Location
  
  Order	
   
  Person
  
  Restaurant
  
  Staff
  
  Student 
    
  vehicle
    
The purpose of our project is to study and understand the working of the campus eats through the campus_eat_fall2020 dataset and we as a group intend in enhancing the database with a rating system for both restaurants and delivery drivers which will help in improving the performance.

# Business Rules
Users---Using Campus Eats:
1) Campus Eats is a UNCC market place platform for food delivery that connects UNCC students
and faculty to nearby restaurants (Food providers or restaurants that has been approved in
order to be included in the database). Persons are students, faculty, and staff may only create
and hold one account for personal use.
2) Users are responsible for maintaining & providing Campus Eats with updated information on
name, address, phone number, payments type, and email address. If any information is found
to be untrue or incorrect and Campus Eats has reasonable grounds, user accounts will be
blocked or terminated by Campus Eats staff. Campus Eats accepts VISA, MasterCard, AMEX, and
Discover. Tips can be added onto an order in the app or online.
3) There is a flat fee of $5 for each delivery.
4) Campus Eats may provide users with interactive opportunities on platform to rate delivery and
restaurants as well as upload photos and comments. Reviews must comply with the following
criteria: (1) before posting a Rating or Review, you must have had recent first-hand experience with a
delivery from the restaurant.
5) Driver: All delivery personal are UNCC students.
6) Restaurants are places that have been approved by Campus Eats staff. Users can order food
from approved Restaurants to be delivered to authorize dropped off locations: There are
currently 6 Restaurant choices to choose from.
7) Locations are spots on campus where food can be delivered to. Locations are dorms, the
student center, and approved classes that are maintained on file.
8) How it works: Click on app or website link. Log in to account.
Hours of Delivery are subject to change based on the open restaurant’s hours:
Monday – Friday 1PM- 8PM
Saturday/Sunday 12PM-7PM
* Step1: Select a drop point
* Step2: Select Restaurant: Choose menu item
          Restaurant will text you to confirm order.
* Step3: Track your order
  Driver will text you when order is picked up from restaurant and when ready to be picked up.

Staff of Campus Eats:
1) Staff of Campus Eats will monitor website and app for orders and maintain a good
order and delivery system during hours of operation.
2) Staff administrators must verify and approve all Campus Eats accounts and ensure
that payment types are in good order.
3) Staff must maintain ratings of delivery driver and restaurant.
Ratings are offer to users for delivery and Restaurant. Rate scale is 1 to 5 and users
are allowed to add comments and pictures.
(Displaying ratings are at the discretion of Staff)
4) Staff are responsible for resolving issues with orders that are not filled or incomplete
delivery or complaints in general.
5) Staff are responsible for monitoring the order system to make sure drivers are notify
once a restaurant has confirmed an order has been received with ETA.

Drivers of Campus Eats:
1) Drivers must be UNCC student, with a valid Driver’s License, have own vehicle for
delivery and proof of insurance. There are currently 8 approved drivers to start.
2) Drivers are responsible for confirming picked up order of Campus Eats orders and
again when ready for drop off.
3) Driver must use Campus Eats approved Food carry containers for delivery.

Approved Restaurant of Campus Eats:
1) Approved Restaurants in database can offer up to 10 menu items.Order System will allow restaurant to create a mini menu for users.Menu items can be a la carte, plate combinations, or specials of the day.There are currently 6 approved restaurants to start.
2) Restaurants must keep Campus eats system running during our hours of operation so orders can be confirmed by restaurant once it is received.
3) Restaurant must notify Order system –the projected time when order will be ready for pick up.
4) Restaurant is responsible for notifying Campus Eats if/when there is a of change hours of operation or if menu items are unavailable.
5) Following proper guidelines for fully normalized relational databases, the project requires theaddition of a more extensive ordering system for the restaurants:

  * Each restaurant supplies one to many menu items. Restaurants are limited to offering
  up to 10 items for this prototype (think meals like a Cook Out tray). Menu items should
  have an identifying number, name, description, price, etc.
  * You can test your system with six restaurants – one has to be campus dining
  (Chartwells). Reduce the number of restaurants to six realistic restaurants near UNCC.
  * Orders have to be updated to include each order having one to many items on the
  order. Orders can only be from one restaurant only and from one person only. The
  order should have the order total price and a date and time.
  * Each order will have an optional rating that the customer can complete. There is only
  one rating per order. The rating includes features for three questions and an option to
  upload a picture. The questions are: Rate the food 1 to 5, rate the delivery 1 to 5,
  comments. The picture attribute will include the path to the picture which is stored
  under the pics directory on the server.
  * Design the new database tables then create the tables using MySQL Workbench.
# Data Dictionary
Follow the below link- https://github.com/DB-Group-4/DB-Group-4/blob/main/updated_DATA%20DICTIONARY.pdf
# EERD Diagram
Follow the link- https://github.com/DB-Group-4/DB-Group-4/blob/main/EERD%20Diagram.pdf
# Final PPT
Follow the link- https://github.com/DB-Group-4/DB-Group-4/blob/main/DB_Final%20PPT.pptx
# Final narrated PPT
Follow the link- https://github.com/DB-Group-4/DB-Group-4/blob/main/Presentation_narration.mov
# SQL Dump
Follow the link- https://github.com/DB-Group-4/DB-Group-4/tree/main/SQL%20DUMP
# Description of stored procedures:
Follow the link- https://github.com/DB-Group-4/DB-Group-4/blob/main/Writing%20stored%20procedure%20-%20Group%204.pdf
# Assignment Notes and Guidelines:  
Your assignment is to understand a test database for a campus controlled food delivery service similar
to craveoncampus.com. You will be enhancing the database with a rating system for both restaurants
and delivery drivers. You can also look at grubhub and ubereats for ideas. Please remember this is
extending a prototype for the database not a fully implemented working model. You are given a SQL
script to load and you will have to design and add tables to include a rating system.
Here is some basic information on the existing database prototype:
1) Persons (campus faculty, staff, students) have accounts in the system with personid (PK), name,
email, cell, etc. For faculty we also keep title, highest degree, and degreecollege. For staff we
keep Position and AdminYorN. For students we keep GradYear and major plus type
(undergraduate, graduate). Only faculty, staff and students are included.
2) We have Locations which are spots on campus where food can be delivered. Some examples
are dorms, the student center, and approved classroom buildings. LocationID, LocationName,
LocationAddress and (optional) Latitude and Longitude are maintained in the database.
Additionally, a food delivery drop-off point is included (designated place for meeting or
delivering food in the location – this can be a brief description).
3) Persons can also be drivers (delivery personnel which have to be approved). Drivers have license
number and date hired plus ratings. You may also want to keep vehicle information (relative to
the vehicle that the driver uses).
* a) UNCC will start with 8 approved delivery personnel – the system is in test mode. You
can assume all individuals have been cleared and they can be included in the database.
* b) All delivery personnel are students.
4) There is a flat fee of $5 for each delivery. A person orders food one to many times. An
individual delivery is tied to one and only one person for the order. The order is for one and
only one restaurant. For the items on the order we will have a separate “item” file that includes
the item ordered, quantity, and any special instructions. Driver information and delivery date
and time will be updated on the order. There should also be a unique identifier (ID) that ties to
the id for the order at the individual restaurant. You can assume that the actual items on the
order need to come from the new table that you add for the restaurant with the menu items.
5) Food providers or restaurants have to be approved in order to be included in the database. You
can include six restaurants or more of your choice for the test database. Information will
include an ID, location, schedule, and a link to the web site along with other attributes you may
identify. A restaurant will have one to many menu items. Each menu item is unique to the
restaurant so you may have two items that are hamburgers in the database. You may consider a
weak entity for the menu times.
6) You are adding a rating system which does not exist in the database. This should give users the
ability to rate restaurants and drivers, plus upload a picture and add a comment.
7) The database will serve as an important data collection source providing valuable information
about nutrition and eating habits of campus community members.
