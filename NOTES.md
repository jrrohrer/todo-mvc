# TODO-MVC 

## Step 1: Integrate basic theme on asset pipeline

[x] Go to home page and see a non-dynamic page with the theme

## Step 2: Allow people to CRUD lists

Lists controller
    #index
    - see all their lists
    - doubling as my 'new' action in that it is presenting the person with a form to create a new list
    #create
    - create a list

- show a list

----

lists model
    has many items


items model
    belongs to a list

I need a model and I need a controller -- I should generate a resource

Thinking about new features:
Does it impact the DB?
Does it impact the URLs?

# Step ?: Fix down arrow on Make a List form