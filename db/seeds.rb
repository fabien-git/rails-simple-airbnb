# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "destroy in progress"
Flat.destroy_all
puts "destroy ok!!"
puts "We create some data"
paris = {name: "Appartement Parisien", address: "56 rue de Montmartre - 750001 Paris", description: "logement lumineux et fabuleux! Whaouu", price_per_night: 120, number_of_guests: 4, image_url: "https://images.unsplash.com/photo-1501183638710-841dd1904471?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}
lyon = {name: "Appartement Lyonnais", address: "56 rue des lumières - 690001 Paris", description: "appartement chatoyant ", price_per_night: 140, number_of_guests: 2,image_url: "https://images.unsplash.com/photo-1501183638710-841dd1904471?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}
dijon = {name: "Appartement Dijonnais", address: "56 rue de la liberté - 21000 Dijon", description: "Grand logement et charmant", price_per_night: 100, number_of_guests: 6,image_url: "https://images.unsplash.com/photo-1501183638710-841dd1904471?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}
brest = {name: "Maison Brestois ou Brestain?", address: "56 rue du quai - 29000 Brest", description: "que dire??? § beau et sympa", price_per_night: 180, number_of_guests: 8,image_url: "https://images.unsplash.com/photo-1501183638710-841dd1904471?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"}
4.times do
  [paris, lyon, dijon, brest].each do |flat|
  Flat.create!(flat)
end
end
puts "ok all datas are in!"
