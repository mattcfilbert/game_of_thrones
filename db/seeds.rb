# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all

stark = House.create(name: 'Stark', img_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142')

arya = stark.characters.create(name: 'Arya', img_url: 'https://media.vanityfair.com/photos/54170a772e32fc85609d1b2f/master/pass/maisie_GOT_close.png')
