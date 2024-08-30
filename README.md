# README
## Part 2

### Key Questions:
- What factors determine the limitations? Are they based on the type of product, quantity, or other factors?
- For users in affected regions, should restricted items be completely removed from view, or displayed with a message indicating their unavailability?
- How will these changes affect orders that have already been placed?

### Modeling the Change:
To manage product restrictions by state:
- Create a many-to-many relationship between `Product` and `State` using a join table to record which products are restricted in which states.

#### Example Query:
To exclude restricted products in a given state:
```ruby
Product.where.not(
  id: ProductRestriction.where(state_id: <state_id>)
)
```

## Part 3
I believe that in this third scenario, the correct approach is to:

- Add new validations within the `State` model to handle this new restriction.
- Add a column to manage the value of the restriction. In this case, it would be an integer for the minimum age.

Additionally:

- I have added a new migration and a validation to the Rails model as well.
