# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


Location.destroy_all
Flat.destroy_all
User.destroy_all

location1 = Location.create(name: "Hogwarts")
location2 = Location.create(name: "Hagrid's Hut")
location3 = Location.create(name: "Shell Cottage")
location4 = Location.create(name: "Grimmault Place")
location5 = Location.create(name: "Diagon Alley")
location6 = Location.create(name: "Azkaban")
location7 = Location.create(name: "Shrieking Shack")
location8 = Location.create(name: "Platform 9 3/4")
location9 = Location.create(name: "Godric's Hollow")
location10 = Location.create(name: "Hogsmeade")
location11 = Location.create(name: "The Burrow")
location12 = Location.create(name: "Malfoy Manor")
location13 = Location.create(name: "Gringotts")
location14 = Location.create(name: "Surrey")

user1 = User.create(email: "samya@samya.de", password: "123456", first_name: "Samya",last_name: "LeWagon")
user2 = User.create(email: "anna@anna.de", password: "123456", first_name: "Anna",last_name: "LeWagon")
user3 = User.create(email: "nikolas@nikolas.de", password: "123456", first_name: "Nikolas",last_name: "LeWagon")
user4 = User.create(email: "dara@dara.de", password: "123456", first_name: "Dara",last_name: "LeWagon")

file = URI.open('https://images.unsplash.com/photo-1565292266983-74457d481f44?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat1 = Flat.create(title: "Cozy, boarding school style dormitory",
  description: "Spend a night in a cozy, boarding school style dormitory and apparate back into your school days.",
  location: location1,
  price: 100,
  user: user1)
flat1.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat1.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat1.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://images.ctfassets.net/usf1vwtuqyxm/2n8JnRmzLJdYzM4SoIzVLL/3dea9275b3be7b5aef314aeb89d7616a/release_1_hagrids_hut__1_.png')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat2 = Flat.create(title: "Hut with rustic charm near enticing forest",
  description: "Fall asleep to the obscure sounds of a magical forest.",
  location: location2,
  price: 200,
  user: user1)
flat2.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat2.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat2.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://data.whicdn.com/images/318203532/original.jpg')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat3 = Flat.create(title: "Cute, secluded cottage with private beach access",
  description: "Fall asleep to the calming sounds of the ocean.",
  location: location3,
  price: 150,
  user: user2)
flat3.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat3.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat3.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://i.pinimg.com/originals/6a/75/d8/6a75d8efd3e63103695a32ccc7a45858.jpg')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat4 = Flat.create(title: "Historic city manor near center",
  description: "Enjoy a spooky adventure in this beautifully decorated, central flat.",
  location: location4,
  price: 300,
  user: user2)
flat4.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat4.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat4.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')


file = URI.open('https://images.unsplash.com/photo-1548630826-2ec01a41f48f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1267&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat5 = Flat.create(title: "2 bedroom flat in eclectic magical quarter",
  description: "A two bedroom located in the center of a magical village.",
  location: location5,
  price: 100,
  user: user2)
flat5.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat5.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat5.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://static.wikia.nocookie.net/harrypotter/images/b/b6/Azkaban_concept_art.png/revision/latest?cb=20161216053518')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat6 = Flat.create(title: "Authentic prison experience in single or double cell",
  description: "Let yourself be engulfed by an intense experience.",
  location: location6,
  price: 100,
  user: user3)
flat6.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat6.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat6.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://i.pinimg.com/originals/a2/b4/21/a2b42165e1b9acc82be0982064758b7f.jpg')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat7 = Flat.create(title: "Beautiful abandoned house with spooky atmosphere for adventurers",
  description: "This beautiful abandoned house is perfect for adventurers.",
  location: location7,
  price: 100,
  user: user3)
flat7.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat7.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat7.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://images.unsplash.com/photo-1586796676789-f6fe8cc276f7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat8 = Flat.create(title: "Ascetic accomodation at whimsical trainstation",
  description: "Only for true ascetics! Feel the transcending joy of a minimalistic accomodation.",
  location: location8,
  price: 500,
  user: user3)
flat8.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat8.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat8.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

file = URI.open('https://static.wikia.nocookie.net/harrypotter/images/a/a8/GodricsHollow_WB_F7_GodricsHollowReferencePhoto_Still_080615_Land_%281%29.jpg/revision/latest/scale-to-width-down/1000?cb=20161224213109')
file2 = URI.open('https://images.unsplash.com/photo-1527684651001-731c474bbb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80')
file3 = URI.open('https://images.unsplash.com/photo-1500373994708-4d781bd7bd15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2550&q=80')
flat9 = Flat.create(title: "Lovely 3 bedroom house surrounded by quaint landscape",
  description: "Just a stone throw away from the quaint heart of the village lies this beautiful 3 bedroom house.",
  location: location9,
  price: 100,
  user: user4)
flat9.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
flat9.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
flat9.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

