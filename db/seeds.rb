# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movies = Movie.create([{ title: 'Guardians of the Galaxy vol.1', description: "description of guardians vol.1", category: "Fantasy" }, { title: 'Kings Man', description: "description of kings man...", category: "Action" }, { title: 'Spider man: no way home', description: "description of spider-man", category: "Adventure" }, { title: 'Thor', description: "description of thor", category: "Adventure" }, { title: 'Captain America', description: "description of captain america ... ", category: "Adventure" }])