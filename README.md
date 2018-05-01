# Overtime App

## Key requirement: company needs documentation that salaried employees did or did not get overtime each week. This application allows employees to enter their overtime details at the end of each week and managers can approve or reject.

### Models
- Post with the attributes: date and rationale.
- User which we'll use Devise.
- AdminUser that will inherit from the User class. For this feature, the admin user and user models will use a concept called Single Table Inheritance (STI).

### Features
**Approval workflow** - This means when a post is created, one of the Admin users should be able to approve it.
**SMS Message** - This is to remind users that they have to post their overtime details. Since they are not technical users, we'll have to send them a link to the application and make it as easy as possible.
**Admin dashboard** - In the admin dashboard, I'm going to use a Ruby gem called Administrate.
**Email summary** - Our application should email the summary of posts to the manager for his or her approval. Here, managers mean admin users.
**Need documentation if no overtime was requested** - If an employee did not log overtime, that needs to be documented as well. At the meeting, this requirement was specified to meet some labor laws.

### Libraries
Some of the libraries that I'll be using for this application are:
- Devise - permission structure for users
- Adminstrate - administrator dashboard
- JS Growl notifications
- Bootstrap - styling
- Twllio - for SMS messaging and to manage our secure credentials
- Dotenv - for protecting credentials from outside access.
- RSpec - for testing
- Capybara - for integration testing


$ cd Documents/code/rails-app-2/overtime
