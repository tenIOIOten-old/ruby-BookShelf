file = Psych.load_file("db/seeds/books_categories.yml")
file["relation"].each do |params|
    book = Book.find(params["book"])
    category = Category.find(params["category"])
    book.categories<< category unless book.categories.exists? category.id
end