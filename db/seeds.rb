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
file = URI.open('https://images.unsplash.com/photo-1624210471816-29842bb3a680?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80')
falling.photo.attach(io: file, filename: "#{falling.title}.png", content_type: 'image/png')

being_chased = Dream.create(title: "Being Chased", description: "I was being chased by somebody or something and running from building to building and then I kind of melted into the second dream where I had my dog Pinto in his stroller and we were meeting my family for a Christmas show. We took an elevator to the top floor of what looks like the space needle in Seattle and we sat down at the end of this crescent shaped couch. I kind of had a bad view of the play or festivities, but then an unattractive guy sat down next to me. He was black and tall and wearing a gray sweater and jeans and boots.", intensity: 5, price: 8, user: barbie, mode: nightmares)
file_1 = URI.open('https://images.unsplash.com/photo-1624210471816-29842bb3a680?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80')
being_chased.photo.attach(io: file_1, filename: "#{being_chased.title}.png", content_type: 'image/png')

death = Dream.create(title: "Death", description: "I was being tied up along with someone else. The rope was a small snake about a foot long. I felt that it would be attached around our waists. I said, “If this small snake is attached to our waists, then we will die. [The other person] said, “That would bring about not suffering. I will become a spiritual friend with you life after life, world upon world. If we make our vows in earnest, we should be able to receive benefits.” Then I saw it crawling down a piece of silk, and I awoke.", intensity: 1, price: 1.5, user: barbie, mode: nightmares)
file_2 = URI.open('https://images.unsplash.com/photo-1624210471816-29842bb3a680?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80')
death.photo.attach(io: file_2, filename: "#{death.title}.png", content_type: 'image/png')

feeling_lost = Dream.create(title: "Feeling Lost", description: "Again, there was a huge boulder. I was climbing it with the child of the previous [dream]. Though I thought of how easy it would be to slip, it was really not all that dangerous. I took a small rock and let it go, thinking that it would tumble down, but I saw that it was not steep and the rock came to a rest at one side without falling down. Then there was a rock [shaped] like a log at the seashore. Its skin was smooth and gave an excellent footing. I walked and played all over the top.", intensity: 3, price: 7, user: barbie, mode: nightmares)
file_3 = URI.open('https://media.istockphoto.com/photos/surreal-concept-of-a-man-rising-stairs-to-try-to-reach-the-top-picture-id1166845898?k=20&m=1166845898&s=612x612&w=0&h=YWuBdankLglJG52bDb5U_5Q4YSybNofGyJFmjeVUQQY=')
feeling_lost.photo.attach(io: file_3, filename: "#{feeling_lost.title}.png", content_type: 'image/png')

feeling_trapped = Dream.create(title: "Feeling Trapped", description: "I was walking home from a fun night out and suddently my feet where stuck to the floor and I could not move anymore.", intensity: 2, price: 5, user: barbie, mode: nightmares)
file_4 = URI.open('https://media.istockphoto.com/photos/screaming-ghost-faces-picture-id1051146310?k=20&m=1051146310&s=612x612&w=0&h=D7hpkzfgUSTDugR9bkmy9dDcLy4-ImfgAnoFRK5_6HE=')
feeling_trapped.photo.attach(io: file_4, filename: "#{feeling_trapped.title}.png", content_type: 'image/png')

beeing_attacked = Dream.create(title: "Beeing Attacked", description: "The man was already staring for me for hours, I noticed that more and more people keft the subway and suddenly I was all alone with the man", intensity: 3, price: 5.5, user: barbie, mode: nightmares)
file_5 = URI.open('https://media.istockphoto.com/photos/grim-reaper-reaching-towards-the-camera-picture-id1181655706?k=20&m=1181655706&s=612x612&w=0&h=I5l3SWh08O_n5TeZqhM_g_nrKBXh5RA2VTsN_qQXjOQ=')
beeing_attacked.photo.attach(io: file_5, filename: "#{beeing_attacked.title}.png", content_type: 'image/png')

waking_up_late = Dream.create(title: "Waking Up Late", description: "Tommorow is the big day, I will stand infront all of my colleagues and show them how great I am. Everything was working out until.. ", intensity: 1, price: 4, user: barbie, mode: nightmares)
file_6 = URI.open('https://media.istockphoto.com/photos/sad-woman-lying-on-bed-picture-id1184225692?k=20&m=1184225692&s=612x612&w=0&h=SfHOw1FIRPIDk97ePkMuU_-q-RN7_QVqQf1WmUrbJQM=')
waking_up_late.photo.attach(io: file_6, filename: "#{waking_up_late.title}.png", content_type: 'image/png')

