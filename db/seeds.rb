# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Alert.destroy_all
Contact.destroy_all
Tag.destroy_all
User.destroy_all

puts "Creating database..."

ludo = User.create!(first_name: 'Ludo', last_name: 'Easy', email: 'ludo@easy.fr', password:'ludoeasy')


caro = User.create!(first_name: 'Caro', last_name: 'Easy', email: 'caro@easy.fr',password: 'caroeasy')

#faten = User.new(first_name: 'Faten', last_name: 'Easy', email: 'faten@feasycontactscom', password: 'fateneasy')
#faten.avatar = File.open(Rails.root.join('db/fixtures/faten.jpeg'))
#faten.create!

#neven = User.new(name: 'Neven', email: 'neven@easycontacts.com', password: 'neveneasy')
#neven.avatar = File.open(Rails.root.join('db/fixtures/neven.jpeg'))
#neven.create!

tg1 = Tag.create!(user: ludo, label: 'Ski')
tg2 = Tag.create!(user: ludo, label: 'React JS')
tg3 = Tag.create!(user: ludo, label: 'Vue JS')
tg4 = Tag.create!(user: ludo, label: 'Rails')
tg5 = Tag.create!(user: ludo, label: 'CSS')
tg6 = Tag.create!(user: ludo, label: 'EM Lyon')
tg7 = Tag.create!(user: ludo, label: 'TypeForm')

tg8 = Tag.create!(user: caro, label: 'Cuisine')
tg9 = Tag.create!(user: caro, label: 'Décoration')
tg10 = Tag.create!(user: caro, label: 'Python')
tg11 = Tag.create!(user: caro, label: 'Ruby')
tg12 = Tag.create!(user: caro, label: 'CSS')
tg13 = Tag.create!(user: caro, label: 'EDHEC')
tg14 = Tag.create!(user: caro, label: 'TypeForm')

listct = []
ct1 = Contact.create!(first_name: 'Jean',last_name: 'Dupont', email: 'jean@easy.fr', user: ludo)
listct << ct1
ct2 = Contact.create!(first_name: 'Marc',last_name: 'Beau', email: 'marc@easy.fr')
listct << ct2
# ct3 = Contact.create!(first_name: 'PHilippe',last_name: 'Bau', email: 'philippe@easy.fr')
# listct << ct3
# ct4 = Contact.create!(first_name: 'Michel',last_name: 'Billot', email: 'michel@easy.fr')
# listct << ct4
# ct5 = Contact.create!(first_name: 'Pierre',last_name: 'Vinaigre', email: 'pierre@easy.fr')
# listct << ct5
# ct6 = Contact.create!(first_name: 'Antoine',last_name: 'Potte', email: 'antoine@easy.fr')
# listct << ct6
# ct7 = Contact.create!(first_name: 'Lila',last_name: 'Ducros', email: 'lila@easy.fr')
# listct << ct7



# al1 = Alert.create!(title: 'Anniversaire', datetime: Date.today+rand(50), contact: listct.sample )

