User.create! name: "Le Tat Tung", email: "letattungtb@gmail.com",
  password: "tung123", password_confirmation: "tung123", is_admin: true

publisher = Publisher.create! name: "Le Tat Tung"
publisher.books.create! title: "Harry potter", pages: 500, price: 20000,
  quantity:10, publish_date: "1/1/2001"
Category.create! name: "Literature book"
Category.create! name: "Detective book"
Category.create! name: "science book"
Author.create! name: "J. K. Rowling"
Author.create! name: "Dale Carnegie"
BookCategory.create! book_id: 1, category_id: 1
BookCategory.create! book_id: 1, category_id: 2
BookCategory.create! book_id: 1, category_id: 3

10.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create! name: name, email: email, password: password,
    password_confirmation: password
end
