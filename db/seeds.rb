Alert.destroy_all
Contact.destroy_all
Tag.destroy_all
User.destroy_all

puts 'Creating database...'

ludo = User.create!(first_name: "Ludo", last_name: "Easy", email: "ludo@easy.fr", password: "ludoeasy")
caro = User.create!(first_name: 'Caro', last_name: 'Easy', email: "caro@easy.fr",password: 'caroeasy')

#faten = User.new(first_name: 'Faten', last_name: 'Easy', email: 'faten@feasycontactscom', password: 'fateneasy')
# faten.avatar = File.open(Rails.root.join('db/fixtures/faten.jpeg'))
# faten.create!
# neven = User.new(name: 'Neven', email: 'neven@easycontacts.com', password: 'neveneasy')
# neven.avatar = File.open(Rails.root.join('db/fixtures/neven.jpeg'))
# neven.create!

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
ct1 = Contact.create!(first_name: 'Jean',last_name: 'Dupont', email: "jean@easy.fr", user: ludo)
listct << ct1
ct2 = Contact.create!(first_name: 'Marc',last_name: 'Beau', email: "marc@easy.fr", user: ludo)
listct << ct2
ct3 = Contact.create!(first_name: 'Philippe',last_name: 'Bau', email: "philippe@easy.fr", user: ludo)
listct << ct3
ct4 = Contact.create!(first_name: 'Michel',last_name: 'Billot', email: "michel@easy.fr", user: caro)
listct << ct4
ct5 = Contact.create!(first_name: 'Pierre',last_name: 'Vinaigre', email: "pierre@easy.fr", user: caro)
listct << ct5
ct6 = Contact.create!(first_name: 'Antoine',last_name: 'Potte', email: "antoine@easy.fr", user: ludo)
listct << ct6
ct7 = Contact.create!(first_name: 'Lila',last_name: 'Ducros', email: "lila@easy.fr", user: ludo)
listct << ct7

al1 = Alert.create!(title: 'Anniversaire', datetime: Date.today+rand(50), contact: listct.sample)
al2 = Alert.create!(title: 'Aller à la Piscine', datetime: Date.today+rand(50), contact: listct.sample)
al3 = Alert.create!(title: 'Rappeler mon chien', datetime: Date.today+rand(50), contact: listct.sample )
al4 = Alert.create!(title: 'Cadeau pour ma fille', datetime: Date.today+rand(50), contact: listct.sample )
al5 = Alert.create!(title: "Vacances, c'est maintenant", datetime: Date.today+rand(50), contact: listct.sample)


nt1 = Note.new(content: 'je dois aller à la piscine', contact: ct1)
nt2 = Note.new(content: 'je dois faire les courses', contact: ct3)
nt3 = Note.new(content: 'penser à aller en cours', contact: ct2)
nt4 = Note.new(content: 'je dois payer le wagon', contact: ct4)
nt5 = Note.new(content: 'et pourquoi pas le Senegal', contact: ct5)
nt6 = Note.new(content: "j'adoooore le coucous", contact: ct6)
nt7 = Note.new(content: 'Marmiton est le milleur site du mooooooonde', contact: listct.sample)

ntag1 = NoteTag.create!(tag: tg1,note: nt1)
ntag2 = NoteTag.create!(tag: tg1, note: nt2)
ntag3 = NoteTag.create!(tag: tg3, note: nt1)
ntag4 = NoteTag.create!(tag: tg3, note: nt2)
ntag5 = NoteTag.create!(tag: tg4, note: nt2)
ntag6 = NoteTag.create!(tag: tg2, note: nt3)
ntag7 = NoteTag.create!(tag: tg10, note: nt4)
ntag8 = NoteTag.create!(tag: tg11, note: nt5)
ntag9 = NoteTag.create!(tag: tg12, note: nt6)
ntag10 = NoteTag.create!(tag: tg13, note: nt7)

