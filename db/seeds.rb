# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all

stark = House.create(name: 'Stark', sentence: 'behead', img_url: 'http://vignette4.wikia.nocookie.net/gameofthrones/images/8/8a/House-Stark-Main-Shield.PNG/revision/latest?cb=20170101103142', motto: 'Winter is coming...')
lan = House.create(name: 'Lannister', sentence: 'assassinate', img_url: 'https://vignette3.wikia.nocookie.net/gameofthrones/images/8/8a/House-Lannister-Main-Shield.PNG/revision/latest?cb=20170101095357', motto: 'Hear me roar!')
bar = House.create(name: 'Baratheon', sentence: 'bludgeon', img_url: 'https://vignette4.wikia.nocookie.net/gameofthrones/images/0/00/House-Baratheon-Main-Shield.PNG/revision/latest?cb=20170519002924', motto: 'Ours is the fury!')
ty = House.create(name: 'Tyrell', sentence: 'poison', img_url: 'https://vignette2.wikia.nocookie.net/gameofthrones/images/c/cf/House-Tyrell-Main-Shield.PNG/revision/latest?cb=20170108163035', motto: 'Growing strong!')
mar = House.create(name: 'Martell', sentence: 'spear', img_url: 'https://vignette2.wikia.nocookie.net/gameofthrones/images/7/7e/House-Martell-Main-Shield.PNG/revision/latest?cb=20170523024859', motto: 'Family, duty, honor.')
gry = House.create(name: 'Greyjoy', sentence: 'drown', img_url: 'https://vignette3.wikia.nocookie.net/gameofthrones/images/8/86/House-Greyjoy-Main-Shield.PNG/revision/latest?cb=20170523015836', motto: 'We do not sow.')
tar = House.create(name: 'Targaryen', sentence: 'burn', img_url: 'https://vignette2.wikia.nocookie.net/gameofthrones/images/4/43/House-Targaryen-Main-Shield.PNG/revision/latest?cb=20170510235320', motto: 'Fire and blood.')

arya = Character.create(name: 'Arya', img_url: 'https://media.vanityfair.com/photos/54170a772e32fc85609d1b2f/master/pass/maisie_GOT_close.png', house: stark)
jon = stark.characters.create(name: 'Jon', img_url: 'http://media.vanityfair.com/photos/576195600904a5835f0daee5/master/w_768,c_limit/GOT609_091715_HS_DSC_7379%5B1%5D.jpg')
jaime = lan.characters.create(name: 'Jaime', img_url: 'https://upload.wikimedia.org/wikipedia/en/b/b4/Jaime_Lannister-Nikolaj_Coster-Waldau.jpg')
tyrion = lan.characters.create(name: 'Tyrion', img_url: 'https://pbs.twimg.com/profile_images/668279339838935040/8sUE9d4C.jpg')
