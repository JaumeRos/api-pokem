# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pokemon.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pokemon.create(name: 'Pikachu', char1:'Sting', level: 99)
Pokemon.create(name: 'Venasaur', char1:'Vena', level: 88)
Pokemon.create(name: 'Bulbasaur', char1:'Bulbi', level: 90)
Pokemon.create(name: 'Reggiesaur', char1:'Reggie', level: 78)
Pokemon.create(name: 'Angrysaur', char1:'Angry', level: 79)
