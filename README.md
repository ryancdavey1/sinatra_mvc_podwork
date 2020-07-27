# Instructions for Podwork

The goal of this activity will be to create GET routes in Sinatra that will display books from the database.

## Seeding

You'll notice that a migration, model, and `seeds.rb` are already provided, so you should use them in the proper order to set-up and seed your database.  Take a few minutes to examine `app/adapters/google_books.rb` to see how it works with the seed file.

## Routes and Views

Create a route `GET '/welcome'` which displays some kind of welcome message to the user, and will ultimately include links to the other routes. You'll need to create a view, too.

Spin up a server and check your route in a browser.

Create a route `GET '/books'` which displays a list of all the books (title and author) in the database (and a view to render it).  Make sure you can navigate back to the Welcome view.

Create a 3rd route `GET '/books/random` which will display a randomly selected book with it's title, author, and snippet. Make sure you can navigate back to the Welcome view.

## Stretch Goal

Add a form to the Welcome page that will allow a user to enter an author, and then will send the form data to a `POST /books/search` route.  The controller action will send the user's input to the adapter and add the books by that author to the database.