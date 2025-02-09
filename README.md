# Shop - e-Commerce Web Application

## Overview
This project is an e-Commerce web application built using Ruby on Rails. The application allows users to register, create ads to sell products, and manage a shopping cart. Some of the core functionalities are already implemented, while others need to be completed.


## Technologies Used
- **Ruby**: 3.3.0
- **Rails**: 6.1.3
- **Devise**: For user authentication
- **ActiveRecord**: For database management
- **Bootstrap**: For frontend styling

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/hmaach/shop.git
   cd shop
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Update dependencies:
   ```sh
   bundle update
   ```
4. Set up the database:
   ```sh
   rails db:migrate
   rails db:seed
   ```
5. Start the server:
   ```sh
   rails s
   ```
6. Open the application in your browser at `http://localhost:3001`

## Features to Implement
### 1. **User Authentication**
- Implement `registrations_controller.rb` in `app/controllers`
- Configure Devise for user authentication
- Define methods:
  - `sign_up_params`: Allow `name`, `email`, `password`, `password_confirmation`
  - `account_update_params`: Allow `name`, `email`, `password`, `password_confirmation`, `current_password`

### 2. **Product Management**
- Implement `products_helper.rb` in `app/helpers`
- Ensure only the creator of a product can edit or delete it
- Display the seller's name on each product listing

### 3. **Shopping Cart Functionality**
- Create a `Cart` model
- Implement:
  - Adding items to the cart
  - Displaying the total cart value
  - Removing individual items from the cart
  - Clearing the cart completely
  - Displaying cart status with a cart icon
  - Displaying messages upon adding/removing items
- Implement `current_cart.rb` in `app/models/concerns/` to retain cart data for users before login

## Commands Reference
### General Commands:
```sh
bundle install    # Install dependencies
bundle update     # Update gems
rails s           # Start Rails server (default: port 3000)
```
### Database Commands:
```sh
rails db:migrate  # Apply pending migrations
rails db:seed     # Seed database with initial data
```
### Scaffold and Controller Generation:
```sh
rails g scaffold Product brand:string model:string description:text condition:string finish:string title:string price:decimal --no-stylesheets --no-javascripts
rails g controller store index
```
### Image Upload Setup:
```sh
rails generate uploader Image
rails g migration add_image_to_products image:string
rails db:migrate
```