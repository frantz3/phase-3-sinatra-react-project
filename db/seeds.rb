puts "🌱 Seeding spices..."

20.times do

    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    username = Faker::Internet.username(specifier: 5..10)
    password = Faker::Internet.password(min_length: 8, max_length: 15)
    
    user = User.create(first_name: first_name, last_name: last_name, username: username, password: password)
end

10.times do
    title = Faker::Book.title
    author = Faker::Book.author
    publisher = Faker::Book.publisher
    genre = Faker::Book.genre

    book = Book.create(title: title, author: author, publisher: publisher, genre: genre)

    
   
end




puts "✅ Done seeding!"
