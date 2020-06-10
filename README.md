# README

## Description

BizzyDemo is very basic API that can be used to manage multiple Customers, Vehicles, and Reservations.
It consists of a single controller (customers_controller), models for each object type, and some basic tests.
The API uses nested attributes in Rails to allow the capture of Customer, Vehicle, and Reservation in a single step.

## Nested Relationships

- Customers
 	- Vehicles
  	- Reservations

## Database initialization
```
rake db:migrate
```
## How to run the test suite
```
rails test test/controllers/customers_controller_test.rb
```
## Example/Test JSON
```
[
  {
    name: 'Eric',
    address: '905 Bounty Drive unit 109',
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