running_away = Dream.create(title: "Running away", description: "I was running a race up a hill in a circle and I kept passing people, mostly men, but they would always find a way to get ahead of me again. The course was fraught with dangerous obstacles and I kept falling away.", intensity: 3, price: 7.5, user: barbie, mode: nightmares)
file_7 = URI.open('https://media.istockphoto.com/photos/running-with-the-sun-picture-id483177704?k=20&m=483177704&s=612x612&w=0&h=czZnP5sf46sWQ7d-NY23YtqmI3N__QW8Ra1-qERqdy0=')
running_away.photo.attach(io: file_7, filename: "#{running_away.title}.png", content_type: 'image/png')

corona_virus = Dream.create(title: "Corona Virus", description: "I remember having the symptoms but insisting I'm fine and trying to go about my day, only to end up getting tested and have it confirmed I have covid.", intensity: 1, price: 10, user: barbie, mode: nightmares)
file_8 = URI.open('https://media.istockphoto.com/photos/concept-of-fear-of-coronavirus-picture-id1214354303?k=20&m=1214354303&s=612x612&w=0&h=nG9mn0nX0JVhiSAv2A2nE3jLGRFrbbBASqYZ0MOQubs=')
corona_virus.photo.attach(io: file_8, filename: "#{corona_virus.title}.png", content_type: 'image/png')

drowning = Dream.create(title: "Drowning", description: "I was at a hotel with my ex boyfriend Rory and our dogs. It was dark out and I was out by the pool with the dogs when one of the dogs, Trevor, started drowning in the pool. I screamed for help and jumped in to save him but Rory was “on an important work call” and did not come to help. I was devastated, terrified, and angry.", intensity: 3, price: 9, user: barbie, mode: nightmares)
file_9 = URI.open('https://media.istockphoto.com/photos/boy-sunk-in-whirlpool-yelling-help-picture-id1014677970?k=20&m=1014677970&s=612x612&w=0&h=djWLWz2ePStANc-ny8UzZhFzYWZ2Wuc9qqBzdVEBLaw=')
drowning.photo.attach(io: file_9, filename: "#{drowning.title}.png", content_type: 'image/png')

#fantasy
merchant_of_bones = Dream.create(title: "Merchant Of Bones", description: " Two things come out of the mines: bodies and stone. They call him The Merchant of Bones, but he prefers to look upon himself as their saviour. In this, one of the darker fantasy short stories, if the mines fail, the city fails. If the city fails, the people will starve. He might be ruthless, his methods might be extreme, but he gets the job done. The people should thank him for it. Shouldn't they?", intensity: 4, price: 1.5, user: barbie, mode: fantasy)
file_10 = URI.open('https://media.istockphoto.com/photos/skeleton-peering-above-fence-picture-id1340747516?b=1&k=20&m=1340747516&s=170667a&w=0&h=AFZdVxsqGVX3YQ4co-W-OqH25CjwviE7GVhuP79Kp4M=')
merchant_of_bones .photo.attach(io: file_10, filename: "#{merchant_of_bones.title}.png", content_type: 'image/png')

kiara = Dream.create(title: "Kiara", description: "Kiara is three things: a whore, a psychopath and a liar. Trapped between her own two perfect visions of hell, Kiara wants to free herself from the service of others, yet her only way out of the whorehouse puts her into servitude of a greater power; a life she despises even more. When opportunity presents itself to Kiara, things change. She finds her unique skills might just offer her the key to escape her cage. ", intensity: 3, price: 1.5, user: barbie, mode: fantasy)
file_11 = URI.open('https://media.istockphoto.com/photos/young-esoteric-relaxing-girl-with-colorful-lights-aura-virtual-art-picture-id694811962?k=20&m=694811962&s=612x612&w=0&h=l_cs9tzZ6o2Zw_d99tBYRdo1i9YM1YoGw63MYsTL01E=')
kiara.photo.attach(io: file_11, filename: "#{kiara.title}.png", content_type: 'image/png')

