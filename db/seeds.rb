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
rhett = Script.create(quote: "Frankly, my dear, I don't give a damn.", character: "Rhett Butler", show: "Gone With The Wind")
hannibal = Script.create(quote: "A census taker once tried to test me. I ate his liver with some fava beans and a nice Chianti..", character: "Hannibal Lector", show: "Silence of the Lambs")
hello = Script.create(quote: "You had me at 'hello'. You had me at 'hello'.", character: "Dorothy Boyd", show: "Jerry Maguire")
boat = Script.create(quote: "We're gonna need a bigger boat.", character: "Martin Brody", show: "Jaws")
watermelon = Script.create(quote: "I carried a watermelon.", character: "Francis 'Baby' Houseman", show: "Dirty Dancing")
filma = Script.create(quote: "Here is another quote to list on my page", character: "Some character", show: "Some Movie")
filmb = Script.create(quote: "Here is another quote to list on my page", character: "Some character", show: "Some Movie")
filmc = Script.create(quote: "Here is another quote to list on my page", character: "Some character", show: "Some Movie")


tv.tags.create(script: yada)
tv.tags.create(script: bankruptcy)
tv.tags.create(script: she_said)

film.tags.create(script: dorothy)
film.tags.create(script: chocolates)
film.tags.create(script: rhett)
film.tags.create(script: hannibal)
film.tags.create(script: hello)
film.tags.create(script: boat)
film.tags.create(script: watermelon)
film.tags.create(script: filma)
film.tags.create(script: filmb)
film.tags.create(script: filmc)

life.tags.create(script: dorothy)
life.tags.create(script: chocolates)

humor.tags.create(script: she_said)
