puts "🌱 Seeding spices..."

100.times do

    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    username = Faker::Internet.username(specifier: 5..10)
    password = Faker::Internet.password(min_length: 8, max_length: 15)
    
    user = User.create(first_name: first_name, last_name: last_name, username: username, password: password)

    title = Faker::Book.title
    author = Faker::Book.author
    publisher = Faker::Book.publisher
    genre = Faker::Book.genre
    
    if !user
        Book.create(user_id: user.id, title: title, author: author, publisher: publisher, genre: genre)
    end
end




puts "✅ Done seeding!"
