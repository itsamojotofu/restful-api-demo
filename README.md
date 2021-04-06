This demo app is a REST API to manage transaction history of products.

(Deployed on Heroku: https://wp-backend-test.herokuapp.com)

## Installation

Install 'jq' with brew command.

```bash
brew install jq
```

## DEMO

You can try following commands to create or get records on this API.

### Add a purchaser (POST)

```
curl -H 'Content-Type:application/json' -d '{"name":"hoge"}' -X POST https://wp-backend-test.herokuapp.com/purchaser
```

### Add a product (POST)

```terminal
curl -H 'Content-Type:application/json' -d '{"name":"hoge"}' -X POST https://wp-backend-test.herokuapp.com/product
```

### Add a transaction (POST)

```terminal
curl -H 'Content-Type:application/json' -d '{ "purchaser_id": 4, "product_id": 34, "purchase_timestamp": 1553094444 }' -X POST https://wp-backend-test.herokuapp.com/purchaser_product
```

### See transaction history (GET)

```terminal
curl 'https://wp-backend-test.herokuapp.com/purchaser/4/product?start_date=2019-03-20&end_date=2020-11-11' | jq .
```

### sample response

```terminal
{
  "purchases": {
    "2019-03-20": [
      {
        "product": "Trumpet"
      },
      {
        "product": "Diamond"
      }
    ]
  }
}
```

※ date range filtering by start date and end date parameters is optional.

## Supplementary information

- Ruby 2.6.5
- Ruby on Rails 6.0.3.4
