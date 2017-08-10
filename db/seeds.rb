# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Script.destroy_all
Category.destroy_all

admin = User.create(email: 'colleenaoreilly@gmail.com', password: 'password')

tv = Category.create(name: 'tv')
film = Category.create(name: 'film')

film.scripts.create(quote: "There's no place like home.", character: "Dorothy Gale", show: "The Wizard of Oz", user: admin)
film.scripts.create(quote: "Life is like a box of chocolates. You never know what you're gonna get.", character: "Forrest Gump", show: "Forrest Gump", user: admin)
film.scripts.create(quote: "Frankly, my dear, I don't give a damn.", character: "Rhett Butler", show: "Gone With The Wind", user: admin)
film.scripts.create(quote: "A census taker once tried to test me. I ate his liver with some fava beans and a nice Chianti..", character: "Hannibal Lector", show: "Silence of the Lambs", user: admin)
film.scripts.create(quote: "You had me at 'hello'.", character: "Dorothy Boyd", show: "Jerry Maguire", user: admin)
film.scripts.create(quote: "We're gonna need a bigger boat.", character: "Martin Brody", show: "Jaws", user: admin)
film.scripts.create(quote: "I carried a watermelon.", character: "Francis 'Baby' Houseman", show: "Dirty Dancing", user: admin)
film.scripts.create(quote: "Where we're going, we don't need roads.", character: "Dr. Emmett Brown", show: "Back to the Future", user: admin)
film.scripts.create(quote: "May I please remind you that it does not say ‘RSVP’ on the Statue of Liberty.", character: "Cher Horowitz", show: "Clueless", user: admin)
film.scripts.create(quote: "Oh, no, it wasn't the airplanes. It was Beauty killed the Beast.", character: "Carl Denham", show: "King Kong", user: admin)
film.scripts.create(quote: "Your scientists were so preoccupied with whether or not they could that they didn't stop to think if they should.", character: "Dr. Ian Malcolm", show: "Jurassic Park", user: admin)
film.scripts.create(quote: "Snakes. Why'd it have to be snakes?", character: "Indiana Jones", show: "Raiders of the Lost Ark", user: admin)
film.scripts.create(quote: "No, I like you very much. Just as you are.", character: "Mark Darcy", show: "Bridget Jones's Diary", user: admin)
film.scripts.create(quote: "Life moves pretty fast. If you don't stop and look around once in a while, you could miss it.", character: "Ferris Bueller", show: "Ferris Bueller's Day Off", user: admin)
film.scripts.create(quote: "Get busy living, or get busy dying.", character: "Andy Dufresne", show: "The Shawshank Redemption", user: admin)
film.scripts.create(quote: "They may take our lives, but they'll never take our freedom!", character: "William Wallace", show: "Braveheart", user: admin)
film.scripts.create(quote: "There’s no crying in baseball!", character: "Jimmy Dugan", show: "A League of Their Own", user: admin)
film.scripts.create(quote: "The seaweed is always greener in somebody else’s lake.", character: "Sebastian", show: "The Little Mermaid", user: admin)
film.scripts.create(quote: "If I could only have one food for the rest of my life? That's easy-Pez. Cherry-flavored Pez. No question about it.", character: "Vern", show: "Stand By Me", user: admin)
film.scripts.create(quote: "Do you have some sort of business woman special?", character: "Romy White", show: "Romy and Michele's High School Reunion", user: admin)
film.scripts.create(quote: "It is a truth universally acknowledged that when one part of your life starts going okay, another falls spectacularly to pieces.", character: "Bridget Jones", show: "Bridget Jones's Diary", user: admin)
film.scripts.create(quote: "Are you not entertained?", character: "Maximus Decimus Meridius", show: "Gladiator", user: admin)
film.scripts.create(quote: "Good work. Sleep well. I'll most likely kill you in the morning.", character: "Dread Pirate Roberts", show: "The Princess Bride", user: admin)
film.scripts.create(quote: "I love scotch. Scotchy scotch scotch. Here it goes down, down into my belly.", character: "Ron Burgundy", show: "Anchorman", user: admin)
film.scripts.create(quote: "What is this? A center for ants? How can we be expected to teach children to learn how to read... if they can't even fit inside the building?", character: "Derek Zoolander", show: "Zoolander", user: admin)
film.scripts.create(quote: "The greatest trick the Devil ever pulled was convincing the world he didn't exist.", character: "Roger 'Verbal' Kint", show: "The Usual Suspects", user: admin)