save_her = Dream.create(title: "Save Her", description: "A young girl, a child: alone, scared and sold every night into a world not meant for someone so innocent and delicate. He has a chance to save her, but it will cost him everything he has. Will he pay the price.", intensity: 3, price: 6.5, user: barbie, mode: fantasy)
file_12 = URI.open('https://media.istockphoto.com/photos/sad-desperate-young-girl-suffering-from-bulling-and-harassment-at-picture-id964733808?k=20&m=964733808&s=612x612&w=0&h=k3YFrc8xHhU4HdMrn15HrwSbL8NOroVu6Kb84TZRLic=')
save_her.photo.attach(io: file_12, filename: "#{save_her.title}.png", content_type: 'image/png')

hunted = Dream.create(title: "Hunted", description: "Alone in the woods, hounded by hunters, there seems little hope for Driev. Escape means braving the darkness, it means exposing himself to the vulnerable world beyond his place of safety. But, if he stays here too long, he might never get out alive. ", intensity: 5, price: 1.5, user: barbie, mode: fantasy)
file_13 = URI.open('https://media.istockphoto.com/photos/trees-to-spirits-picture-id930414574?k=20&m=930414574&s=612x612&w=0&h=3hTJ7ZmnXbPEhHX14ZHHZiafiFmY_ACybz7QOfvn68s=')
hunted.photo.attach(io: file_13, filename: "#{hunted.title}.png", content_type: 'image/png')

the_crucible = Dream.create(title: "The Crucible", description: "The Crucible of Steel is a game of wits. Of luck. Of Chance. Opponents face each other, one-on-one. A sword in the middle of the arena, a dagger at their side. The rules are simple, but the game is hard. Only a lone champion can emerge. Only one can survive.", intensity: 2, price: 4, user: barbie, mode: fantasy)
file_14 = URI.open('https://media.istockphoto.com/photos/machine-logic-picture-id486308831?k=20&m=486308831&s=612x612&w=0&h=bE_5bKztsSLVcJm7cfwhqwmxBQFp7WtkkkPuQMyxmQI=')
the_crucible.photo.attach(io: file_14, filename: "#{the_crucible.title}.png", content_type: 'image/png')

progress = Dream.create(title: "Progress", description: "He was born a fisherman and he will die a fisherman, but he is also deathly afraid of the ocean. Here, on the islands, where you can only ever be what you were born to be, how can you escape a world you can longer stand to live within? The answer, and resolution to this most unusual of fantasy short stories, is simple when you think about it: you take desperate and dangerous steps.", intensity: 4, price: 1.5, user: barbie, mode: fantasy)
file_15 = URI.open('https://media.istockphoto.com/photos/man-on-a-boat-approaching-coastline-picture-id1280793349?k=20&m=1280793349&s=612x612&w=0&h=Uf3YcxwoSddE6wnDcm4-miNe-kcb-9zrwEWyt_-fU50=')
progress.photo.attach(io: file_15, filename: "#{progress.title}.png", content_type: 'image/png')

monster = Dream.create(title: "Monster", description: " In a nation torn apart by cultists and treachery, an overthrown Prince struggles with how best to serve his people. When temptation comes for him, when a chance to liberate his kin seems within reach, will he defeat the monsters that enslave him, or will he become one of them? ", intensity: 2, price: 3.5, user: barbie, mode: fantasy)
file_16 = URI.open('https://media.istockphoto.com/illustrations/boy-with-a-torch-facing-smoke-monsters-illustration-id831426446?k=20&m=831426446&s=612x612&w=0&h=FwQlFYsnKSpLy8VfnqNfVP3arn_WY8_P76QGPNO83Jw=')
monster.photo.attach(io: file_16, filename: "#{monster.title}.png", content_type: 'image/png')

ash_and_bone = Dream.create(title: "Ash and Bone", description: " Centuries pass, and as the wealth of the family slowly dries up, one is selected to enter the forest. The goal of this fantasy short story is simple: claim the reward within its heart. It’s a secret passed down from generation to generation. But one thing the chosen is not prepared for, one thing nobody knew to tell them, is that the forest is ready to fight back. ", intensity: 1, price: 1.5, user: barbie, mode: fantasy)
file_17 = URI.open('https://media.istockphoto.com/illustrations/bones-in-fire-orange-color-illustration-id1057149832?k=20&m=1057149832&s=612x612&w=0&h=DS2QxcZeZHsvfJV9HxsQToJsaGnAG8jbFDmImyy78CI=')
ash_and_bone.photo.attach(io: file_17, filename: "#{ash_and_bone.title}.png", content_type: 'image/png')

