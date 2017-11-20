# Bangazon Full-Stack Sprint-3

## Full-Stack Bangazon Website

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

For Ruby installation guide, see [the official Ruby download page](https://www.ruby-lang.org/en/downloads/).

### Installing

In order to get this running on your system, just follow the below steps. Note that this program runs completely on the command line of your system.

- Clone down this repository, which will create a new directory for this project on your system
- Within the terminal, CD into this newly created directory
- Within the terminal, navigate to the sub-directory ```ruby-bangazon-site-boilerplate-master```
- Run the command ```bundle install```. This will install all needed dependencies on your machine. These can be viewed in the ```ruby-bangazon-site-boilerplate-master/Gemfile``` file.
- Run the command ```rails db:migrate```. This will create your database, in a file named: ```development.sqlite3```
- Run the command ```rails server```, then, in a browser navigate to: ```localhost:3000``` This will start a server on your local machine, allowing you to view this application in your browser on port 3000.


## Dependencies(outside of what comes with Ruby on Rails 5.1.4)
* gem "paperclip", '~> 5.0.0' (This is used to manage the upload of images for products.)
* gem 'bcrypt', '~> 3.1.7' (This is included with Rails but is commented out in the Gemfile)

## Built With
* [Ruby](http://ruby-lang.org/) - The language used
* [SQLite3](https://www.sqlite.org/version3.html) - Library used to build the database
* [Rails](http://rubyonrails.org/) - The framework used

## Contributing

To contribute to this project, follow the steps below:

1. Go to the repository (https://github.com/Puddlemere-United/bangazon-terminal-interface).
1. Fork the repository to your Github account.
1. Clone the repository to your local directory.
1. Follow the "Installation" steps above to get the API up and running.
1. After your updates are made on a branch, create a pull request and fully fill out the PR template to let us know what has been updated.

## Issue Reporting

1. To report an issue, click the Issue tab within this repository on Github.
1. Click 'New issue'
1. Create an issue ticket clearly summarizing the issue in the Title field, and giving steps to recreate the issue in the 'Leave a comment' field.
    * Please be as specific as possible in order to allow for quick fixes.

## Authors

* **LaKeshia Johnson** - [Personal Github](https://github.com/LaKeshiaJohnson)
* **Jordan Berghofer** - [Personal Github](https://github.com/jordanberghofer)
* **Nora Moser** - [Personal Github](https://github.com/NoraMoser)
* **Brooke Wittenberg** - [Personal Github](https://github.com/brooksquil)
* **Tyler Barnett** - [Personal Github](https://github.com/tylerb33)
