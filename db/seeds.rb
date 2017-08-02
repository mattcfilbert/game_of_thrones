# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all

stark = House.create(name: 'Stark', img_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142', motto: 'Winter is coming...')
lan = House.create(name: 'Lannister', img_url: 'https://vignette2.wikia.nocookie.net/gameofthrones/images/0/0b/House-Lannister-heraldry.jpg/revision/latest?cb=20140402110342', motto: 'Hear me roar!')

arya = Character.create(name: 'Arya', img_url: 'https://media.vanityfair.com/photos/54170a772e32fc85609d1b2f/master/pass/maisie_GOT_close.png', house: stark)
jon = stark.characters.create(name: 'Jon', img_url: 'http://media.vanityfair.com/photos/576195600904a5835f0daee5/master/w_768,c_limit/GOT609_091715_HS_DSC_7379%5B1%5D.jpg')
jaime = lan.characters.create(name: 'Jaime', img_url: 'https://upload.wikimedia.org/wikipedia/en/b/b4/Jaime_Lannister-Nikolaj_Coster-Waldau.jpg')
tyrion = lan.characters.create(name: 'Tyrion', img_url: 'https://pbs.twimg.com/profile_images/668279339838935040/8sUE9d4C.jpg')
