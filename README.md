## Dent's Functionality (Back-End)
 Dent (Short for Dental Health ) is a web application that can track symptoms and conditions related to the oral cavity. The app works by allowing users to create authenticated accounts which will then give them access to create, view, update or delete logs based on locations in the mouth. Among the symptoms parameters they will be able to report: pain levels, sensitivity, medications, notes etc.

## Links
* [Front-end repo](https://github.com/Jp293/Dent-react-client)
* [Dent Application](https://Jp293.github.io/Dent-react-client)
* [Heroku Server](https://dent-rails-development.herokuapp.com/)

## Set up and Installation:

* Fork and clone this repository.
* Initiate a new branch `git branch <<branch_name>>`, `<<git checkout -b <<branch_name>>` will create and checkout to newly created branch, preferably for development purposes (NEVER work on the master branch!).
* Checkout to the newly created branch `git checkout <<branch_name>>`.
* Install necessary dependencies `bundle install`.
* Finally run  the `bin/rails server` command to create a localhost api.

## Technologies Used

* Ruby
* Ruby on Rails
* PostgreSQL
* Heroku

## Path Catalogues:

### Users
| Verb   |    URL Pattern           | Controller#Action    |
|--------|--------------------------|----------------------|
| POST   | `/sign-up`               | `users#signup`       |
| POST   | `/sign-in`               | `users#signin`       |
| DELETE | `/sign-out`              | `users#signout`      |
| PATCH  | `/change-password`       | `users#changepw`     |

### Collections
| Verb   |    URL Pattern           | Controller#Action    |
|--------|--------------------------|----------------------|
| GET    | `/dents`                 | `dents#index`        |
| POST   | `/dents`                 | `dents#create`       |
| GET    | `/dents/:id`             | `dents#show`         |
| PATCH  | `/dents/:id`             | `dents#update`       |
| DELETE | `/dents/:id`             | `dents#destroy`      |



## Thought Process & Execution

* When setting up the back-end, one to many relationships were selected as being the best option; in this instance users can have many dents (dental logs).
* After scaffolding the table, adding user to resource relationships and running the necessary migrations, curl scripts were used to test the resource using the CRUD method.
* For the resource's controller the protectedController setting was selected as it would protect data by requiring user authentication.
* The resource's models also established user to resource relationship (in this case, dents) and included the foreign keys as references.



## ERD (entity relationship diagram)

![ERD Image]('https://i.imgur.com/4uufOw1.png')



## Future Versions

Although the app is still in its early stages it has potential to enhance the effectiveness for users.
* Version 2: Implement a visual chart of the mouth that users can use as a guide to report their symptoms.
* Version 3: Visual charts can change color based on the status of the tooth via conditional statements. For example:
  - If pain level is less than equal to 3 the tooth image remains green.
  - Else if pain level is in between 4 and 8 the tooth image will turn yellow.
  - Else if pain level is between 8 and 10 the image will change to red.
* Version 4: Add administrators (possibly dentists/healthcare providers) to provide consented data from users to clinics.
