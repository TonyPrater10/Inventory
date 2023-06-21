# Project Name

Optoro Bulq Inventory QA Tests

## Project Description

This is a project encompassing Bulq inventory. It includes features for searching for lot listings, 
adding lots to your watch list and removing them, adding them to your cart, and checking if a user is verified
or not during checkout

## Disclaimer

⚠️ Please note that this project is currently not fully operational or complete. This is not running on a QA or Staging environment
The browser encounters bot detection when tests are run, even in headless mode

## Table of Contents
- [Installation](#installation)
- [Configuration](#configuration)
- [Run Tests](#runtests)
- [Contributing](#contributing)


## Installation

 - Clone repo to your local computer
	```
	git clone https://github.com/TonyPrater10/Inventory
	```

 - Navigate to the project directory
	```
	cd Optoro
	```

 - Install dependencies
	```
	bundle install
	```

## Configuration
	- Create env variables in an .env file
	
	**Example .env file:**
	
	EMAIL="your_email@example.com"
	PASSWORD="your_password"
	
	Additional environment variables
	INVALID_EMAIL="invalid_email@example.com"
	WRONG_EMAIL="wrong_email@example.com"
	WRONG_PASSWORD="wrong_password"
	UNVERIFIED_EMAIL="unverified_email@example.com"
	
	**Replace placeholder values with actual values**
	
	
	
	- Configure the env.rb file to run in different browsers

## Run Tests

 - Run all feature files with:
	```
	cucumber
	```
 - Run specific feature files with:
 
	```
	cucumber path/to/your/feature_file.feature
	```

## Contributing

 - Create a feature branch
	```
	git branch feature/issue-01/added-new-feature
	```
 - Make changes and push to your forked repository

 - Submit a pull requst with descriptive information on what you changed


Thank you