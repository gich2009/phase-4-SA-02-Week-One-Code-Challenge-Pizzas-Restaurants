# Restaurant Pizza API

This is a Ruby on Rails API project that maintains a record of restaurants, pizzas, and their many-to-many relationship through the restaurant_pizza model.

## Models

- `Restaurant`: Stores details about individual restaurants. Each restaurant can serve many pizzas through the restaurant_pizza model.
- `Pizza`: Stores details about individual pizza types. Each pizza can be served in many restaurants through the restaurant_pizza model.
- `RestaurantPizza`: The join model that belongs to both a `Restaurant` and a `Pizza`. It stores the relationship between the two, including the price of a particular pizza at a specific restaurant.

## Routes

This API project consists of the following endpoints:

- `GET /restaurants`: Lists all restaurants
- `GET /restaurants/:id`: Fetches a specific restaurant and the pizzas it serves.
- `DELETE /restaurants/:id`: Deletes a specific restaurant and all related RestaurantPizza records.
- `GET /pizzas`: Lists all pizzas
- `POST /restaurant_pizzas`: Creates a new `RestaurantPizza` record that associates an existing `Pizza` and `Restaurant`.

## Usage

To run this project locally, you'll need to do the following:

1. Clone the repository:

  - git clone <https://github.com/gich2009/phase-4-SA-02-Week-One-Code-Challenge-Pizzas-Restaurants>


2. Change into the directory:

  - cd phase-4-SA-02-Week-One-Code-Challenge-Pizzas-Restaurants


3. Install dependencies:

  - run `bundle install` or `bundler`


4. Create, migrate, and seed the database:

  - run `rails db:create db:migrate db:seed`


5. Start the Rails server:

  - run `rails s`


Now you can access the API endpoints via `http://localhost:3000`.


## Contributing

  - Contributions are welcome. Please open up an issue or create PR if you would like to contribute.


## License

  - This project is licensed under the MIT License.
