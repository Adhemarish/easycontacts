puts "Cleaning database..."
Alert.destroy_all
Contact.destroy_all
Tag.destroy_all
User.destroy_all

puts "Creating database..."

ludo = User.create!(first_name: "Ludo", last_name: "Easy", email: "lhuillier.ludovic@yahoo.com", password: "ludoeasy")



ct1 = Contact.new(first_name: 'Jean',last_name: 'Dupont', email: "jean_dupont@wanadoo.fr", user: ludo)
url1 = "https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/jean_skbh2e.jpg"
ct1.remote_avatar_url = url1
ct1.save!


ct2 = Contact.new(first_name: 'Marc',last_name: 'Leroy', email: "marc.leroy@orange.fr", user: ludo)
url2 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/marc_nt5yhk.jpg'
ct2.remote_avatar_url = url2
ct2.save!

ct3 = Contact.new(first_name: 'Philippe',last_name: 'Forêt', email: "philippe_foret@gmail.com", user: ludo)
url3 = 'https://res.cloudinary.com/dqfa6bybq/image/upload/v1575468710/EASYCONTACTS/philippe_bfdtpq.jpg'
ct3.remote_avatar_url = url3
ct3.save!

ct4 = Contact.new(first_name: 'Michelle',last_name: 'Billot', email: "michelle.b@laposte.net", user: ludo, phone_number: "0625703774")
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
al8 = Alert.create!(title: 'Proposer déjeuner', datetime: Date.parse("06/01/2020"), contact: ct1)
al9 = Alert.create!(title: 'Faire passer CV à Hélène', datetime: Date.parse("24/12/2019"), contact: ct2)
al10 = Alert.create!(title: 'Rappler pour suivi candidature', datetime: Date.parse("17/12/2019"), contact: ct3 )
al11 = Alert.create!(title: 'Envoyer email relance documents', datetime: Date.parse("19/12/2019"), contact: ct4 )
al12 = Alert.create!(title: "Demander résumé voyage", datetime: Date.parse("22/02/2020"), contact: ct5)
al13 = Alert.create!(title: "Relance pour paiement", datetime: Date.parse("01/03/2020"), contact: ct6)
al14 = Alert.create!(title: "Anniversaire", datetime: Date.parse("15/03/2020"), contact: ct7)

tg1 = Tag.create!(user: ludo, label: 'Ruby', color:'red-tag')
tg2 = Tag.create!(user: ludo, label: 'React', color: 'yellow-tag')
tg3 = Tag.create!(user: ludo, label: 'Javascript',color: 'orange-tag')
tg4 = Tag.create!(user: ludo, label: 'Rails',color: 'green-tag')
tg5 = Tag.create!(user: ludo, label: 'Freelance', color: 'red-tag')
tg6 = Tag.create!(user: ludo, label: 'Patron',color: 'blue-tag')
tg7 = Tag.create!(user: ludo, label: 'Dev 3 ans xp',color: 'yellow-tag')
tg8 = Tag.create!(user: ludo, label: 'Tennis', color:'red-tag')
tg9 = Tag.create!(user: ludo, label: 'Football', color: 'blue-tag')
tg10 = Tag.create!(user: ludo, label: 'Cuisine asiatique',color: 'orange-tag')
tg11 = Tag.create!(user: ludo, label: 'Gastronomie',color: 'green-tag')
tg12 = Tag.create!(user: ludo, label: 'Oenologie', color: 'green-tag')
tg13 = Tag.create!(user: ludo, label: 'EDHEC',color: 'blue-tag')
tg14 = Tag.create!(user: ludo, label: 'Sorbonne',color: 'yellow-tag')
tg15 = Tag.create!(user: ludo, label: 'Ski', color:'red-tag')
tg16 = Tag.create!(user: ludo, label: 'Luxe', color: 'yellow-tag')
tg17 = Tag.create!(user: ludo, label: 'Automobile',color: 'orange-tag')
tg18 = Tag.create!(user: ludo, label: 'Santé',color: 'green-tag')
tg19 = Tag.create!(user: ludo, label: 'Ecommerce', color: 'yellow-tag')
tg20 = Tag.create!(user: ludo, label: 'BTP',color: 'blue-tag')
tg21 = Tag.create!(user: ludo, label: 'Education',color: 'yellow-tag')
tg22 = Tag.create!(user: ludo, label: 'Perso',color: 'red-tag')


nt1 = Note.new(content: 'Hobbies', contact: ct1)
nt2 = Note.new(content: 'Hobbies', contact: ct3)
nt3 = Note.new(content: 'Projet: site ecommerce', contact: ct2)
nt4 = Note.new(content: 'Kokotte: équipe Alex et Julie', contact: ct4)
nt5 = Note.new(content: 'Voyages: Sénégal, Espagne', contact: ct5)
nt6 = Note.new(content: "Ancienne Google", contact: ct6)
nt7 = Note.new(content: 'Site préféré: Marmiton', contact: ct7)
nt8 = Note.new(content: 'Projet: appli network', contact: ct1)
nt9 = Note.new(content: 'Personnalité: calme', contact: ct3)
nt10 = Note.new(content: 'Voyages: USA, Mexique', contact: ct2)
nt11 = Note.new(content: 'Rencontre: via Lila', contact: ct4)
nt12 = Note.new(content: 'Kokotte: équipe Suricate', contact: ct5)
nt13 = Note.new(content: "Parcours: Orange, Bouygues Telecom, Eiffage", contact: ct6)
nt14 = Note.new(content: 'Projet: site bénévolat', contact: ct7)
nt15 = Note.new(content: 'Famille: 1 fille 12 ans, marié', contact: ct2)
nt16 = Note.new(content: 'Contacts: connaît très bien 1 dev JS', contact: ct2)
nt17 = Note.new(content: 'Parcours: ancien LVMH', contact: ct2)

ntag1 = NoteTag.create!(tag: tg1,note: nt3)
ntag2 = NoteTag.create!(tag: tg2, note: nt3)
ntag3 = NoteTag.create!(tag: tg3, note: nt14)
ntag4 = NoteTag.create!(tag: tg4, note: nt2)
ntag5 = NoteTag.create!(tag: tg5, note: nt4)
ntag6 = NoteTag.create!(tag: tg6, note: nt12)
ntag7 = NoteTag.create!(tag: tg7, note: nt11)
ntag8 = NoteTag.create!(tag: tg8, note: nt1)
ntag9 = NoteTag.create!(tag: tg9, note: nt1)
ntag10 = NoteTag.create!(tag: tg10, note: nt7)
ntag11 = NoteTag.create!(tag: tg11,note: nt2)
ntag12 = NoteTag.create!(tag: tg12, note: nt10)
ntag13 = NoteTag.create!(tag: tg13, note: nt6)
ntag14 = NoteTag.create!(tag: tg14, note: nt9)
ntag15 = NoteTag.create!(tag: tg15, note: nt2)
ntag16 = NoteTag.create!(tag: tg16, note: nt7)
ntag17 = NoteTag.create!(tag: tg17, note: nt2)
ntag18 = NoteTag.create!(tag: tg19, note: nt3)
ntag19 = NoteTag.create!(tag: tg20, note: nt13)
ntag20 = NoteTag.create!(tag: tg7, note: nt16)
ntag21 = NoteTag.create!(tag: tg3, note: nt16)
ntag22 = NoteTag.create!(tag: tg16, note: nt17)
ntag23 = NoteTag.create!(tag: tg22, note: nt15)

p "Finished!"
