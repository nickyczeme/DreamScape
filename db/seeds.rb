# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

# Creating modes
Mode.destroy_all
Dream.destroy_all
User.destroy_all
Booking.destroy_all
fantasy = Mode.create(name: "Fantasy")
nightmares = Mode.create(name: "Nightmares")
wellness = Mode.create(name: "Happy")
romantic = Mode.create(name: "Romantic")

barbie = User.create(email: "bzoani@itba.edu.ar", first_name: "Barbie", last_name: "Zoani", password: "123456")

# ....
#nightmares
falling = Dream.create(title: "Falling", description: "There's a rush of air on your face as you plunge over the edge into nothingness. You flail about, frantic for something to grab before you hit bottom, but there’s nothing — and no one — to save you. Terror consumes you as the bottom comes into view, and then, slam! You wake up in bed. Your heart is beating too fast, but you’re safe. It was just a dream.", intensity: 2, price: 7.5, user: barbie, mode: nightmares)
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
falling.photo.attach(io: file, filename: "#{falling.title}.png", content_type: 'image/png')

being_chased = Dream.create(title: "Being Chased", description: "I was being chased by somebody or something and running from building to building and then I kind of melted into the second dream where I had my dog Pinto in his stroller and we were meeting my family for a Christmas show. We took an elevator to the top floor of what looks like the space needle in Seattle and we sat down at the end of this crescent shaped couch. I kind of had a bad view of the play or festivities, but then an unattractive guy sat down next to me. He was black and tall and wearing a gray sweater and jeans and boots.", intensity: 5, price: 8, user: barbie, mode: nightmares)
death = Dream.create(title: "Death", description: "I was being tied up along with someone else. The rope was a small snake about a foot long. I felt that it would be attached around our waists. I said, “If this small snake is attached to our waists, then we will die. [The other person] said, “That would bring about not suffering. I will become a spiritual friend with you life after life, world upon world. If we make our vows in earnest, we should be able to receive benefits.” Then I saw it crawling down a piece of silk, and I awoke.", intensity: 1, price: 1.5, user: barbie, mode: nightmares)
feeling_lost = Dream.create(title: "Feeling Lost", description: "Again, there was a huge boulder. I was climbing it with the child of the previous [dream]. Though I thought of how easy it would be to slip, it was really not all that dangerous. I took a small rock and let it go, thinking that it would tumble down, but I saw that it was not steep and the rock came to a rest at one side without falling down. Then there was a rock [shaped] like a log at the seashore. Its skin was smooth and gave an excellent footing. I walked and played all over the top.", intensity: 3, price: 7, user: barbie, mode: nightmares)
feeling_trapped = Dream.create(title: "Feeling Trapped", description: "I was walking home from a fun night out and suddently my feet where stuck to the floor and I could not move anymore.", intensity: 2, price: 5, user: barbie, mode: nightmares)
beeing_attacked = Dream.create(title: "Beeing Attacked", description: "The man was already staring for me for hours, I noticed that more and more people keft the subway and suddenly I was all alone with the man", intensity: 3, price: 5.5, user: barbie, mode: nightmares)
waking_up_late = Dream.create(title: "Waking Up Late", description: "Tommorow is the big day, I will stand infront all of my colleagues and show them how great I am. Everything was working out until.. ", intensity: 1, price: 4, user: barbie, mode: nightmares)
running_away = Dream.create(title: "Running away", description: "I was running a race up a hill in a circle and I kept passing people, mostly men, but they would always find a way to get ahead of me again. The course was fraught with dangerous obstacles and I kept falling away.", intensity: 3, price: 7.5, user: barbie, mode: nightmares)
corona_virus = Dream.create(title: "Corona Virus", description: "I remember having the symptoms but insisting I'm fine and trying to go about my day, only to end up getting tested and have it confirmed I have covid.", intensity: 1, price: 10, user: barbie, mode: nightmares)
drowning = Dream.create(title: "Drowning", description: "I was at a hotel with my ex boyfriend Rory and our dogs. It was dark out and I was out by the pool with the dogs when one of the dogs, Trevor, started drowning in the pool. I screamed for help and jumped in to save him but Rory was “on an important work call” and did not come to help. I was devastated, terrified, and angry.", intensity: 3, price: 9, user: barbie, mode: nightmares)

