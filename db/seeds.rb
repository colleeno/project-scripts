# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tag.destroy_all
Script.destroy_all
Category.destroy_all

tv = Category.create(name: 'TV')
film = Category.create(name: 'Film')
life = Category.create(name: 'Life')
humor = Category.create(name: 'Humor')

dorothy = Script.create(quote: "There's no place like home.", character: "Dorothy Gale", show: "The Wizard of Oz")
yada = Script.create(quote: "Yada Yada Yada", character: "Elaine Benes", show: "Seinfeld")
bankruptcy = Script.create(quote: "I declare bankruptcy!", character: "Michael Scott", show: "The Office")
she_said = Script.create(quote: "That's what she said", character: "Michael Scott", show: "The Office")
chocolates = Script.create(quote: "Life is like a box of chocolates. You never know what you're gonna get.", character: "Forrest Gump", show: "Forrest Gump")

tv.tags.create(script: yada)
tv.tags.create(script: bankruptcy)
tv.tags.create(script: she_said)

film.tags.create(script: dorothy)
film.tags.create(script: chocolates)

life.tags.create(script: dorothy)
life.tags.create(script: chocolates)

humor.tags.create(script: she_said)
