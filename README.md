# Restaurant Pizza API

This is a Ruby on Rails API project that maintains a record of restaurants, pizzas, and their many-to-many relationship through the restaurant_pizza model.

## Models

- `Restaurant`: Stores details about individual restaurants. Each restaurant can serve many pizzas through the restaurant_pizza model.

- `Pizza`: Stores details about individual pizza types. Each pizza can be served in many restaurants through the restaurant_pizza model.

- `RestaurantPizza`: The join model that belongs to both a `Restaurant` and a `Pizza`. It stores the relationship between the two, including the price of a particular pizza at a specific restaurant.

## Routes

This API project consists of the following endpoints:

### `GET /restaurants`
- Lists all restaurants
- Response format:
```json
    [
      {
        "id": 1,
        "name": "Sottocasa NYC",
        "address": "298 Atlantic Ave, Brooklyn, NY 11201"
      },
      {
        "id": 2,
        "name": "PizzArte",
        "address": "69 W 55th St, New York, NY 10019"
      }
    ]
```

### `GET /restaurants/:id`

 - Fetches a specific restaurant and the pizzas it serves.
 - Response format:

```json

{
  "id": 1,
  "name": "Sottocasa NYC",
  "address": "298 Atlantic Ave, Brooklyn, NY 11201",
  "pizzas": [
    {
      "id": 1,
      "name": "Cheese",
      "ingredients": "Dough, Tomato Sauce, Cheese"
    },
    {
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
    }
  ]
}
```


### `DELETE /restaurants/:id`

  - Deletes a specific restaurant and all related RestaurantPizza records.
  - Response format: Empty with appropriate HTTP status code.

### `GET /pizzas`

  - Lists all pizzas
  - Response format:

```json

[
  {
    "id": 1,
    "name": "Cheese",
    "ingredients": "Dough, Tomato Sauce, Cheese"
  },
  {
    "id": 2,
    "name": "Pepperoni",
    "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
  }
]
```

### `POST /restaurant_pizzas`

  - Creates a new RestaurantPizza record that associates an existing Pizza and Restaurant.
  - Payload format:

```json

{
  "price": 5,
  "pizza_id": 1,
  "restaurant_id": 3
}
```

  - Response format:

```json

{
  "id": 1,
  "name": "Cheese",
  "ingredients": "Dough, Tomato Sauce, Cheese"
}
```

## Usage

To run this project locally, you'll need to do the following:

  - Clone the repository:

    git clone https://github.com/gich2009/phase-4-SA-02-Week-One-Code-Challenge-Pizzas-Restaurants

  - Change into the directory:

    `cd phase-4-SA-02-Week-One-Code-Challenge-Pizzas-Restaurants`

  - Install dependencies:

    run `bundle install` or `bundler`

  - Create, migrate, and seed the database:

    run `rails db:create db:migrate db:seed`

  - Start the Rails server:

    run `rails s`

Now you can access the API endpoints via http://localhost:3000.

## Contributing

Contributions are welcome. Please open up an issue or create PR if you would like to contribute.

## License

This project is licensed under the MIT License.