sacrifice = Dream.create(title: "Sacrifice", description: "Tradition is everything to the residents of Myah's village, but when tradition is torn away, how will they cope? Forced to let go of the old ways, the people fear the wrath of God. As tensions rise, tempers fray and desperation takes hold, in this most captivating of fantasy short stories, can Myah keep things from falling apart?", intensity: 5, price: 4.5, user: barbie, mode: fantasy)
file_18 = URI.open('https://media.istockphoto.com/photos/concept-of-time-with-woman-in-forest-surrounded-by-big-clocks-picture-id1166778055?k=20&m=1166778055&s=612x612&w=0&h=KEVjTI2tai_Xly_9XFC9lzHwbwV6H1lfLoFwUlExv58=')
sacrifice.photo.attach(io: file_18, filename: "#{sacrifice.title}.png", content_type: 'image/png')

the_wraith = Dream.create(title: "The Wraith", description: "It came while he was out in the city; the monster from the mountains. The wraith slaughtered his village, killed his father and stole his future. He has nothing left. Nothing but vengeance. Leading a small party of wrathful survivors into the beast’s frozen home, it soon becomes clear that the fight isn’t against the creature they hunt, it is for their very survival. One of the fantasy short stories with a deeper meaning, will it resonate with you like it has other readers?", intensity: 3, price: 15, user: barbie, mode: fantasy)
file_19 = URI.open('https://media.istockphoto.com/photos/floating-evil-spirit-in-a-wooded-clearing-with-a-beam-of-light-picture-id1095068940?k=20&m=1095068940&s=612x612&w=0&h=gFj3iVN-7LYvnDWAWDJb96kWaveg5sRv_yY2ZXUgwhI=')
the_wraith.photo.attach(io: file_19, filename: "#{the_wraith.title}.png", content_type: 'image/png')

#wellness
coming_back = Dream.create(title: "Coming Back", description: "my girlfriend had come back to me after breaking up with me. I was extremely happy and content until I woke up and it hadn't really happened.", intensity: 2, price: 19.5, user: barbie, mode: wellness)
file_20 = URI.open('https://media.istockphoto.com/vectors/abstract-couple-face-silhouette-with-circles-vector-id937546986?k=20&m=937546986&s=612x612&w=0&h=0kaSUOUmCnRw9SwLjCmA6MCJzRkrGQBxTeT8A9rTZFI=')
coming_back.photo.attach(io: file_20, filename: "#{coming_back.title}.png", content_type: 'image/png')

being_young_again = Dream.create(title: "Being Young Again", description: "I dreamed I was sexy and slim again like I was in my 40's and flirted shamelessly with my boss which I never did in real life. He was interested which made me happy", intensity: 4, price: 1.5, user: barbie, mode: wellness)
file_21 = URI.open('https://media.istockphoto.com/photos/two-little-children-picture-id518589530?k=20&m=518589530&s=612x612&w=0&h=T5GKsd4iiq35nVJSRKp6svgnUMtYUyghJH__s5pqbR4=')
being_young_again.photo.attach(io: file_21, filename: "#{being_young_again.title}.png", content_type: 'image/png')

puppy = Dream.create(title: "Puppy", description: "My family went to the mall to look at puppies. I was happy because we were going to get a puppy and everyone was the age we are now.", intensity: 5, price: 4.5, user: barbie, mode: wellness)
file_23 = URI.open('https://media.istockphoto.com/photos/jack-russell-dog-with-butterfly-on-his-nose-picture-id620997382?k=20&m=620997382&s=612x612&w=0&h=rVVi5lhB-Lo4xVB7Xe8a-iIGp6q3IrJQSmZbvufIUMM=')
puppy.photo.attach(io: file_23, filename: "#{puppy.title}.png", content_type: 'image/png')

beach_day = Dream.create(title: "Beach Day", description: "I had a dream I was at the beach with my family. We were playing football in the sand and everyone was so happy. It was a good time. At the end we went out to eat.", intensity: 4, price: 7.5, user: barbie, mode: wellness)
file_24 = URI.open('https://media.istockphoto.com/photos/beach-summer-background-picture-id1140992203?k=20&m=1140992203&s=612x612&w=0&h=gxOh91l9D_mgzC_PpMRFigfbxnBkvr3_B1EtOgwlefg=')
beach_day.photo.attach(io: file_24, filename: "#{beach_day.title}.png", content_type: 'image/png')

