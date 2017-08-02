# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all

stark = House.create(name: 'Stark', img_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142')
lan = House.create(name: 'Lannister', img_url: 'https://vignette2.wikia.nocookie.net/gameofthrones/images/0/0b/House-Lannister-heraldry.jpg/revision/latest?cb=20140402110342')

arya = stark.characters.create(name: 'Arya', img_url: 'https://media.vanityfair.com/photos/54170a772e32fc85609d1b2f/master/pass/maisie_GOT_close.png')
jaime = lan.characters.create(name: 'Jaime', img_url: 'https://upload.wikimedia.org/wikipedia/en/b/b4/Jaime_Lannister-Nikolaj_Coster-Waldau.jpg')
