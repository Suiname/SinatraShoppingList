# Sinatra Shopping List
I created a basic CRUD app that uses the MVC framework.  The model is models/item.rb, ActiveRecord for sinatra, and a postgres db called shopping with table items.  The view is all the .erb files in the views folder.  The controller is controller/item.rb which inherits from application.rb and sinatra::base.  Basically, the controller has several routes:
* '/' which displays the read view which displays all items
* the /create route which displays the create view that brings up a form which creates new items
* the /update/:id route, which displays the update view that displays a form which allows the user to change the values of the item with id /:id
* the /destroy/:id route, which displays the destroy view that asks for confirmation to destroy item with id /:id, and then destroys it if the user clicks the confirm button.
* after any creation, update, or destruction, the user is taken back to to the read view where all items are displayed.
