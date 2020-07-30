Book.destroy_all

GoogleBooks::Adapter.new("Madeline L'Engle").fetch_books

# book.rb -> book class, active record
# migrate file -> creates book table
# seeds.rb -> creates instances of books -> books saved to the database