seeing_your_grandmother_once_more = Dream.create(title: "Seeing your Grandmother once more", description: "i was dreaming that I was visiting england and I was there with my grandmother (who has passed away) I was very happy being with her and we went to the theater and were having a wonderful time", intensity: 3, price: 5.5, user: barbie, mode: wellness)
file_25 = URI.open('https://media.istockphoto.com/photos/portrait-of-senior-lady-picture-id673354300?k=20&m=673354300&s=612x612&w=0&h=DzAQcfyL5GW0gb8exfbF89L2ksQqIK6tdYrcFm1HMk4=')
seeing_your_grandmother_once_more.photo.attach(io: file_25, filename: "#{seeing_your_grandmother_once_more.title}.png", content_type: 'image/png')

receiving_flowers_from_your_husband = Dream.create(title: "Receiving Flowers From Your Husband", description: "I dreamt that my husband surprised me with a plant. It had one exotic red flower that rose up on a long stem. I was very pleased that he had thought of me and my love of flowers.", intensity: 2, price: 3.5, user: barbie, mode: wellness)
file_26 = URI.open('https://media.istockphoto.com/photos/unexpected-moment-in-routine-everyday-life-cropped-photo-of-mans-picture-id925492142?k=20&m=925492142&s=612x612&w=0&h=cWl4_i7qUXYXyT78WN_isDrvpvapqFlnjyEqX58M1PA=')
receiving_flowers_from_your_husband.photo.attach(io: file_26, filename: "#{receiving_flowers_from_your_husband.title}.png", content_type: 'image/png')

cottage_on_the_beach = Dream.create(title: "Cottage On The Beach", description: "I dreamt that I was living at the beach and I had left my husband and daughter and had a little cottage on the beach. In my dream I was walking down the beach and i was happy and content.", intensity: 5, price: 1.5, user: barbie, mode: wellness)
file_27 = URI.open('https://media.istockphoto.com/photos/beautiful-sunset-at-tropical-beach-picture-id517377998?k=20&m=517377998&s=612x612&w=0&h=9MGgG7cc41s3NlOCFQwMuZC7z6Jx5zMKqzdQkiHrrxo=')
cottage_on_the_beach.photo.attach(io: file_27, filename: "#{cottage_on_the_beach.title}.png", content_type: 'image/png')

spaceship = Dream.create(title: "Spaceship", description: "I am with some people on a space ship, bringing people on a long journey….But when we arrive, a friendly, trusting guy has no position or job….What to do, we wonder….We decide he can be an usher?....I explain to him what that is, he is happy about it….", intensity: 5, price: 3, user: barbie, mode: wellness)
file_28 = URI.open('https://media.istockphoto.com/photos/dark-blue-spaceship-futuristic-interior-with-window-view-on-planet-picture-id1195199589?k=20&m=1195199589&s=612x612&w=0&h=FEU3m-5Yc6DVz20a-TF9RBz2cTbHtGFOTQtfKWylcpY=')
spaceship.photo.attach(io: file_28, filename: "#{spaceship.title}.png", content_type: 'image/png')

big_event = Dream.create(title: "Big Event", description: "A town is having a big public event….Two kinds of things are being prepared, like a brown wooden tray for one and a big black cylinder for the other….Everyone is getting ready, there is a happy vibe….at the end, a reward is given for a good job….some kind of treat for a kid, a small boy….He is happy….", intensity: 3, price: 9, user: barbie, mode: wellness)
file_29 = URI.open('https://media.istockphoto.com/photos/family-and-friends-celebrating-new-year-party-with-sparkler-at-home-picture-id1072528950?k=20&m=1072528950&s=612x612&w=0&h=muscg5-Ic_y8iVVoledUN5Zu9KMBvgtrTlI6pqYsRhE=')
big_event.photo.attach(io: file_29, filename: "#{big_event.title}.png", content_type: 'image/png')