#fantasy
merchant_of_bones = Dream.create(title: "Merchant Of Bones", description: " Two things come out of the mines: bodies and stone. They call him The Merchant of Bones, but he prefers to look upon himself as their saviour. In this, one of the darker fantasy short stories, if the mines fail, the city fails. If the city fails, the people will starve. He might be ruthless, his methods might be extreme, but he gets the job done. The people should thank him for it. Shouldn't they?", intensity: 4, price: 1.5, user: barbie, mode: fantasy)
kiara = Dream.create(title: "Kiara", description: "Kiara is three things: a whore, a psychopath and a liar. Trapped between her own two perfect visions of hell, Kiara wants to free herself from the service of others, yet her only way out of the whorehouse puts her into servitude of a greater power; a life she despises even more. When opportunity presents itself to Kiara, things change. She finds her unique skills might just offer her the key to escape her cage. ", intensity: 3, price: 1.5, user: barbie, mode: fantasy)
save_her = Dream.create(title: "Save Her", description: "A young girl, a child: alone, scared and sold every night into a world not meant for someone so innocent and delicate. He has a chance to save her, but it will cost him everything he has. Will he pay the price.", intensity: 3, price: 6.5, user: barbie, mode: fantasy)
hunted = Dream.create(title: "Hunted", description: "Alone in the woods, hounded by hunters, there seems little hope for Driev. Escape means braving the darkness, it means exposing himself to the vulnerable world beyond his place of safety. But, if he stays here too long, he might never get out alive. ", intensity: 5, price: 1.5, user: barbie, mode: fantasy)
the_crucible = Dream.create(title: "The Crucible", description: "The Crucible of Steel is a game of wits. Of luck. Of Chance. Opponents face each other, one-on-one. A sword in the middle of the arena, a dagger at their side. The rules are simple, but the game is hard. Only a lone champion can emerge. Only one can survive.", intensity: 2, price: 4, user: barbie, mode: fantasy)
progress = Dream.create(title: "Progress", description: "He was born a fisherman and he will die a fisherman, but he is also deathly afraid of the ocean. Here, on the islands, where you can only ever be what you were born to be, how can you escape a world you can longer stand to live within? The answer, and resolution to this most unusual of fantasy short stories, is simple when you think about it: you take desperate and dangerous steps.", intensity: 4, price: 1.5, user: barbie, mode: fantasy)
monster = Dream.create(title: "Monster", description: " In a nation torn apart by cultists and treachery, an overthrown Prince struggles with how best to serve his people. When temptation comes for him, when a chance to liberate his kin seems within reach, will he defeat the monsters that enslave him, or will he become one of them? ", intensity: 2, price: 3.5, user: barbie, mode: fantasy)
ash_and_bone = Dream.create(title: "Ash and Bone", description: " Centuries pass, and as the wealth of the family slowly dries up, one is selected to enter the forest. The goal of this fantasy short story is simple: claim the reward within its heart. It’s a secret passed down from generation to generation. But one thing the chosen is not prepared for, one thing nobody knew to tell them, is that the forest is ready to fight back. ", intensity: 1, price: 1.5, user: barbie, mode: fantasy)
sacrifice = Dream.create(title: "Sacrifice", description: "Tradition is everything to the residents of Myah's village, but when tradition is torn away, how will they cope? Forced to let go of the old ways, the people fear the wrath of God. As tensions rise, tempers fray and desperation takes hold, in this most captivating of fantasy short stories, can Myah keep things from falling apart?", intensity: 5, price: 4.5, user: barbie, mode: fantasy)
the_wraith = Dream.create(title: "The Wraith", description: "It came while he was out in the city; the monster from the mountains. The wraith slaughtered his village, killed his father and stole his future. He has nothing left. Nothing but vengeance. Leading a small party of wrathful survivors into the beast’s frozen home, it soon becomes clear that the fight isn’t against the creature they hunt, it is for their very survival. One of the fantasy short stories with a deeper meaning, will it resonate with you like it has other readers?", intensity: 3, price: 15, user: barbie, mode: fantasy)

