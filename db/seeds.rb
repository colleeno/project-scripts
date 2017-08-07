# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Script.destroy_all
Category.destroy_all

tv = Category.create(name: 'TV')
film = Category.create(name: 'Film')

film.scripts.create(quote: "There's no place like home.", character: "Dorothy Gale", show: "The Wizard of Oz")
tv.scripts.create(quote: "Yada Yada Yada", character: "Elaine Benes", show: "Seinfeld")
tv.scripts.create(quote: "I declare bankruptcy!", character: "Michael Scott", show: "The Office")
tv.scripts.create(quote: "That's what she said", character: "Michael Scott", show: "The Office")
film.scripts.create(quote: "Life is like a box of chocolates. You never know what you're gonna get.", character: "Forrest Gump", show: "Forrest Gump")
film.scripts.create(quote: "Frankly, my dear, I don't give a damn.", character: "Rhett Butler", show: "Gone With The Wind")
film.scripts.create(quote: "A census taker once tried to test me. I ate his liver with some fava beans and a nice Chianti..", character: "Hannibal Lector", show: "Silence of the Lambs")
film.scripts.create(quote: "You had me at 'hello'. You had me at 'hello'.", character: "Dorothy Boyd", show: "Jerry Maguire")
film.scripts.create(quote: "We're gonna need a bigger boat.", character: "Martin Brody", show: "Jaws")
film.scripts.create(quote: "I carried a watermelon.", character: "Francis 'Baby' Houseman", show: "Dirty Dancing")
