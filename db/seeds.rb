# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Category.destroy_all
Product.destroy_all
User.destroy_all
Review.destroy_all

puts 'Create User'

def save_user(user)
  if user.save
    puts "user #{user.full_name} created"
  else
    puts "user #{user.full_name} has encountered a problem"
  end
end

user = User.new(full_name: 'Olivier', email: 'user@mail.fr', password: 'password')
save_user(user)

puts 'Create some catégories:'

def save_category(category)
  if category.save
    puts "category #{category.label} created"
  else
    puts "category #{category.label} has encountered a problem"
  end
end

cat1 = Category.new(label: 'Web')
save_category(cat1)

cat2 = Category.new(label: 'Insolite')
save_category(cat2)

cat3 = Category.new(label: 'Objets connectés')
save_category(cat3)

cat4 = Category.new(label: 'Social')
save_category(cat4)

cat5 = Category.new(label: 'Application')
save_category(cat5)

cat6 = Category.new(label: 'Design')
save_category(cat6)

cat7 = Category.new(label: 'Education')
save_category(cat7)

puts 'Create some products'

def save_product(product)
  if product.save
    puts "product #{product.title} created"
  else
    puts "product #{product.title} has encountered a problem"
  end
end

product1 = Product.new(title: 'product one',
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ",
                       url: "www.product-one.com",
                       release_date: DateTime.now + rand(1..150),
                       category: cat1,
                       user: user)
save_product(product1)

product2 = Product.new(title: 'product two',
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ",
                       url: "www.product-two.com",
                       release_date: DateTime.now + rand(1..150),
                       category: cat1,
                       user: user)
save_product(product2)

product3 = Product.new(title: 'product three',
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ",
                       url: "www.product-three.com",
                       release_date: DateTime.now + rand(1..150),
                       category: cat3,
                       user: user)
save_product(product3)

product4 = Product.new(title: 'product four',
                       description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ",
                       url: "www.product-four.com",
                       release_date: DateTime.now + rand(1..150),
                       category: cat5,
                       user: user)
save_product(product4)

puts 'Finished!'
puts "#{Category.count} categories created"
puts "#{Product.count} products created"
