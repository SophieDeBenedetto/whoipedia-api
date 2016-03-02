s_two = Season.create(number: 2, start_date: 2005, end_date: 2006, doctor: "David Tennant")
ep_one = Episode.create(name: "New Earth", air_date: "15 April 2006", season: s_two, description: "The Doctor and Rose go to New Earth, the planet which humanity inhabited after the Earth's destruction by the Sun. They go into a hospital in New New York, where Rose meets the villain Cassandra (Zoë Wanamaker) again. Cassandra possesses Rose's body as she is in need of one, but the Doctor is suspicious of Rose's actions. They discover that the hospital holds hundreds of artificially-grown humans that have been infected with diseases so the Sisters of Plenitude can find their cures. Rose releases several of the humans as a distraction, but they release others and a zombie-like attack begins. The Doctor sprays the infected humans with the solution from a disinfectant shower, curing them. The Doctor orders Cassandra out of Rose and she transfers her consciousness to her servant Chip (Sean Gallagher), but his cloned body fails and Cassandra accepts her death.")
writer_one = Writer.create(name: "Steven Moffat")
writer_two = Writer.create(name: "Russle T. Davies")

ep_one.writers << writer_one
ep_one.writers << writer_two

ep_one.save

ep_two = Episode.create(name: "Tooth and Claw", air_date: "22 April 2006", season: s_two, description: "The Doctor and Rose end up in Scotland in 1879, where Queen Victoria (Pauline Collins) invites them to Torchwood Estate. Unknown to them, the estate has been captured by a group of monks who have brought a werewolf in hopes to infect Queen Victoria. The Doctor notices the trap and tries to shield himself, Victoria, and Rose from the werewolf. He learns that the estate was designed as a trap for the werewolf as it contains a large telescope which, with Victoria's Koh-i-Noor diamond and full moonlight, can force the werewolf into a human form. Though they save her, Queen Victoria is appalled by the Doctor and Rose's modern eccentricities and founds Torchwood Institute to defend Britain from further alien attacks.")
ep_two.writers << writer_one

ep_three = Episode.create(name: "School Reunion", air_date: "29 April 2006", season: s_two, description: "The Doctor works undercover as a teacher in a school which Mickey believes is suspicious. Rose, working as a dinner lady, notices the cafeteria's chips have an adverse effect on other members of the kitchen staff, while the Doctor notes the chips seem to make the students more intelligent. The success of headmaster Mr Finch (Anthony Head) has aroused media attention; investigative journalist and the Doctor's former companion Sarah Jane Smith (Elisabeth Sladen) arrives at the school and discovers the TARDIS one night. She and her robotic dog K-9 join up with the Doctor, Rose, and Mickey and they discover that the teachers are actually Krillitanes and the chips are coated with Krillitane oil, intended to make the children smart enough so they can decode the 'Skasis Paradigm', a theory of everything, which will give the Krillitanes full control of time and space. The Doctor refuses to join the Krillitanes and evacuates the children of the school, after which K-9 detonates the container of the chip oil which destroys the Krillitanes, the school, and K-9. Sarah Jane declines the Doctor's offer to travel with him and suggests that Mickey do so instead, and the Doctor gives her a brand new model of K-9.")
writer_three = Writer.create(name: "Toby Whithouse")
ep_three.writers << writer_three
ep_three.save

s_three = Season.create(number: 3, start_date: 2006, end_date: 2007, doctor: "David Tennant")
ep_four = Episode.create(name: "Partners in Crime", air_date: "5 April 2008", season: s_three, description: "With a new weight-loss pill tested in London by Adipose Industries, the Doctor goes to investigate the sinister truth behind the product, only to find out that his former companion Donna Noble (Catherine Tate) is investigating as well. Together, they attempt to stop businesswoman Miss Foster (Sarah Lancashire) from killing thousands of people in London during the birth of the Adipose, short white aliens made from body fat.")
ep_four.writers << writer_one
ep_four.save

ep_five = Episode.create(name: "The Fires of Pompeii", air_date: "12 April 2008", season: s_three, description: "The Doctor and Donna land in Pompeii during the 79AD eruption of Mount Vesuvius. The Doctor's activities in Pompeii are impeded by the rock-like Pyrovile and their allies, the Sybilline Sisterhood, who are using the volcano to convert the humans to Pyroviles. The Doctor is faced with a moral dilemma: whether to rescue himself and all of Pompeii from the situation and leave the Pyroviles to have their way, or to make Vesuvius erupt, killing the Pyroviles and the population of Pompeii- himself and Donna included.")
ep_five.writers << writer_three
ep_five.writers << writer_two
ep_five.save

ep_six = Episode.create(name: "Planet of the Ood", air_date: "19 April 2008", season: s_three, description: "The Doctor and Donna arrive on the Ood-Sphere in the year 4126. They arrive at a factory where the Ood are prepared for sale to anyone willing to pay the price. When they find a group of unprocessed Ood, they become horrified at the alterations performed and resolve to free the Ood.")
writer_four = Writer.create(name: "Kieth Temple")
ep_six.writers << writer_four
ep_six.save