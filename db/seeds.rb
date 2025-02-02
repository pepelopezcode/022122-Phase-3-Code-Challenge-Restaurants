# This will delete any existing rows from the Restaurant and Customer tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Restaurant/Customer data..."
Restaurant.destroy_all
Customer.destroy_all
Review.destroy_all

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
review1 = Review.create(star_rating: 1, customer_id: baby_spice.id, restaurant_id: shack.id)
review2 = Review.create(star_rating: 2, customer_id: ginger_spice.id, restaurant_id: palace.id)
review3 = Review.create(star_rating: 3, customer_id: baby_spice.id, restaurant_id: bistro.id)
review4 = Review.create(star_rating: 4, customer_id: scary_spice.id, restaurant_id: shack.id)
review5 = Review.create(star_rating: 5, customer_id: scary_spice.id, restaurant_id: palace.id)
review6 = Review.create(star_rating: 6, customer_id: sporty_spice.id, restaurant_id: shack.id)
review7 = Review.create(star_rating: 7, customer_id: posh_spice.id, restaurant_id: bistro.id)
review8 = Review.create(star_rating: 8, customer_id: posh_spice.id, restaurant_id: palace.id)
review9 = Review.create(star_rating: 9, customer_id: sporty_spice.id, restaurant_id: shack.id)


puts "Seeding done!"