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

## Step 3: Add Items to a List
    - make items in a list real
        - a list has many items and a item belongs to a list
    - items table: id, description, list_id(foreign key)
    - Create action for an Item on a list:
        - The form is already present in the list show page
        - What URL does this form imply? POST /lists/:id/items
        ** An item doesn't exist in our app outside of the context of the list it belongs to-- NESTED RESOURCE **
            - Items are nested in terms of URLs under their parent list

I need an items table--  how are items associated to lists?
Create action for an item in a list--  what is the URL/HTTP method for that?
Don't need a show page for items because they appear on a list's show page

## Step 4: Adding Validations
    - lists must have a name
    - items must have a description

## Step 5: Add a state (complete/incomplete) to items on a list
    - Marking items complete/incomplete

## Step 6: Delete items from a list
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