# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

restaurants = [
  { name: "Golden Dragon", address: "10 Panda Lane, Shanghai", category: "chinese" },
  { name: "Trattoria Toscana", address: "25 Olive Road, Florence", category: "italian" },
  { name: "Sakura Delight", address: "100 Cherry Blossom St, Kyoto", category: "japanese" },
  { name: "Le Petit Bistro", address: "5 Rue de Paris, Lyon", category: "french" },
  { name: "Belgian Waffles & Co.", address: "78 Grand Place, Brussels", category: "belgian" }
]
restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Finished! Created #{Restaurant.count} restaurants."
