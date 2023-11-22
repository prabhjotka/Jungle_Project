# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing
4111 1111 1111 1111
Use Credit Card #  for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

!["Home page rendering products"](https://raw.githubusercontent.com/prabhjotka/Jungle_Project/85568b5e8e270cbd1ca9a3c07145216b2d2d8d8e/docs/Homepage.png) 

!["My cart page displaying itmes in cart "](https://raw.githubusercontent.com/prabhjotka/Jungle_Project/85568b5e8e270cbd1ca9a3c07145216b2d2d8d8e/docs/Mycartpage.png)

!["Admin page to add more categories"](https://raw.githubusercontent.com/prabhjotka/Jungle_Project/85568b5e8e270cbd1ca9a3c07145216b2d2d8d8e/docs/addcategoryAdminpage.png)

!["Order page display order information"](https://raw.githubusercontent.com/prabhjotka/Jungle_Project/85568b5e8e270cbd1ca9a3c07145216b2d2d8d8e/docs/orderpage.png)


!["user sign up page"](https://raw.githubusercontent.com/prabhjotka/Jungle_Project/85568b5e8e270cbd1ca9a3c07145216b2d2d8d8e/docs/userLoginpage.png)

!["user sign in"](https://raw.githubusercontent.com/prabhjotka/Jungle_Project/85568b5e8e270cbd1ca9a3c07145216b2d2d8d8e/docs/userSigninpage.png)