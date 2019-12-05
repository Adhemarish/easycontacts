puts "Cleaning database..."
Alert.destroy_all
Contact.destroy_all
Tag.destroy_all
User.destroy_all

puts "Creating database..."

ludo = User.create!(first_name: "Ludo", last_name: "Easy", email: "ludo@easy.fr", password: "ludoeasy")


tg1 = Tag.create!(user: ludo, label: 'Ruby', color:'red')
tg2 = Tag.create!(user: ludo, label: 'React', color: 'yellow')
tg3 = Tag.create!(user: ludo, label: 'Javascript',color: 'orange')
tg4 = Tag.create!(user: ludo, label: 'Rails',color: 'green')
tg5 = Tag.create!(user: ludo, label: 'Freelance', color: 'green')
tg6 = Tag.create!(user: ludo, label: 'Patron',color: 'red')
tg7 = Tag.create!(user: ludo, label: 'Dev 3 ans xp',color: 'yellow')



ct1 = Contact.new(first_name: 'Jean',last_name: 'Dupont', email: "jean_dupont@wanadoo.fr", user: ludo)
url1 = "https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/jean_skbh2e.jpg"
ct1.remote_avatar_url = url1
ct1.save!


ct2 = Contact.new(first_name: 'Marc',last_name: 'Beau', email: "marc.beau@orange.fr", user: ludo)
url2 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/marc_nt5yhk.jpg'
ct2.remote_avatar_url = url2
ct2.save!

ct3 = Contact.new(first_name: 'Philippe',last_name: 'Forêt', email: "philippe_foret@gmail.com", user: ludo)
url3 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/philippe_bfdtpq.jpg'
ct3.remote_avatar_url = url3
ct3.save!

ct4 = Contact.new(first_name: 'Michelle',last_name: 'Billot', email: "michelle.b@laposte.net", user: ludo)
url4 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/michelle_za0a5g.jpg'
ct4.remote_avatar_url = url4
ct4.save!

ct5 = Contact.new(first_name: 'Hélène',last_name: 'Vinaigre', email: "helene_vinaigre@yahoo.com", user: ludo)
url5 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/helene_ex10tq.jpg'
ct5.remote_avatar_url = url5
ct5.save!

ct6 = Contact.new(first_name: 'Karen',last_name: 'Potte', email: "karen.potte@hotmail.com", user: ludo)
url6 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/karen_fd4kmz.jpg'
ct6.remote_avatar_url = url6
ct6.save!

ct7 = Contact.new(first_name: 'Lila',last_name: 'Ducros', email: "l.ducros@msn.fr", user: ludo)
url7 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468744/EASYCONTACTS/lila_nsageu.jpg'
ct7.remote_avatar_url = url7
ct7.save!

al1 = Alert.create!(title: 'Anniversaire', datetime: Date.parse("12/12/2019"), contact: ct1)
al2 = Alert.create!(title: 'Rappler pour suivi candidature', datetime: Date.parse("13/12/2019"), contact: ct2)
al3 = Alert.create!(title: 'Email pour lancement projet', datetime: Date.parse("13/12/2019"), contact: ct3 )
al4 = Alert.create!(title: 'Examen fille', datetime: Date.parse("13/12/2019"), contact: ct4 )
al5 = Alert.create!(title: "Proposer déjeuner mardi midi", datetime: Date.parse("18/01/2020"), contact: ct5)
al6 = Alert.create!(title: "Demander contact client", datetime: Date.parse("22/02/2020"), contact: ct6)
al7 = Alert.create!(title: "Envoyer CV stagiaire", datetime: Date.parse("01/02/2020"), contact: ct7)

nt1 = Note.new(content: 'Hobbies: piscine', contact: ct1)
nt2 = Note.new(content: 'Hobbies: cuisine', contact: ct3)
nt3 = Note.new(content: 'Projet: site ecommerce', contact: ct2)
nt4 = Note.new(content: 'Kokotte: équipe Alex et Julie', contact: ct4)
nt5 = Note.new(content: 'Voyages: Sénégal', contact: ct5)
nt6 = Note.new(content: "Ancienne Google", contact: ct6)
nt7 = Note.new(content: 'Site préféré: Marmiton', contact: ct7)

ntag1 = NoteTag.create!(tag: tg1,note: nt1)
ntag2 = NoteTag.create!(tag: tg1, note: nt2)
ntag3 = NoteTag.create!(tag: tg3, note: nt1)
ntag4 = NoteTag.create!(tag: tg3, note: nt2)
ntag5 = NoteTag.create!(tag: tg4, note: nt2)
ntag6 = NoteTag.create!(tag: tg2, note: nt3)
ntag7 = NoteTag.create!(tag: tg6, note: nt4)
ntag8 = NoteTag.create!(tag: tg7, note: nt5)
ntag9 = NoteTag.create!(tag: tg7, note: nt6)
ntag10 = NoteTag.create!(tag: tg2, note: nt7)

p "Finished!"
