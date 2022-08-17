# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all
puts 'Creating restaurants...'
chez_martin = {name: 'Chez Martin', address: '1 avenue de la baguette 94000 Creteil', phone_number: '0149754251', category: 'french'}
pizza_east =  {name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', phone_number: '0149754215', category: 'belgian'}
musashi_sushi = {name: 'Musashi Sushi', address: '66 rue Samourai 94000 Creteil', phone_number: '0149757120', category: 'japanese'}
pepe_pizza =  {name: 'Pepe Pizza', address: '50 rue de la mozzarella 94320 Bonneuil', phone_number: '0248759632', category: 'italian'}
baokiller = {name: 'BaoKiller', address: '70 avenue du soleil 94000 Creteil', phone_number: '0489653214', category: 'chinese'}
[chez_martin, pizza_east, pepe_pizza, baokiller, musashi_sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name} #{restaurant.address} #{restaurant.phone_number} #{restaurant.category}"
end
puts 'Finished!'