meeting_your_dog_again = Dream.create(title: "Meeting Your Dog Again", description: "I had a dream about my dog who had passed away 2 years ago. We were at the park and she was running and playing like we use too when she was still with me. I was happy during the dream.", intensity: 3, price: 8, user: barbie, mode: wellness)
file_30 = URI.open('https://media.istockphoto.com/photos/dog-running-in-the-forest-picture-id1150606389?k=20&m=1150606389&s=612x612&w=0&h=YSU0INbEjsq1WX57rBgwp3q8i996JykA7eJNQOxb1A8=')
meeting_your_dog_again.photo.attach(io: file_30, filename: "#{meeting_your_dog_again.title}.png", content_type: 'image/png')

#romantic
first_date = Dream.create(title: "First Date", description: "First date, he got me champagne, and he treated me like a Princess. He was speaking thru the whole date, but I have no idea what he said. It was lovely just to hear him speaking. My heart was so happy!", intensity: 1, price: 1.5, user: barbie, mode: romantic)
file_31 = URI.open('https://media.istockphoto.com/photos/summer-romance-picture-id1092543528?k=20&m=1092543528&s=612x612&w=0&h=nhX_u7Z6oJUzLL688-O_AaEY2S_nt-9W4NuXGPlL7B8=')
first_date.photo.attach(io: file_31, filename: "#{first_date.title}.png", content_type: 'image/png')

conviencing_him_to_stay_over = Dream.create(title: "Convincing Him To Stay Over", description: "I had a dream that I convinced my flirt to stay over. We were in marylebone somewhere nice. He took a bit of convincing. I love him I was happy. I can't really remember the conversation I woke up happy though.", intensity: 3, price: 11.5, user: barbie, mode: romantic)
file_32 = URI.open('https://media.istockphoto.com/photos/summer-romance-picture-id1092543528?k=20&m=1092543528&s=612x612&w=0&h=nhX_u7Z6oJUzLL688-O_AaEY2S_nt-9W4NuXGPlL7B8=')
conviencing_him_to_stay_over.photo.attach(io: file_32, filename: "#{conviencing_him_to_stay_over.title}.png", content_type: 'image/png')

married = Dream.create(title: "Maried", description: "I dreamt about being married and a mom. I don't know who I was married to, and the kids weren't around, but I knew they existed because of all the toys and clothing lying around. I was really happy.", intensity: 5, price: 1.5, user: barbie, mode: romantic)
file_33 = URI.open('https://media.istockphoto.com/photos/young-love-couple-celebrating-a-wedding-in-the-mountains-picture-id1095359758?k=20&m=1095359758&s=612x612&w=0&h=hO0reNOIxW-c0SIY8fNHFJnS4BZyDaqQCM1mJt37j40=')
married.photo.attach(io: file_33, filename: "#{married.title}.png", content_type: 'image/png')

first_love = Dream.create(title: "First Love", description: "My first love was there and I was being held and assured that of course we were supposed to be reunited. I felt very peaceful and loved and happy. Many other things were going on, it was a long dream, but that's the only specific thing I remember.", intensity: 5, price: 1.5, user: barbie, mode: romantic)
file_34 = URI.open('https://media.istockphoto.com/photos/friends-or-couple-of-teens-facing-at-sunset-picture-id621380098?k=20&m=621380098&s=612x612&w=0&h=FVCo4UuPHj-LF3Y7TPh8_Y2yxEH7oIj-Qo0UzJ4xGo8=')
first_love.photo.attach(io: file_34, filename: "#{first_love.title}.png", content_type: 'image/png')

bed_with_a_women = Dream.create(title: "Bed With a Women ", description: "I am laying in a bed with a woman, we are naked, it is very sensual….We talk of past times, how in college we would take our free time to go someplace like this to make out….We are in white sheets, it is a happy vibe….", intensity: 4, price: 8, user: barbie, mode: romantic)
file_35 = URI.open('https://media.istockphoto.com/photos/power-of-love-picture-id506008616?k=20&m=506008616&s=612x612&w=0&h=rc9qN4oGxXnIlyVXBxIhko-whvqvM80UmLv9CNDT9NE=')
bed_with_a_women.photo.attach(io: file_35, filename: "#{bed_with_a_women.title}.png", content_type: 'image/png')


Booking.create(starting_date: Date.today - 6, ending_date: Date.today + 5, user: barbie, dream: falling)


# Dream.first
# Dream.first.bookings
# Dream.first.users
# Dream.first.user
