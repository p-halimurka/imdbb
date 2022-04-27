# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create([ { name: "Fantasy", description: "about fantastic events"},
                                { name: "Action", description: "about brutal men"},
                                { name: "Adventure", description: "about non-regular events"},
                                { name: "Thriller", description: "about scary events"},
                                { name: "Horror", description: "about terrifying events"}])

movies = Movie.create([{ title: 'Guardians of the Galaxy vol.1', description: "description of guardians vol.1", category_ids: [1,2] }, 
                        { title: 'Kings Man', description: "description of kings man...", category_ids: [2,3] }, 
                        { title: 'Spider man: no way home', description: "description of spider-man", category_ids: [1,3] }, 
                        { title: 'Thor', description: "description of thor", category_ids: [1, 2, 3] }, 
                        { title: 'Captain America', description: "description of captain america ... ", category_ids: [1, 2, 4] }])


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')