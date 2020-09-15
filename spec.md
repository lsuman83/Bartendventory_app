Specifications for the Sinatra Assessment
Specs:

[x] Use Sinatra to build the app <!--I used corneal to create a base Sinatra app and added my controllers, models, and tables for migration -->
[x] Use ActiveRecord for storing information in a database <!-- I built my schema by building multiple tables for users, cabinets, and liquors, as well as a join table or cabinet_liquors -->
[x] Include more than one model class (e.g. User, Post, Category) <!-- I created a model for each needed item, user, cabinet, liquor, and for my join table cabinet_liquor so that i could build relationships and methods for each -->
[x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) <!-- My User model has_many cabinets and liquors -->
[x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) <!-- In my join table model Cabinet_liquors, my cabinetliquor belongs_to a cabinet and a liquor -->
[x] Include user accounts with unique login attribute (username or email) <!-- I used validations for email and username for each user making sure their email and username were unique when they sign up -->
[x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying <!-- In my cabinets controller it is possible to create, read, update and destroy a new cabinet, as well as in my liquors controller -->
[x] Ensure that users can't modify content created by other users <!-- Using nested routes I was able to make sure that users could only access their cabinets and each cabinet was only allowed to adjust the liquors within that cabinet -->
[x] Include user input validations <!-- Used validations and added errors for each login and signup -->
 BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
 Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm

[x] You have a large number of small Git commits <!-- made proper commits using git add . and git commit -m -->
[x] Your commit messages are meaningful <!-- used messages that described the changes I was making -->
[x] You made the changes in a commit that relate to the commit message <!-- made sure to incorporate the proper changes to each commit -->
[x] You don't include changes in a commit that aren't related to the commit message <!-- commited changes as they were made -->