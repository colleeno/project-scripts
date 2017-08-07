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
film.scripts.create(quote: "Life is like a box of chocolates. You never know what you're gonna get.", character: "Forrest Gump", show: "Forrest Gump")
film.scripts.create(quote: "Frankly, my dear, I don't give a damn.", character: "Rhett Butler", show: "Gone With The Wind")
film.scripts.create(quote: "A census taker once tried to test me. I ate his liver with some fava beans and a nice Chianti..", character: "Hannibal Lector", show: "Silence of the Lambs")
film.scripts.create(quote: "You had me at 'hello'. You had me at 'hello'.", character: "Dorothy Boyd", show: "Jerry Maguire")
film.scripts.create(quote: "We're gonna need a bigger boat.", character: "Martin Brody", show: "Jaws")
film.scripts.create(quote: "I carried a watermelon.", character: "Francis 'Baby' Houseman", show: "Dirty Dancing")

tv.scripts.create(quote: "That's what I do. I drink, and I know things.", character: "Tyrion Lannister", show: "Game of Thrones")
tv.scripts.create(quote: "As long as it rhymes, everything will be fines", character: "Titus Andromedon", show: "Unbreakable Kimmy Schmidt")
tv.scripts.create(quote: "Yada Yada Yada", character: "Elaine Benes", show: "Seinfeld")
tv.scripts.create(quote: "I declare bankruptcy!", character: "Michael Scott", show: "The Office")
tv.scripts.create(quote: "That's what she said", character: "Michael Scott", show: "The Office")
tv.scripts.create(quote: "Well, isn't that special?", character: "Church Lady", show: "Saturday Night Live")
tv.scripts.create(quote: "Dracarys", character: "Daenerys Targaryen", show: "Game of Thrones")
tv.scripts.create(quote: "The four R's my friend: Reduce, Reuse, Recycle, Rihanna.", character: "Ilana Glazer", show: "Broad City")
tv.scripts.create(quote: "I'm pretty but tough, like a diamond. Or beef jerky in a ball gown.", character: "Titus Andromedon", show: "Unbreakable Kimmy Schmidt")
tv.scripts.create(quote: "Hashbrown: no filter.", character: "Kimmy Schmidt", show: "Unbreakable Kimmy Schmidt")
tv.scripts.create(quote: "I am Beyonce. Always.", character: "Michael Scott", show: "The Office")
tv.scripts.create(quote: "These pretzels are making me thirsty", character: "George Costanza", show: "Seinfeld")
tv.scripts.create(quote: "I wish there was a way to know you're in the good old days before you've actually left them.", character: "Andy Bernard", show: "The Office")
tv.scripts.create(quote: "I am Beyonce. Always.", character: "Michael Scott", show: "The Office")
tv.scripts.create(quote: "I'll keep the crowd away like a Greenpeace volunteer.", character: "Titus Andromedon", show: "Unbreakable Kimmy Schmidt")
tv.scripts.create(quote: "I'm gonna be direct and honest with you, I would like a glass of red wine and I'll take the cheapest one you have because I can't tell the difference.", character: "Leslie Nope", show: "Parks and Recreation")
tv.scripts.create(quote: "I typed your symptoms into the thing up here, and it says you could have network connectivity problems.", character: "Andy Dwyer", show: "Parks and Recreation")
tv.scripts.create(quote: "I'm not running a charity here, except the one where I donate my old towels to poor people with the same initials as me.", character: "Jacqueline Voorhes", show: "Unbreakable Kimmy Schmidt")
tv.scripts.create(quote: "It’s a moo point. It’s like a cow’s opinion; it doesn’t matter. It’s moo.", character: "Joey Tribbiani", show: "Friends")
