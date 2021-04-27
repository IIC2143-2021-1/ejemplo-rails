# README

This is the app created during Software Engineering classes. You can follow all the steps explained during classes by looking the commit history.

## How do I install the app?

#### 1. Make sure to have all installed
You must have installed ruby (version 2.6.6) and rails (version 5.2) according the classes [guides](https://github.com/IIC2143-2021-1/Syllabus/tree/main/Gu%C3%ADas/Setup).
#### 2. Clone the repo by using the terminal
```
git clone https://github.com/IIC2143-2021-1/ejemplo-rails.git
```
#### 3. Move inside the folder ejemplo-rails
```
cd ejemplo-rails/
```
#### 4. install dependencies
```
bundle install
```
#### 5. Run the migrations
This will create all the tables in the database.
```
rails db:migrate
```
#### 6. Run the seed
This will populate the database to have some initial values.
```
rails db:seed
```
#### 7. Run the application
```
rails s
```
#### 7. Explore the application
Go to your favorite browser(Chrome, Firefox, Safari, etc) and navigate to http://localhost:3000/

## How do I run the test?
Run from your terminal
```
rails spec
```