#wellness
coming_back = Dream.create(title: "Coming Back", description: "my girlfriend had come back to me after breaking up with me. I was extremely happy and content until I woke up and it hadn't really happened.", intensity: 2, price: 19.5, user: barbie, mode: wellness)
being_young_again = Dream.create(title: "Being Young Again", description: "I dreamed I was sexy and slim again like I was in my 40's and flirted shamelessly with my boss which I never did in real life. He was interested which made me happy", intensity: 4, price: 1.5, user: barbie, mode: wellness)
puppy = Dream.create(title: "Puppy", description: "My family went to the mall to look at puppies. I was happy because we were going to get a puppy and everyone was the age we are now.", intensity: 5, price: 4.5, user: barbie, mode: wellness)
beach_day = Dream.create(title: "Beach Day", description: "I had a dream I was at the beach with my family. We were playing football in the sand and everyone was so happy. It was a good time. At the end we went out to eat.", intensity: 4, price: 7.5, user: barbie, mode: wellness)
seeing_your_grandmother_once_more = Dream.create(title: "Seeing your Grandmother once more", description: "i was dreaming that I was visiting england and I was there with my grandmother (who has passed away) I was very happy being with her and we went to the theater and were having a wonderful time", intensity: 3, price: 5.5, user: barbie, mode: wellness)
receiving_flowers_from_your_husband = Dream.create(title: "Receiving Flowers From Your Husband", description: "I dreamt that my husband surprised me with a plant. It had one exotic red flower that rose up on a long stem. I was very pleased that he had thought of me and my love of flowers.", intensity: 2, price: 3.5, user: barbie, mode: wellness)
cottage_on_the_beach = Dream.create(title: "Cottage On The Beach", description: "I dreamt that I was living at the beach and I had left my husband and daughter and had a little cottage on the beach. In my dream I was walking down the beach and i was happy and content.", intensity: 5, price: 1.5, user: barbie, mode: wellness)
spaceship = Dream.create(title: "Spaceship", description: "I am with some people on a space ship, bringing people on a long journey….But when we arrive, a friendly, trusting guy has no position or job….What to do, we wonder….We decide he can be an usher?....I explain to him what that is, he is happy about it….", intensity: 5, price: 3, user: barbie, mode: wellness)
big_event = Dream.create(title: "Big Event", description: "A town is having a big public event….Two kinds of things are being prepared, like a brown wooden tray for one and a big black cylinder for the other….Everyone is getting ready, there is a happy vibe….at the end, a reward is given for a good job….some kind of treat for a kid, a small boy….He is happy….", intensity: 3, price: 9, user: barbie, mode: wellness)
meeting_your_dog_again = Dream.create(title: "Meeting Your Dog Again", description: "I had a dream about my dog who had passed away 2 years ago. We were at the park and she was running and playing like we use too when she was still with me. I was happy during the dream.", intensity: 3, price: 8, user: barbie, mode: wellness)

#romantic
first_date = Dream.create(title: "First Date", description: "First date, he got me champagne, and he treated me like a Princess. He was speaking thru the whole date, but I have no idea what he said. It was lovely just to hear him speaking. My heart was so happy!", intensity: 1, price: 1.5, user: barbie, mode: romantic)
conviencing_him_to_stay_over = Dream.create(title: "Convincing Him To Stay Over", description: "I had a dream that I convinced my flirt to stay over. We were in marylebone somewhere nice. He took a bit of convincing. I love him I was happy. I can't really remember the conversation I woke up happy though.", intensity: 3, price: 11.5, user: barbie, mode: romantic)
married = Dream.create(title: "Maried", description: "I dreamt about being married and a mom. I don't know who I was married to, and the kids weren't around, but I knew they existed because of all the toys and clothing lying around. I was really happy.", intensity: 5, price: 1.5, user: barbie, mode: romantic)
first_love = Dream.create(title: "First Love", description: "My first love was there and I was being held and assured that of course we were supposed to be reunited. I felt very peaceful and loved and happy. Many other things were going on, it was a long dream, but that's the only specific thing I remember.", intensity: 5, price: 1.5, user: barbie, mode: romantic)
bed_with_a_women = Dream.create(title: "Bed With a Women ", description: "I am laying in a bed with a woman, we are naked, it is very sensual….We talk of past times, how in college we would take our free time to go someplace like this to make out….We are in white sheets, it is a happy vibe….", intensity: 4, price: 8, user: barbie, mode: romantic)


Booking.create(starting_date: Date.today - 6, ending_date: Date.today + 5, user: barbie, dream: falling)


# Dream.first
# Dream.first.bookings
# Dream.first.users
# Dream.first.user
