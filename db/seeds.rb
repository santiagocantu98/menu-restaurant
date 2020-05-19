# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') 


#alitas_centrito = Menu.create(
#  title: "Las Alitas Centrito",
#  description: "Menu principal de platos fuertes",
#)
#alitas_centrito.products.create(name: "La Matona", description: "Hamburguesa con todo", price: 150, order: 1, media: "imagen")
#alitas_centrito.products.create(name: "La Deliciosa", description: "Hamburguesa deliciosa", price: 120, order: 2, media: "imagen")


#alitas_cumbres = Menu.create(
#  title: "Las Alitas Cumbres",
#  description: "Menu principal de platos fuertes",

#)
#alitas_cumbres.products.create(name: "Matona", description: "Hamburguesa deliciosa", price: 130, order: 2, media: "imagen")
#alitas_cumbres.products.create(name: "Deliciosa", description: "Hamburguesa con todo", price: 130, order: 1, media: "imagen")