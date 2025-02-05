# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all

puts "Creating restaurants..."
shack = Restaurant.create(name: "Karen's Lobster Shack", price: 1)
bistro = Restaurant.create(name: "Sanjay's Lobster Bistro", price: 2)
palace = Restaurant.create(name: "Kiki's Lobster Palace", price: 3)

puts "Creating customers..."
baby_spice = Customer.create(first_name: "Emma", last_name: "Bunton")
ginger_spice = Customer.create(first_name: "Geri", last_name: "Halliwell")
scary_spice = Customer.create(first_name: "Melanie", last_name: "Brown")
sporty_spice = Customer.create(first_name: "Melanie", last_name: "Chisholm")
posh_spice = Customer.create(first_name: "Victoria", last_name: "Addams")

puts "Creating reviews..."
# ********************************************************************
# * TODO: create reviews! Remember, a review belongs to a restaurant *
# * and a review belongs to a customer.                              *
# ********************************************************************
# Create reviews Here
review1 = Review.create(star_rating: 2, customer_id: Customer.first.id, restaurant_id: Restaurant.second.id)
review2 = Review.create(star_rating: 1, customer_id: Customer.third.id, restaurant_id: Restaurant.first.id)
review3 = Review.create(star_rating: 5, customer_id: Customer.first.id, restaurant_id: Restaurant.second.id)
review4 = Review.create(star_rating: 3, customer_id: Customer.fourth.id, restaurant_id: Restaurant.third.id)
review5 = Review.create(star_rating: 4, customer_id: Customer.fifth.id, restaurant_id: Restaurant.first.id)
puts "Seeding done!"