tv.scripts.create(quote: "That's what she said", character: "Michael Scott", show: "The Office", user: admin)
tv.scripts.create(quote: "Dracarys", character: "Daenerys Targaryen", show: "Game of Thrones", user: admin)
tv.scripts.create(quote: "The four R's my friend: Reduce, Reuse, Recycle, Rihanna.", character: "Ilana Glazer", show: "Broad City", user: admin)
tv.scripts.create(quote: "I'm pretty but tough, like a diamond. Or beef jerky in a ball gown.", character: "Titus Andromedon", show: "Unbreakable Kimmy Schmidt", user: admin)
tv.scripts.create(quote: "Hashbrown: no filter.", character: "Kimmy Schmidt", show: "Unbreakable Kimmy Schmidt", user: admin)
tv.scripts.create(quote: "I am Beyonce. Always.", character: "Michael Scott", show: "The Office", user: admin)
tv.scripts.create(quote: "To alcohol! The cause of, and solution to, all of life’s problems.", character: "Homer Simpson", show: "The Simpsons", user: admin)
tv.scripts.create(quote: "I wish there was a way to know you're in the good old days before you've actually left them.", character: "Andy Bernard", show: "The Office", user: admin)
tv.scripts.create(quote: "I'll keep the crowd away like a Greenpeace volunteer.", character: "Titus Andromedon", show: "Unbreakable Kimmy Schmidt", user: admin)
tv.scripts.create(quote: "I'm gonna be direct and honest with you, I would like a glass of red wine and I'll take the cheapest one you have because I can't tell the difference.", character: "Leslie Nope", show: "Parks and Recreation", user: admin)
tv.scripts.create(quote: "I typed your symptoms into the thing up here, and it says you could have network connectivity problems.", character: "Andy Dwyer", show: "Parks and Recreation", user: admin)
tv.scripts.create(quote: "I'm not running a charity here, except the one where I donate my old towels to poor people with the same initials as me.", character: "Jacqueline Voorhes", show: "Unbreakable Kimmy Schmidt", user: admin)
tv.scripts.create(quote: "It’s a moo point. It’s like a cow’s opinion; it doesn’t matter. It’s moo.", character: "Joey Tribbiani", show: "Friends", user: admin)
tv.scripts.create(quote: "I don’t need you to tell me what I don’t want, you stupid hipster doofus.", character: "Elaine Benes", show: "Seinfeld", user: admin)
tv.scripts.create(quote: "Normally my motto is drugs not hugs", character: "Karen Walker", show: "Will and Grace", user: admin)
tv.scripts.create(quote: "People fake a lot of human interactions, but I feel like I fake them all, and I fake them very well. That's my burden, I guess.", character: "Dexter Morgan", show: "Dexter", user: admin)
tv.scripts.create(quote: "My cat’s breath smells like cat food.", character: "Ralph Wiggum", show: "The Simpsons", user: admin)
tv.scripts.create(quote: "I chose not to run", character: "Jerry Seinfeld", show: "Seinfeld", user: admin)
tv.scripts.create(quote: "That's what I do. I drink, and I know things.", character: "Tyrion Lannister", show: "Game of Thrones", user: admin)
tv.scripts.create(quote: "As long as it rhymes, everything will be fines", character: "Titus Andromedon", show: "Unbreakable Kimmy Schmidt", user: admin)
tv.scripts.create(quote: "I declare bankruptcy!", character: "Michael Scott", show: "The Office", user: admin)
tv.scripts.create(quote: "I’d rather let a thousand guilty men go free than chase after them.", character: "Chief Wiggum", show: "The Simpsons", user: admin)
