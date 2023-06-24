# Pizza Restaurant API

>NOTE: Kindly make sure to switch to master branch before anything >else to find the full project. I had issues with my main branch and >therefore I was forced to use the master branch.

This is a Rails API backend for managing pizza restaurants and their menus.

## Installation
1. clone this repository
`git clone https://github.com/your-username/pizza-restaurant-api.git
`
2. change the directory and install dependencies
`cd pizza-restaurant-api
bundle install
`
3. Set up the database
`rails db:create
rails db:migrate
rails db:seed
`
4. Start the rails server
`rails s`

The API will be available at http://localhost:3000

## Endpoints

`GET /restaurants`: Retrieves a list of all restaurants with their details.
`GET /restaurants/:id`: Retrieves a specific restaurant by its ID.
`DELETE /restaurants/:id`: Deletes a restaurant by its ID.
`GET /pizzas`: Retrieves a list of all pizzas with their details.
`POST /restaurant_pizzas`: Creates a new RestaurantPizza association between an existing pizza and restaurant.


To retrieve a list of restaurants, make a GET request to `/restaurants`. You will receive a JSON response with an array of restaurant objects.

To retrieve a specific restaurant, make a GET request to `/restaurants/:id`, replacing `:id` with the desired restaurant ID.

To delete a restaurant, make a DELETE request to `/restaurants/:id`, replacing `:id` with the ID of the restaurant you want to delete.

To create a new RestaurantPizza association, make a POST request to `/restaurant_pizzas` with the following JSON data in the request body:

```
{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}
```
Replace the values with the desired price, pizza ID, and restaurant ID.

## Data Model 

The API uses the following database tables:
1. Restaurant

 •   id (integer)
 •   name (string)
 •   address (string)
 •   created_at (datetime)
 •   updated_at (datetime)

2.Pizza

 •   id (integer)
 •   name (string)
 •   ingredients (string)
 •   created_at (datetime)
 •   updated_at (datetime)

3.RestaurantPizza

 •   id (integer)
 •   restaurant_id (integer)
 •   pizza_id (integer)
 •   price (float)
 •   created_at (datetime)
 •   updated_at (datetime)

## Validations

The `RestaurantPizza` model validates that the price is between 1 and 30.

## Author
Samuel Karanja