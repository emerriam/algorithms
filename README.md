# README

## Description

BizzyDemo is very basic API that can be used to manage multiple Customers, Vehicles, and Reservations.
It consists of a single controller (customers_controller), models for each object type, and some basic tests.
The API uses nested attributes in Rails to allow the capture of Customer, Vehicle, and Reservation in a single step.

## Database initialization
```
rake db:migrate
```
## How to run the test suite
```
rails test test/controllers/customers_controller_test.rb
```
## Nested Relationships

- Customers
  - Vehicles
    - Reservations

## Routes
```
   Prefix Verb   URI Pattern              Controller#Action
          POST   /customers(.:format)     customers#create
customers GET    /customers(.:format)     customers#index
 customer GET    /customers/:id(.:format) customers#show
          DELETE /customers/:id(.:format) customers#destroy
          PATCH  /customers/:id(.:format) customers#update
          PUT    /customers/:id(.:format) customers#update

```
### customer#create
```
post customers_url, params: { customer: [Customer] }, as: :json
```
Responds with a JSON of the customer just created with all nested attributes.
```
{"id"=>298486375,
 "name"=>"Eric",
 "address"=>"905 Bounty Drive unit 109",
 "city"=>"Foster City",
 "state"=>"California",
 "country"=>"USA",
 "phone"=>"617-658-5515",
 "email"=>"eric@email.com",
 "vehicles"=>
  [{"id"=>1,
    "make"=>"Ford",
    "model"=>"Escape",
    "year"=>"2018",
    "color"=>"Gray",
    "vin"=>"882vim",
    "customer_id"=>298486375,
    "reservations"=>
     [{"id"=>980190963,
       "time"=>"2020-06-10T17:11:54.652Z",
       "end"=>"2020-06-10T18:11:54.652Z"}]},
   {"id"=>2,
    "make"=>"Volkswagen",
    "model"=>"Jetta",
    "year"=>"2019",
    "color"=>"Gray",
    "vin"=>"323dds",
    "customer_id"=>298486375,
    "reservations"=>[]}]}
```
### customers#index
```
get customers_url, as: :json
```
Responds with a JSON of all Customers with all nested attributes included.
```
[{"id"=>298486375,
  "name"=>"Eric",
  "address"=>"905 Bounty Drive unit 109",
  "city"=>"Foster City",
  "state"=>"California",
  "country"=>"USA",
  "phone"=>"617-658-5515",
  "email"=>"eric@email.com",
  "vehicles"=>
   [{"id"=>1,
     "make"=>"Ford",
     "model"=>"Escape",
     "year"=>"2018",
     "color"=>"Gray",
     "vin"=>"882vim",
     "customer_id"=>298486375,
     "reservations"=>
      [{"id"=>980190963,
        "time"=>"2020-06-10T16:50:00.348Z",
        "end"=>"2020-06-10T17:50:00.349Z"}]},
    {"id"=>2,
     "make"=>"Volkswagen",
     "model"=>"Jetta",
     "year"=>"2019",
     "color"=>"Gray",
     "vin"=>"323dds",
     "customer_id"=>298486375,
     "reservations"=>[]}]},
 {"id"=>298486376,
  "name"=>"Mary",
  "address"=>"400 Elm St.",
  "city"=>"Burlingame",
  "state"=>"California",
  "country"=>"USA",
  "phone"=>"617-358-5515",
  "email"=>"mary@email.com",
  "vehicles"=>[]}]
```
### customers#show
```
get customer_url([Customer.id]), as: :json
```
Responds with single customer, including all nested attributes.
```
{"id"=>298486375,
 "name"=>"Eric",
 "address"=>"905 Bounty Drive unit 109",
 "city"=>"Foster City",
 "state"=>"California",
 "country"=>"USA",
 "phone"=>"617-658-5515",
 "email"=>"eric@email.com",
 "vehicles"=>
  [{"id"=>1,
    "make"=>"Ford",
    "model"=>"Escape",
    "year"=>"2018",
    "color"=>"Gray",
    "vin"=>"882vim",
    "customer_id"=>298486375,
    "reservations"=>
     [{"id"=>980190963,
       "time"=>"2020-06-10T16:56:51.602Z",
       "end"=>"2020-06-10T17:56:51.602Z"}]},
   {"id"=>2,
    "make"=>"Volkswagen",
    "model"=>"Jetta",
    "year"=>"2019",
    "color"=>"Gray",
    "vin"=>"323dds",
    "customer_id"=>298486375,
    "reservations"=>[]}]}
```
## customer#destroy
```
delete customer_url([Customer.id]), as: :json
```
Responds with empty string and status code 204

## Example/Test JSON
```
[
  {
    name: 'Eric',
    address: '905 Proc Drive unit 109',
    city: 'Foster City',
    state: 'California',
    country: 'USA',
    phone: '617-658-5515',
    email: 'eric@email.com',
    vehicles_attributes: [
      {
        make: 'Ford',
        model: 'Escape',
        year: '2018',
        color: 'Gray',
        vin: '882vim',
        reservations_attributes: [
          {
            time: DateTime.now,
            end: DateTime.now + 1.hour
          }
        ]
      },
      {
        make: 'Volkswagen',
        model: 'Jetta',
        year: '2019',
        color: 'Gray',
        vin: '323dds'
      }
    ]
  },
  {
    name: 'Mary',
    address: '400 Elm St.',
    city: 'Burlingame',
    state: 'California',
    country: 'USA',
    phone: '617-358-5515',
    email: 'mary@email.com'
  }
]
```
