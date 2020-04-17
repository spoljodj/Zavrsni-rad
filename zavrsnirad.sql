drop database if exists zavrsnirad;
create database zavrsnirad default character set utf8;
#c:\xampp\mysql\bin\mysql.exe -uedunova -pedunova --default_character_set=utf8 < D:\PP20\polaznik01.edunova.hr\zavrsnirad.sql
use zavrsnirad;

create table shopkeeper(
shopkeeper_id          int not null primary key auto_increment,
First_name             varchar(50) not null,
Last_name              varchar(50) not null,
Race                   varchar(20) not null,
Bussiness              varchar(20) not null,
Age                    varchar(10),
Description            text
);

create table item(
item_id         int not null primary key auto_increment,
Name            varchar(255) not null,
Itype            varchar(50) not null,
Cost            decimal(18,2) not null,
Description     text not null,
Rarity          varchar(20) not null
);

create table shop(
shop_id         int not null primary key auto_increment,
S_name          varchar(50) not null,
Type            varchar(50) not null,
S_size          varchar(20)not null,
S_description   text not null
);

create table generated(
shop        int not null,
item        int not null,
shopkeeper  int not null
);

create table admin(
user_id         int not null primary key auto_increment,
username        varchar(50) not null,
userpassword    char(60) not null,
usermail        varchar(100) not null,
role            varchar(20),
active          boolean not null default false,
sessionid       varchar(100)
);

alter table generated add foreign key(shop) references shop(shop_id);
alter table generated add foreign key(item) references item(item_id);
alter table generated add foreign key(shopkeeper) references shopkeeper(shopkeeper_id);

insert into admin (user_id,username,userpassword,usermail,role,active,sessionid) values 
(null, 'Administrator', '$2y$10$nnkSTg4vhKy7qY3xxPaGwO2P0ZvngQfXpfkzgpOrBjjT1zSvVpd4i', 'spoljo1122@gmail.com','admin',true,null);

insert into shopkeeper (shopkeeper_id,First_name,Last_Name,Race,Bussiness,Age,Description) values 
(null,'Garmek','Runehammer','Dwarf','Blacksmith','135','Beefy dwarf with a stout and firm body, giant nose,black hair, a black beard that goes all the way to his pants. Dressed in a black leather apron,holding a hammer in his hand'),
(null,'Ermrik','Stonethrower','Dwarf','Blacksmith','193','Rugged dwarf, with a cold face that doesnt show too much emotions. Unusualy for a dwarf,he is clean shawed and dressed in common clothes. The shirt is dyed in a maroon color and the pants are a dirty white'),
(null,'Gernur','Runewriter','Dwarf','Blacksmith','178','Perky dwarf with an abundance of energy that seemingly cant be calm and never stops. Has bright red hair and beard thats almost swallowing his whole face. The clothes he has on himself arent anything special'),
(null,'Meldohr','Potforger','Dwarf','Blacksmith','247','Strong dwarf with a long beard tied in long braid. Has a couple of little scars on his face. Wears an blacksmith leather appron.'),
(null,'Gralmar','Gingerbeard','Dwarf','Blacksmith','138','Dwarf with a visibly identifying feature in his yellow gingerlike beard. Almost always has a smile plastered on his face while he works, and happily sells his crafts.'),
(null,'Thornus','Birdchaser','Dwarf','Blacksmith','167','A smaller than usual dwarf that from afar looks like a little walking fortress, with all the plate mail that he likes to wear. Has a little of a bald space on his head that he doesnt want to admit is there.'),
(null,'Torbelle','Scythemaker','Dwarf','Blacksmith','126','A female dwarf that inherited her workshop and made a name for herself with her good work. Has a bright face that is sometimes covered with her brown hair.'),
(null,'Jenlinn','Bulwark','Dwarf','Blacksmith','205','A female dwarf who was accepted in a blacksmith shop due to her innate talent from small age. Has a little smudge on her face due to constantly working in the forge. Although she wears blacksmith clothes you can still see her well developed figure underneath.'),
(null,'Kathra','Strakheln','Dwarf','Blacksmith','299','Female dwarf with a good looking face. Has a little nick under her left eye that looks more like a mark made with a pen than a scar. Wears common clothes over the day and forges her stock over the night.'),
(null,'Helja','Fireforge','Dwarf','Blacksmith','147','Female dwarf with a buff body, has a tomboyish face and could be mistaken for a male dwarf. Hates when she is mistaken for it and shooes away customers that assume she is a male.'),
(null,'Vistra ','Brawnanvil','Dwarf','Blacksmith','327','Female dwarf with a weathered face. Has the look of a person who has gotten through a lot of shit in her life. Wears a thick white leather appron. Her black hair falls on her shoulders and dances in the air while she hammers on the anvil.'),
(null,'Folre','Sarbanise','Elf','Blacksmith','350','A sleek and tall elf, around the height of 189cm, wearing the blacksmiths appron arraning the merchandise on the display. Has blonde hair and deep blue eyes that look like they pierce you while he is looking at you.'),
(null,'Elandorr','Olaris','Elf','Blacksmith','362','Elf dressed in a set of expensive clothes managing the shop. Has a tall and slender figure, with his hair going almost to his hip. Gracefully moves around the shop and cleans the dust from the merchandise.'),
(null,'Rydel','Presna','Elf','Blacksmith','264','Elf male working in the shop. Has a short blonde hair that looks like a straw bundle. Has an appron on himself and is holding a hammer in his right hand.'),
(null,'Adamar','Lurie','Elf','Blacksmith','401','Elf male with a long pointy nose. Wears glasses that pronounce the nose even more. Despite the long nose and the comical looks, has the demeanor of a true blacksmith and knowledge to go with it.'),
(null,'Vulre','Neriren','Elf','Blacksmith','383','Male elf, wearing a set of common clothes. Typical elven height and blonde hair. Also has a little monocle on his left eye that he uses to inspect weapons and armor people bring to him.'),
(null,'Laiex','Inanan','Elf','Blacksmith','500','Male elf,has a serious face full of wrinkles. His age is obvious on his face and his behaviour. Considers himself the smartest person around. Likes to haggle for prices and always tries to undercut the sellers.'),
(null,'Glim','Burez','Human','Blacksmith','51','Human male with an eyepatch over his left eye. Has strong arms beffiting a blacksmith and carries a heavy hammer with himself. Has a dark brown hair and a well kept moustache on his face.'),
(null,'Steth','Threewood','Human','Blacksmith','44','Human male wearing a brown leather appron thats smeared all over with coal. Brawny type of body with a height of 179cm.Has a square chin and a little beard growing.'),
(null,'Nihrovel','Bhosso','Human','Blacksmith','48','Human male dressed in commoner clothes, black leather appron and a mask on his face. Underneath the mask you can see his messy beard with little metal scraps in it.'),
(null,'Re','Stirav','Human','Blacksmith','33','Human male with glasses and a hammer on his side. Bulky builded making the glasses look really small. Always has a smile on his face while he is forging.'),
(null,'Pia','Xay','Human','Blacksmith','29','Female human with a lean build. Currently wearing a short sleeved shirt and trousers. Her face is a little dirty due to working in the furnance'),
(null,'Ermeros',' ','Tiefling','Blacksmith','33','Male thiefling with small goat horns. Has a purplish colored skin and a rather large figure for a thiefling. Buffed up arms that look like they can squeeze rocks.'),
(null,'','','','Blacksmith','','');







insert into item (item_id,Name,Itype,Cost,Description,Rarity) values 
(null,'Potion of healing','Potion',50.00,'A basic healing potion that heals 2d4+2 hit points','Common'),
(null,'Potion of climbing','Potion',35.00,'A potion that grants the user climbing speed equal to his walking speed, also gets advantage on STR(Athletics) checks. Lasts an hour','Common'),
(null,'Adamatine Armor','Armor',200.00,'Armor made from adamantine, the hardest known substance in the world. While wearing you treat any critical hit against you as a normal hit. Can only be made on metal armors(EG:plate armor or chainmail.','Uncommon'),
(null,'+1 Bolts','Weapon',100.00,'A stack of 20 bolts made from the best metal and enchanced with magic','Uncommon'),
(null,'+1 Arrows','Weapon',80.00,'A stack of 20 bolts made from a special kind of tree and enchanced with magic','Uncommon'),
(null,'+1 Slingshot ammo','Weapon',30.00,'A stack of 20 specially formed stones with magic','Uncommon'),
(null,'Bag of holding','Wondrous',200.00,'A magic bag that is the size of a normal carrying bag but can hold up to 500 pounds,not exceeding 64 cubic feets.The bag always weighs 15 pounds, no matter whats inside it. If the bag is overloaded, pierced, or torn, it ruptures and is destroyed, and its contents are scattered in the Astral Plane. If the bag is turned inside out, its contents spill forth, unharmed, but the bag must be put right before it can be used again. Breathing creatures inside the bag can survive up to a number of minutes equal to 10 divided by the number of creatures (minimum 1 minute), after which time they begin to suffocate.
                                            Placing a bag of holding inside an extradimensional space created by a handy haversack, portable hole, or similar item instantly destroys both items and opens a gate to the Astral Plane. The gate originates where the one item was placed inside the other. Any creature within 10 feet of the gate is sucked through it to a random location on the Astral Plane. The gate then closes. The gate is one‑way only and can''t be reopened.','Uncommon'),
(null,'Amulet of Proof against Detection and Location','Wondrous',180.00,'A magical amulet that protects the user against scrying and divination magic','Uncommon'),
(null,'Bag of tricks','Wondrous',150.00,'This ordinary bag, made from gray, rust, or tan cloth, appears empty. Reaching inside the bag, however, reveals the presence of a small, fuzzy object. The bag weighs 1/2 pound.
                                            You can use an action to pull the fuzzy object from the bag and throw it up to 20 feet. When the object lands, it transforms into a creature you determine by rolling a d8 and consulting the table that corresponds to the bag''s color. The creature vanishes at the next dawn or when it is reduced to 0 hit points.
                                            The creature is friendly to you and your companions, and it acts on your turn. You can use a bonus action to command how the creature moves and what action it takes on its next turn, or to give it general orders, such as to attack your enemies. In the absence of such orders, the creature acts in a fashion appropriate to its nature.
                                            Once three fuzzy objects have been pulled from the bag, the bag can''t be used again until the next dawn.','Uncommon'),
(null,'Boots of Elvenkind','Wondrous',100.00,'While you wear these boots, your steps make no sound, regardless of the surface you are moving across. You also have advantage on Dexterity (Stealth) checks that rely on moving silently.','Uncommon'),
(null,'Alchemy jug','Wondrous',250.00,'This ceramic jug appears to be able to hold a gallon of liquid and weighs 12 pounds whether full or empty. Sloshing sounds can be heard from within the jug when it is shaken, even if the jug is empty.
You can use an action and name one liquid from the table below to cause the jug to produce the chosen liquid. Afterward, you can uncork the jug as an action and pour that liquid out, up to 2 gallons per minute. The maximum amount of liquid the jug can produce depends on the liquid you named.
Once the jug starts producing a liquid, it can\'t produce a different one, or more of one that has reached its maximum, until the next dawn.
                                            Liquid Max Amount Liquid Max Amount
                                            Acid 8 ounces               Oil 1 quart
                                            Basic poison 1/2 ounce      Vinegar 2 gallons
                                            Beer 4 gallons              Water, fresh 8 gallons
                                            Honey 1 gallon              Water, salt 12 gallons
                                            Mayonnaise 2 gallons           Wine 1 gallon ','Uncommon'),
(null,'Boots of Striding and Springing','Wondrous',120.00,'While you wear these boots, your walking speed becomes 30 feet, unless your walking speed is higher, and your speed isn\'t reduced if you are encumbered or wearing heavy armor. In addition, you can jump three times the normal distance, though you can\'t jump farther than your remaining movement would allow.','Uncommon'),
(null,'Boots of the Winterlands','Wondrous',150.00,'These furred boots are snug and feel quite warm. While you wear them, you gain the following benefits:
                                                                                                    You have resistance to cold damage.
                                                                                                    You ignore difficult terrain created by ice or snow.
                                                                                                    You can tolerate temperatures as low as −50 degrees Fahrenheit without any additional protection. If you wear heavy clothes, you can tolerate temperatures as low as −100 degrees Fahrenheit.','Uncommon'),
(null,'Bracers of Archery','Wondrous',200.00,'While wearing these bracers, you have proficiency with the longbow and shortbow, and you gain a +2 bonus to damage rolls on ranged attacks made with such weapons.','Uncommon'),
(null,'Brooch of Shielding','Wondrous',150.00,'While wearing this brooch, you have resistance to force damage, and you have immunity to damage from the magic missile spell.','Uncommon'),
(null,'Broom of Flying','Wondrous',500.00,'This wooden broom, which weighs 3 pounds, functions like a mundane broom until you stand astride it and speak its command word. It then hovers beneath you and can be ridden in the air. It has a flying speed of 50 feet. It can carry up to 400 pounds, but its flying speed becomes 30 feet while carrying over 200 pounds. The broom stops hovering when you land.
                                            You can send the broom to travel alone to a destination within 1 mile of you if you speak the command word, name the location, and are familiar with that place. The broom comes back to you when you speak another command word, provided that the broom is still within 1 mile of you.','Uncommon'),
(null,'Circlet of Blasting','Wondrous',145.00,'While wearing this circlet, you can use an action to cast the scorching ray spell with it. When you make the spell\'s attacks, you do so with an attack bonus of +5. The circlet can\'t be used this way again until the next dawn.','Uncommon'),
(null,'Cloak of Elvenkind','Wondrous',150.00,'While you wear this cloak with its hood up, Wisdom (Perception) checks made to see you have disadvantage, and you have advantage on Dexterity (Stealth) checks made to hide, as the cloak\'s color shifts to camouflage you. Pulling the hood up or down requires an action.','Uncommon'),
(null,'Cloak of Protection','Wondrous',250.00,'You gain a +1 bonus to AC and saving throws while you wear this cloak.','Uncommon'),
(null,'Cloak of the Manta Ray','Wondrous',130.00,'While wearing this cloak with its hood up, you can breathe underwater, and you have a swimming speed of 60 feet. Pulling the hood up or down requires an action.','Uncommon'),
(null,'Decanter of Endless Water','Wondrous',300.00,'This stoppered flask sloshes when shaken, as if it contains water. The decanter weighs 2 pounds.
                                                            You can use an action to remove the stopper and speak one of three command words, whereupon an amount of fresh water or salt water (your choice) pours out of the flask. The water stops pouring out at the start of your next turn. Choose from the following options:
                                                            “Stream” produces 1 gallon of water.
                                                            “Fountain” produces 5 gallons of water.
                                                            “Geyser” produces 30 gallons of water that gushes forth in a geyser 30 feet long and 1 foot wide. As a bonus action while holding the decanter, you can aim the geyser at a creature you can see within 30 feet of you. The target must succeed on a DC 13 Strength saving throw or take 1d4 bludgeoning damage and fall prone. Instead of a creature, you can target an object that isn\'t being worn or carried and that weighs no more than 200 pounds. The object is either knocked over or pushed up to 15 feet away from you.','Uncommon'),
(null,'Deck of Illusions','Wondrous',250.00,'This box contains a set of parchment cards. A full deck has 34 cards. A deck found as treasure is usually missing 1d20 − 1 cards.
The magic of the deck functions only if cards are drawn at random (you can use an altered deck of playing cards to simulate the deck). You can use an action to draw a card at random from the deck and throw it to the ground at a point within 30 feet of you.
An illusion of one or more creatures forms over the thrown card and remains until dispelled. An illusory creature appears real, of the appropriate size, and behaves as if it were a real creature except that it can do no harm. While you are within 120 feet of the illusory creature and can see it, you can use an action to move it magically anywhere within 30 feet of its card. Any physical interaction with the illusory creature reveals it to be an illusion, because objects pass through it. Someone who uses an action to visually inspect the creature identifies it as illusory with a successful DC 15 Intelligence (Investigation) check. The creature then appears translucent.
The illusion lasts until its card is moved or the illusion is dispelled. When the illusion ends, the image on its card disappears, and that card can\'t be used again.
                                                                                                Playing Card	    Illusion
                                                                                                Ace of hearts	    Red dragon
                                                                                                King of hearts	    Knight and four guards
                                                                                                Queen of hearts	    Succubus or incubus
                                                                                                Jack of hearts	    Druid
                                                                                                Ten of hearts	    Cloud giant
                                                                                                Nine of hearts	    Ettin
                                                                                                Eight of hearts	    Bugbear
                                                                                                Two of hearts	    Goblin
                                                                                                Ace of diamonds	    Beholder
                                                                                                King of diamonds	Archmage and mage apprentice
                                                                                                Queen of diamonds	Night hag
                                                                                                Jack of diamonds	Assassin
                                                                                                Ten of diamonds	    Cloud giant
                                                                                                Nine of diamonds	Fire giant
                                                                                                Eight of diamonds	Gnoll
                                                                                                Two of diamonds	    Kobold
                                                                                                Ace of spades	    Lich
                                                                                                King of spades	    Priest and two acolytes
                                                                                                Queen of spades	    Medusa
                                                                                                Jack of spades	    Veteran
                                                                                                Ten of spades	    Frost giant
                                                                                                Nine of spades	    Troll
                                                                                                Eight of spades	    Hobgoblin
                                                                                                Two of spades	    Goblin
                                                                                                Ace of clubs	    Iron golem
                                                                                                King of clubs	    Bandit captain and four bandits
                                                                                                Queen of clubs  	Erinyes
                                                                                                Jack of clubs	    Berserker
                                                                                                Ten of clubs	    Hill giant
                                                                                                Nine of clubs	    Ogre
                                                                                                Eight of clubs	    Orc
                                                                                                Two of clubs	    Kobold
                                                                                                Jokers (2)	        You (the deck\'s owner)
','Uncommon'),
(null,'Dust of Disappearance','Wondrous',120.00,'Found in a small packet, this powder resembles very fine sand. There is enough of it for one use. When you use an action to throw the dust into the air, you and each creature and object within 10 feet of you becomes invisible for 2d4 minutes. The duration is the same for all subjects, and the dust is consumed when its magic takes effect. If a creature affected by the dust attacks or casts a spell, the invisibility ends for that creature.','Uncommon'),
(null,'Dust of Dryness','Wondrous',180.00,'This small packet contains 1d6 + 4 pinches of dust. You can use an action to sprinkle a pinch of it over water. The dust turns a cube of water 15 feet on a side into one marble-­sized pellet, which floats or rests near where the dust was sprinkled. The pellet\'s weight is negligible.
                                        Someone can use an action to smash the pellet against a hard surface, causing the pellet to shatter and release the water the dust absorbed. Doing so ends that pellet\'s magic.
                                        An elemental composed mostly of water that is exposed to a pinch of the dust must make a DC 13 Constitution saving throw, taking 10d6 necrotic damage on a failed save, or half as much damage on a successful one.','Uncommon'),
(null,'Dust of Sneezing and Choking','Wondrous',140.00,'Found in a small container, this powder resembles very fine sand. It appears to be dust of disappearance, and an identify spell reveals it to be such. There is enough of it for one use.
When you use an action to throw a handful of the dust into the air, you and each creature that needs to breathe within 30 feet of you must succeed on a DC 15 Constitution saving throw or become unable to breathe, while sneezing uncontrollably. A creature affected in this way is incapacitated and suffocating. As long as it is conscious, a creature can repeat the saving throw at the end of each of its turns, ending the effect on it on a success. The lesser restoration spell can also end the effect on a creature.','Uncommon'),
(null,'Efficient Quiver','Wondrous',400.00,'Each of the quiver\'s three compartments connects to an extradimensional space that allows the quiver to hold numerous items while never weighing more than 2 pounds. The shortest compartment can hold up to sixty arrows, bolts, or similar objects. The midsize compartment holds up to eighteen javelins or similar objects. The longest compartment holds up to six long objects, such as bows, quarterstaffs, or spears.
                                            You can draw any item the quiver contains as if doing so from a regular quiver or scabbard.','Uncommon'),
(null,'Blue saphire Elemental Gem','Wondrous',350.00,'This gem contains a mote of elemental energy. When you use an action to break the gem, an air elemental is summoned as if you had cast the conjure elemental spell, and the gem\'s magic is lost.','Uncommon'),
(null,'Yellow diamond Elemental Gem','Wondrous',350.00,'This gem contains a mote of elemental energy. When you use an action to break the gem, an earth elemental is summoned as if you had cast the conjure elemental spell, and the gem\'s magic is lost.','Uncommon'),
(null,'Red Corundum Elemental Gem','Wondrous',350.00,'This gem contains a mote of elemental energy. When you use an action to break the gem, an fire elemental is summoned as if you had cast the conjure elemental spell, and the gem\'s magic is lost.','Uncommon'),
(null,'Emerald Elemental Gem','Wondrous',350.00,'This gem contains a mote of elemental energy. When you use an action to break the gem, an water elemental is summoned as if you had cast the conjure elemental spell, and the gem\'s magic is lost.','Uncommon'),
(null,'Eversmoking Bottle','Wondrous',170.00,'Smoke leaks from the lead-­stoppered mouth of this brass bottle, which weighs 1 pound. When you use an action to remove the stopper, a cloud of thick smoke pours out in a 60-­foot radius from the bottle. The cloud\'s area is heavily obscured. Each minute the bottle remains open and within the cloud, the radius increases by 10 feet until it reaches its maximum radius of 120 feet.
                                                The cloud persists as long as the bottle is open. Closing the bottle requires you to speak its command word as an action. Once the bottle is closed, the cloud disperses after 10 minutes. A moderate wind (11 to 20 miles per hour) can also disperse the smoke after 1 minute, and a strong wind (21 or more miles per hour) can do so after 1 round.','Uncommon'),
(null,'Eyes of Charming','Wondrous',200.00,'These crystal lenses fit over the eyes. They have 3 charges. While wearing them, you can expend 1 charge as an action to cast the charm person spell (save DC 13) on a humanoid within 30 feet of you, provided that you and the target can see each other. The lenses regain all expended charges daily at dawn.','Uncommon'),
(null,'Eyes of Minute Seeing','Wondrous',100.00,'These crystal lenses fit over the eyes. While wearing them, you can see much better than normal out to a range of 1 foot. You have advantage on Intelligence (Investigation) checks that rely on sight while searching an area or studying an object within that range.','Uncommon'),
(null,'Eyes of the Eagle','Wondrous',150.00,'These crystal lenses fit over the eyes. While wearing them, you have advantage on Wisdom (Perception) checks that rely on sight. In conditions of clear visibility, you can make out details of even extremely distant creatures and objects as small as 2 feet across.','Uncommon'),
(null,'Figurine of Wondrous Power(Silver Raven)','Wondrous',160.00,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
                                                        The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
                                                        The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description.
                                                        Silver Raven (Uncommon). This silver statuette of a raven can become a raven for up to 12 hours. Once it has been used, it can\'t be used again until 2 days have passed. While in raven form, the figurine allows you to cast the animal messenger spell on it at will.','Uncommon'),
(null,'Gauntlets of Ogre Power','Wondrous',200.00,'Your Strength score is 19 while you wear these gauntlets. They have no effect on you if your Strength is already 19 or higher.','Uncommon'),
(null,'Gem of Brightness','Wondrous',230.00,'This prism has 50 charges. While you are holding it, you can use an action to speak one of three command words to cause one of the following effects:
                                            The first command word causes the gem to shed bright light in a 30-­foot radius and dim light for an additional 30 feet. This effect doesn\'t expend a charge. It lasts until you use a bonus action to repeat the command word or until you use another function of the gem.
                                            The second command word expends 1 charge and causes the gem to fire a brilliant beam of light at one creature you can see within 60 feet of you. The creature must succeed on a DC 15 Constitution saving throw or become blinded for 1 minute. The creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.
                                            The third command word expends 5 charges and causes the gem to flare with blinding light in a 30-­foot cone originating from it. Each creature in the cone must make a saving throw as if struck by the beam created with the second command word.
                                            When all of the gem\'s charges are expended, the gem becomes a nonmagical jewel worth 50 gp.','Uncommon'),
(null,'Gloves of Missile Snaring','Wondrous',170.00,'These gloves seem to almost meld into your hands when you don them. When a ranged weapon attack hits you while you\'re wearing them, you can use your reaction to reduce the damage by 1d10 + your Dexterity modifier, provided that you have a free hand. If you reduce the damage to 0, you can catch the missile if it is small enough for you to hold in that hand.','Uncommon'),
(null,'Gloves of Swimming and Climbing','Wondrous',100.00,'While wearing these gloves, climbing and swimming don\'t cost you extra movement, and you gain a +5 bonus to Strength (Athletics) checks made to climb or swim.','Uncommon'),
(null,'Goggles of Night','Wondrous',150.00,'While wearing these dark lenses, you have darkvision out to a range of 60 feet. If you already have darkvision, wearing the goggles increases its range by 60 feet.','Uncommon'),
(null,'Hat of Disguise','Wondrous',230.00,'While wearing this hat, you can use an action to cast the disguise self spell from it at will. The spell ends if the hat is removed.','Uncommon'),
(null,'Headband of Intellect','Wondrous',250.00,'Your Intelligence score is 19 while you wear this headband. It has no effect on you if your Intelligence is already 19 or higher.','Uncommon'),
(null,'Helm of Comprehending Languages','Wondrous',130.00,'While wearing this helm, you can use an action to cast the comprehend languages spell from it at will.','Uncommon'),
(null,'Helm of Telepathy','Wondrous',250.00,'While wearing this helm, you can use an action to cast the detect thoughts spell (save DC 13) from it. As long as you maintain concentration on the spell, you can use a bonus action to send a telepathic message to a creature you are focused on. It can reply—using a bonus action to do so—while your focus on it continues.
                                        While focusing on a creature with detect thoughts, you can use an action to cast the suggestion spell (save DC 13) from the helm on that creature. Once used, the suggestion property can\'t be used again until the next dawn.','Uncommon'),
(null,'Immovable rod','Wondrous',180.00,'This flat iron rod has a button on one end. You can use an action to press the button, which causes the rod to become magically fixed in place. Until you or another creature uses an action to push the button again, the rod doesn\'t move, even if it is defying gravity. The rod can hold up to 8,000 pounds of weight. More weight causes the rod to deactivate and fall. A creature can use an action to make a DC 30 Strength check, moving the fixed rod up to 10 feet on a success.','Uncommon'),
(null,'Javelin of Lightning','Weapon',130.00,'This javelin is a magic weapon. When you hurl it and speak its command word, it transforms into a bolt of lightning, forming a line 5 feet wide that extends out from you to a target within 120 feet. Each creature in the line excluding you and the target must make a DC 13 Dexterity saving throw, taking 4d6 lightning damage on a failed save, and half as much damage on a successful one. The lightning bolt turns back into a javelin when it reaches the target. Make a ranged weapon attack against the target. On a hit, the target takes damage from the javelin plus 4d6 lightning damage.
The javelin\'s property can\'t be used again until the next dawn. In the meantime, the javelin can still be used as a magic weapon.','Uncommon'),
(null,'Lantern of Revealing','Wondrous',100.00,'While lit, this hooded lantern burns for 6 hours on 1 pint of oil, shedding bright light in a 30-­foot radius and dim light for an additional 30 feet. Invisible creatures and objects are visible as long as they are in the lantern\'s bright light. You can use an action to lower the hood, reducing the light to dim light in a 5-­foot radius.','Uncommon'),
(null,'Medallion of Thoughts','Wondrous',230.00,'The medallion has 3 charges. While wearing it, you can use an action and expend 1 charge to cast the detect thoughts spell (save DC 13) from it. The medallion regains 1d3 expended charges daily at dawn.','Uncommon'),
(null,'Mithral Armor','Armor',300.00,'Mithral is a light, flexible metal. A mithral chain shirt or breastplate can be worn under normal clothes. If the armor normally imposes disadvantage on Dexterity (Stealth) checks or has a Strength requirement, the mithral version of the armor doesn\'t. Medium or heavy, but not hide','Uncommon'),
(null,'Necklace of Adaptation','Wondrous',200.00,'While wearing this necklace, you can breathe normally in any environment, and you have advantage on saving throws made against harmful gases and vapors (such as cloudkill and stinking cloud effects, inhaled poisons, and the breath weapons of some dragons).','Uncommon'),
(null,'Oil of Slipperiness','Potion',100.00,'This sticky black unguent is thick and heavy in the container, but it flows quickly when poured. The oil can cover a Medium or smaller creature, along with the equipment it\'s wearing and carrying (one additional vial is required for each size category above Medium). Applying the oil takes 10 minutes. The affected creature then gains the effect of a freedom of movement spell for 8 hours.
Alternatively, the oil can be poured on the ground as an action, where it covers a 10-­foot square, duplicating the effect of the grease spell in that area for 8 hours.','Uncommon'),
(null,'Pearl of Power','Wondrous',425.00,'While this pearl is on your person, you can use an action to speak its command word and regain one expended spell slot. If the expended slot was of 4th level or higher, the new slot is 3rd level. Once you use the pearl, it can\'t be used again until the next dawn.','Uncommon'),
(null,'Periapt of Health','Wondrous',245.00,'You are immune to contracting any disease while you wear this pendant. If you are already infected with a disease, the effects of the disease are suppressed you while you wear the pendant.','Uncommon'),
(null,'Periapt of Wound Closure','Wondrous',225.00,'While you wear this pendant, you stabilize whenever you are dying at the start of your turn. In addition, whenever you roll a Hit Die to regain hit points, double the number of hit points it restores.','Uncommon'),
(null,'Philter of Love','Potion',150.00,'The next time you see a creature within 10 minutes after drinking this philter, you become charmed by that creature for 1 hour. If the creature is of a species and gender you are normally attracted to, you regard it as your true love while you are charmed. This potion\'s rose-­hued, effervescent liquid contains one easy-­to-­miss bubble shaped like a heart.','Uncommon'),
(null,'Pipes of Haunting','Wondrous',200.00,'You must be proficient with wind instruments to use these pipes. They have 3 charges. You can use an action to play them and expend 1 charge to create an eerie, spellbinding tune. Each creature within 30 feet of you that hears you play must succeed on a DC 15 Wisdom saving throw or become frightened of you for 1 minute. If you wish, all creatures in the area that aren\'t hostile toward you automatically succeed on the saving throw. A creature that fails the saving throw can repeat it at the end of each of its turns, ending the effect on itself on a success. A creature that succeeds on its saving throw is immune to the effect of these pipes for 24 hours. The pipes regain 1d3 expended charges daily at dawn.','Uncommon'),
(null,'Pipes of the Sewers','Wondrous',150.00,'You must be proficient with wind instruments to use these pipes. While you are attuned to the pipes, ordinary rats and giant rats are indifferent toward you and will not attack you unless you threaten or harm them.
The pipes have 3 charges. If you play the pipes as an action, you can use a bonus action to expend 1 to 3 charges, calling forth one swarm of rats with each expended charge, provided that enough rats are within half a mile of you to be called in this fashion (as determined by the GM). If there aren\'t enough rats to form a swarm, the charge is wasted. Called swarms move toward the music by the shortest available route but aren\'t under your control otherwise. The pipes regain 1d3 expended charges daily at dawn.
Whenever a swarm of rats that isn\'t under another creature\'s control comes within 30 feet of you while you are playing the pipes, you can make a Charisma check contested by the swarm\'s Wisdom check. If you lose the contest, the swarm behaves as it normally would and can\'t be swayed by the pipes\' music for the next 24 hours. If you win the contest, the swarm is swayed by the pipes\' music and becomes friendly to you and your companions for as long as you continue to play the pipes each round as an action. A friendly swarm obeys your commands. If you issue no commands to a friendly swarm, it defends itself but otherwise takes no actions. If a friendly swarm starts its turn and can\'t hear the pipes\' music, your control over that swarm ends, and the swarm behaves as it normally would and can\'t be swayed by the pipes\' music for the next 24 hours.','Uncommon'),
(null,'Potion of Animal Friendship','Potion',120.00,'When you drink this potion, you can cast the animal friendship spell (save DC 13) for 1 hour at will. Agitating this muddy liquid brings little bits into view: a fish scale, a hummingbird tongue, a cat claw, or a squirrel hair.','Uncommon'),
(null,'Potion of Hill Giant Strength','Potion',200.00,'When you drink this potion, your Strength score changes to 21 for 1 hour.','Uncommon'),
(null,'Potion of Frost Giant Strength','Potion',2000.00,'When you drink this potion, your Strength score changes to 23 for 1 hour.','Rare'),
(null,'Potion of Stone Giant Strength','Potion',2000.00,'When you drink this potion, your Strength score changes to 23 for 1 hour.','Rare'),
(null,'Potion of Fire Giant Strength','Potion',3000.00,'When you drink this potion, your Strength score changes to 25 for 1 hour.','Rare'),
(null,'Potion of Cloud Giant Strength','Potion',10000.00,'When you drink this potion, your Strength score changes to 27 for 1 hour.','Very rare'),
(null,'Potion of Growth','Potion',0,'When you drink this potion, you gain the “enlarge” effect of the enlarge/reduce spell for 1d4 hours (no concentration required). The red in the potion\'s liquid continuously expands from a tiny bead to color the clear liquid around it and then contracts. Shaking the bottle fails to interrupt this process.','Uncommon'),
(null,'Potion of Greater healing','Potion',250.00,'A greater healing potion that heals 4d4+4 hit points','Uncommon'),
(null,'Potion of Superior healing','Potion',700.00,'A superior healing potion that heals 8d4+8 hit points','Rare'),
(null,'Potion of Supreme healing','Potion',7000.00,'A supreme healing potion that heals 10d4+20 hit points','Very rare'),
(null,'Potion of Poison','Potion',50.00,'This concoction looks, smells, and tastes like a potion of healing or other beneficial potion. However, it is actually poison masked by illusion magic. An identify spell reveals its true nature.
If you drink it, you take 3d6 poison damage, and you must succeed on a DC 13 Constitution saving throw or be poisoned. At the start of each of your turns while you are poisoned in this way, you take 3d6 poison damage. At the end of each of your turns, you can repeat the saving throw. On a successful save, the poison damage you take on your subsequent turns decreases by 1d6. The poison ends when the damage decreases to 0.','Uncommon'),
(null,'Potion of Resistance','Potion',150.00,'When you drink this potion, you gain resistance to one type of damage for 1 hour. The GM chooses the type or determines it randomly from the options below. 
d10	Damage Type	d10	Damage Type
1	Acid	6	Necrotic
2	Cold	7	Poison
3	Fire	8	Psychic
4	Force	9	Radiant
5	Lightning	10	Thunder','Uncommon'),
(null,'Potion of Water Breathing','Potion',120.00,'You can breathe underwater for 1 hour after drinking this potion. Its cloudy green fluid smells of the sea and has a jellyfish like bubble floating in it.','Uncommon'),
(null,'Restorative Ointment','Wondrous',180.00,'This glass jar, 3 inches in diameter, contains 1d4 + 1 doses of a thick mixture that smells faintly of aloe. The jar and its contents weigh 1/2 pound.
As an action, one dose of the ointment can be swallowed or applied to the skin. The creature that receives it regains 2d8 + 2 hit points, ceases to be poisoned, and is cured of any disease.','Uncommon'),
(null,'Ring of Jumping','Wondrous',120.00,'While wearing this ring, you can cast the jump spell from it as a bonus action at will, but can target only yourself when you do so.','Uncommon'),
(null,'Ring of Mind Shielding','Wondrous',230.00,'While wearing this ring, you are immune to magic that allows other creatures to read your thoughts, determine whether you are lying, know your alignment, or know your creature type. Creatures can telepathically communicate with you only if you allow it.
You can use an action to cause the ring to become invisible until you use another action to make it visible, until you remove the ring, or until you die.
If you die while wearing the ring, your soul enters it, unless it already houses a soul. You can remain in the ring or depart for the afterlife. As long as your soul is in the ring, you can telepathically communicate with any creature wearing it. A wearer can\'t prevent this telepathic communication.','Uncommon'),
(null,'Ring of Swimming','Wondrous',130.00,'You have a swimming speed of 40 feet while wearing this ring.','Uncommon'),
(null,'Ring of Warmth','Wondrous',260.00,'While wearing this ring, you have resistance to cold damage. In addition, you and everything you wear and carry are unharmed by temperatures as low as −50 degrees Fahrenheit.','Uncommon'),
(null,'Ring of Water Walking','Wondrous',290.00,'While wearing this ring, you can stand on and move across any liquid surface as if it were solid ground.','Uncommon'),
(null,'Robe of Useful Items','Wondrous',450.00,'This robe has cloth patches of various shapes and colors covering it. While wearing the robe, you can use an action to detach one of the patches, causing it to become the object or creature it represents. Once the last patch is removed, the robe becomes an ordinary garment.
The robe has two of each of the following patches:
Dagger
Bullseye lantern (filled and lit)
Steel mirror
10-foot pole
Hempen rope (50 feet, coiled)
Sack
In addition, the robe has 4d4 other patches. The GM chooses the patches or determines them randomly.
d100	Contents
01–08	Bag of 100 gp
09–15	Silver coffer (1 foot long, 6 inches wide and deep) worth 500 gp
16–22	Iron door (up to 10 feet wide and 10 feet high, barred on one side of your choice), which you can place in an opening you can reach; it conforms to fit the opening, attaching and hinging itself
23–30	10 gems worth 100 gp each
31–44	Wooden ladder (24 feet long)
45–51	A riding horse with saddlebags
52–59	Pit (a cube 10 feet on a side), which you can place on the ground within 10 feet of you
60–68	4 potions of healing
69–75	Rowboat (12 feet long)
76–83	Spell scroll containing one spell of 1st to 3rd level
84–90	2 mastiffs
91–96	Window (2 feet by 4 feet, up to 2 feet deep), which you can place on a vertical surface you can reach
97–00	Portable ram','Uncommon'),
(null,'Rope of Climbing','Wondrous',110.00,'This 60‑foot length of silk rope weighs 3 pounds and can hold up to 3,000 pounds. If you hold one end of the rope and use an action to speak the command word, the rope animates. As a bonus action, you can command the other end to move toward a destination you choose. That end moves 10 feet on your turn when you first command it and 10 feet on each of your turns until reaching its destination, up to its maximum length away, or until you tell it to stop. You can also tell the rope to fasten itself securely to an object or to unfasten itself, to knot or unknot itself, or to coil itself for carrying.
If you tell the rope to knot, large knots appear at 1-­foot intervals along the rope. While knotted, the rope shortens to a 50-­foot length and grants advantage on checks made to climb it.
The rope has AC 20 and 20 hit points. It regains 1 hit point every 5 minutes as long as it has at least 1 hit point. If the rope drops to 0 hit points, it is destroyed.','Uncommon'),
(null,'Shield +1','Armor',200.00,'While holding this shield, you have a bonus to AC determined by the shield\'s rarity. This bonus is in addition to the shield\'s normal bonus to AC.','Uncommon'),
(null,'Shield +2','Armor',1500.00,'While holding this shield, you have a bonus to AC determined by the shield\'s rarity. This bonus is in addition to the shield\'s normal bonus to AC.','Rare'),
(null,'Shield +3','Armor',6000.00,'While holding this shield, you have a bonus to AC determined by the shield\'s rarity. This bonus is in addition to the shield\'s normal bonus to AC.','Very rare'),
(null,'Slippers of Spider Climbing','Wondrous',150.00,'While you wear these light shoes, you can move up, down, and across vertical surfaces and upside down along ceilings, while leaving your hands free. You have a climbing speed equal to your walking speed. However, the slippers don\'t allow you to move this way on a slippery surface, such as one covered by ice or oil.','Uncommon'),
(null,'Staff of the Python','Wondrous',180.00,'You can use an action to speak this staff\'s command word and throw the staff on the ground within 10 feet of you. The staff becomes a giant constrictor snake under your control and acts on its own initiative count. By using a bonus action to speak the command word again, you return the staff to its normal form in a space formerly occupied by the snake.
On your turn, you can mentally command the snake if it is within 60 feet of you and you aren\'t incapacitated. You decide what action the snake takes and where it moves during its next turn, or you can issue it a general command, such as to attack your enemies or guard a location.
If the snake is reduced to 0 hit points, it dies and reverts to its staff form. The staff then shatters and is destroyed. If the snake reverts to staff form before losing all its hit points, it regains all of them.','Uncommon'),
(null,'Stone of Good Luck (Luckstone)','Wondrous',280.00,'While this polished agate is on your person, you gain a +1 bonus to ability checks and saving throws.','Uncommon'),
(null,'Trident of Fish Command','Weapon',230.00,'This trident is a magic weapon. It has 3 charges. While you carry it, you can use an action and expend 1 charge to cast dominate beast (save DC 15) from it on a beast that has an innate swimming speed. The trident regains 1d3 expended charges daily at dawn.','Uncommon'),
(null,'Wand of Magic Detection','Wondrous',170.00,'This wand has 3 charges. While holding it, you can expend 1 charge as an action to cast the detect magic spell from it. The wand regains 1d3 expended charges daily at dawn.','Uncommon'),
(null,'Wand of Magic Missiles','Wondrous',180.00,'This wand has 7 charges. While holding it, you can use an action to expend 1 or more of its charges to cast the magic missile spell from it. For 1 charge, you cast the 1st level version of the spell. You can increase the spell slot level by one for each additional charge you expend.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.','Uncommon'),
(null,'Wand of Secrets','Wondrous',224.00,'The wand has 3 charges. While holding it, you can use an action to expend 1 of its charges, and if a secret door or trap is within 30 feet of you, the wand pulses and points at the one nearest to you. The wand regains 1d3 expended charges daily at dawn.','Uncommon'),
(null,'Wand of Web','Wondrous',126.00,'This wand has 7 charges. While holding it, you can use an action to expend 1 of its charges to cast the web spell (save DC 15) from it.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.','Uncommon'),
(null,'Wand of the War Mage +1','Wondrous',460.00,'While holding this wand, you gain a bonus to spell attack rolls determined by the wand\'s rarity. In addition, you ignore half cover when making a spell attack.','Uncommon'),
(null,'Wand of the War Mage +2','Wondrous',1840.00,'While holding this wand, you gain a bonus to spell attack rolls determined by the wand\'s rarity. In addition, you ignore half cover when making a spell attack.','Rare'),
(null,'Wand of the War Mage +3','Wondrous',8350.00,'While holding this wand, you gain a bonus to spell attack rolls determined by the wand\'s rarity. In addition, you ignore half cover when making a spell attack.','Very rare'),
(null,'Wind Fan','Wondrous',230.00,'While holding this fan, you can use an action to cast the gust of wind spell (save DC 13) from it. Once used, the fan shouldn\'t be used again until the next dawn. Each time it is used again before then, it has a cumulative 20 percent chance of not working and tearing into useless, nonmagical tatters.','Uncommon'),
(null,'Winged Boots','Wondrous',425.00,'While you wear these boots, you have a flying speed equal to your walking speed. You can use the boots to fly for up to 4 hours, all at once or in several shorter flights, each one using a minimum of 1 minute from the duration. If you are flying when the duration expires, you descend at a rate of 30 feet per round until you land.
The boots regain 2 hours of flying capability for every 12 hours they aren\'t in use.','Uncommon'),
(null,'+2 Bolts','Weapon',0,'You have a bonus to attack and damage rolls made with this piece of magic ammunition. The bonus is determined by the rarity of the ammunition. Once it hits a target, the ammunition is no longer magical.','Rare'),
(null,'+2 Arrows','Weapon',0,'You have a bonus to attack and damage rolls made with this piece of magic ammunition. The bonus is determined by the rarity of the ammunition. Once it hits a target, the ammunition is no longer magical.','Rare'),
(null,'+2 Slingshot ammo','Weapon',0,'You have a bonus to attack and damage rolls made with this piece of magic ammunition. The bonus is determined by the rarity of the ammunition. Once it hits a target, the ammunition is no longer magical.','Rare'),
(null,'Amulet of Health','Wondrous',0,'Your Constitution score is 19 while you wear this amulet. It has no effect on you if your Constitution is already 19 or higher.','Rare'),
(null,'Leather armor +1','Armor',0,'The breastplate and shoulder protectors of this armor are made of leather that has been stiffened by being boiled in oil. The rest of the armor is made of magic and more flexible materials.','Rare'),
(null,'Padded armor +1','Armor',0,'Padded armor consists of quilted layers of cloth and batting suffused with magic to make it stronger','Rare'),
(null,'Studded leather armor +1','Armor',0,'Made from tough but flexible leather, studded leather is reinforced with close-set rivets or spikes. And later enhanced with magic','Rare'),
(null,'Breastplate +1','Armor',0,'This armor consists of a fitted metal chest piece worn with supple leather. Although it leaves the legs and arms relatively unprotected, this armor provides good protection for the wearer\'s vital organs while leaving the wearer relatively unencumbered. It\'s also reinforced with magic to make it more durable','Rare'),
(null,'Chainshirt +1','Armor',0,'Made of interlocking metal rings, a chain shirt is worn between layers of clothing or leather. This armor offers modest protection to the wearer\'s upper body and allows the sound of the rings rubbing against one another to be muffled by outer layers and was enchanched with magic','Rare'),
(null,'Halfplate +1','Armor',0,'Half plate consists of shaped metal plates that cover most of the wearer\'s body. It does not include leg protection beyond simple greaves that are attached with leather straps. The plate was specialy forged to make it more durable','Rare'),
(null,'Hide armor +1','Armor',0,'This crude armor consists of thick furs and pelts. It is commonly worn by barbarian tribes, evil humanoids, and other folk who lack access to the tools and materials needed to create better armor.This particular hide comes from a magic beast with thicker and more durable hide','Rare'),
(null,'Scale armor +1','Armor',0,'This armor consists of a coat and leggings (and perhaps a separate skirt) of leather covered with overlapping pieces of metal, much like the scales of a fish. The suit includes gauntlets. Every piece was specificaly enchanced with magic to make it more durable','Rare'),
(null,'Chain mail +1','Armor',0,'Made of interlocking metal rings, chain mail includes a layer of quilted fabric worn underneath the mail to prevent chafing and to cushion the impact of blows. The suit includes gauntlets.Made from a special metal that provides more durability','Rare'),
(null,'Plate armor +1','Armor',0,'Plate consists of shaped, interlocking metal plates to cover the entire body. A suit of plate includes gauntlets, heavy leather boots, a visored helmet, and thick layers of padding underneath the armor. Buckles and straps distribute the weight over the body. The metal used for the making of the armor is a special kind that increases the defence the armor provides','Rare'),
(null,'Ring mail +1','Armor',0,'This armor is leather armor with heavy rings sewn into it. The rings help reinforce the armor against blows from swords and axes. Ring mail is inferior to chain mail, and it\'s usually worn only by those who can\'t afford better armor. The rings on this armor are made from a peculiar metal that helps the wearer defend more easily from attacks','Rare'),
(null,'Splint +1','Armor',0,'This armor is made of narrow vertical strips of metal riveted to a backing of leather that is worn over cloth padding. Flexible chain mail protects the joints. Made from a special metal that enchances defence.','Rare'),
(null,'Armor of Resistance(any armor)','Armor',0,'You have resistance to one type of damage while you wear this armor. The GM chooses the type or determines it randomly from the options below. 
d10	Damage Type	d10	Damage Type
1	Acid	6	Necrotic
2	Cold	7	Poison
3	Fire	8	Psychic
4	Force	9	Radiant
5	Lightning	10	Thunder','Rare'),
(null,'Armor of Vulnerability(plate armor)','Armor',0,'While wearing this armor, you have resistance to one of the following damage types: bludgeoning, piercing, or slashing. The DM chooses the type or determines it randomly.Curse. This armor is cursed, a fact that is revealed only when an identify spell is cast on the armor or you attune to it. Attuning to the armor curses you until you are targeted by the remove curse spell or similar magic; removing the armor fails to end the curse. While cursed you have vulnerability to two of the three damage type associated with the armor (not the one to which it grants resistance).','Rare'),
(null,'Arrow-Catching Shield','Armor',0,'You gain a +2 bonus to AC against ranged attacks while you wield this shield. This bonus is in addition to the shield\'s normal bonus to AC. In addition, whenever an attacker makes a ranged attack against a target within 5 feet of you, you can use your reaction to become the target of the attack instead.','Rare'),
(null,'Bag of Beans','Wondrous',0,'Inside this heavy cloth bag are 3d4 dry beans. The bag weighs 1/2 pound plus 1/4 pound for each bean it contains.
If you dump the bag\'s contents out on the ground, they explode in a 10-foot radius, extending from the beans. Each creature in the area, including you, must make a DC 15 Dexterity saving throw, taking 5d4 fire damage on a failed save, or half as much damage on a successful one. The fire ignites flammable objects in the area that aren\'t being worn or carried.
If you remove a bean from the bag, plant it in dirt or sand, and then water it, the bean produces an effect 1 minute later from the ground where it was planted. The GM can choose an effect from the following table, determine it randomly, or create an effect. d100	Effect
01	5d4 toadstools sprout. If a creature eats a toadstool, roll any die. On an odd roll, the eater must succeed on a DC 15 Constitution saving throw or take 5d6 poison damage and become poisoned for 1 hour. On an even roll, the eater gains 5d6 temporary hit points for 1 hour.
02—10	A geyser erupts and spouts water, beer, berry juice, tea, vinegar, wine, or oil (GM\'s choice) 30 feet into the air for 1d12 rounds.
11—20	A treant sprouts. There\'s a 50 percent chance that the treant is chaotic evil and attacks.
21—30	An animate, immobile stone statue in your likeness rises. It makes verbal threats against you. If you leave it and others come near, it describes you as the most heinous of villains and directs the newcomers to find and attack you. If you are on the same plane of existence as the statue, it knows where you are. The statue becomes inanimate after 24 hours.
31—40	A campfire with blue flames springs forth and burns for 24 hours (or until it is extinguished).
41—50	1d6 + 6 shriekers sprout.
51—60	1d4 + 8 bright pink toads crawl forth. Whenever a toad is touched, it transforms into a Large or smaller monster of the GM\'s choice. The monster remains for 1 minute, then disappears in a puff of bright pink smoke.
61—70	A hungry bulette burrows up and attacks.
71—80	A fruit tree grows. It has 1d10 + 20 fruit, 1d8 of which act as randomly determined magic potions, while one acts as an ingested poison of the GM\'s choice. The tree vanishes after 1 hour. Picked fruit remains, retaining any magic for 30 days.
81—90	A nest of 1d4 + 3 eggs springs up. Any creature that eats an egg must make a DC 20 Constitution saving throw. On a successful save, a creature permanently increases its lowest ability score by 1, randomly choosing among equally low scores. On a failed save, the creature takes 10d6 force damage from an internal magical explosion.
91—99	A pyramid with a 60-foot-square base bursts upward. Inside is a sarcophagus containing a mummy lord. The pyramid is treated as the mummy lord\'s lair, and its sarcophagus contains treasure of the GM\'s choice.
00	A giant beanstalk sprouts, growing to a height of the GM\'s choice. The top leads where the GM chooses, such as to a great view, a cloud giant\'s castle, or a different plane of existence.','Rare'),
(null,'Bead of Force','Wondrous',0,'This small black sphere measures 3/4 of an inch in diameter and weighs an ounce. Typically, 1d4 + 4 beads of force are found together.
You can use an action to throw the bead up to 60 feet. The bead explodes on impact and is destroyed. Each creature within a 10‑foot radius of where the bead landed must succeed on a DC 15 Dexterity saving throw or take 5d4 force damage. A sphere of transparent force then encloses the area for 1 minute. Any creature that failed the save and is completely within the area is trapped inside this sphere. Creatures that succeeded on the save, or are partially within the area, are pushed away from the center of the sphere until they are no longer inside it. Only breathable air can pass through the sphere\'s wall. No attack or other effect can.
An enclosed creature can use its action to push against the sphere\'s wall, moving the sphere up to half the creature\'s walking speed. The sphere can be picked up, and its magic causes it to weigh only 1 pound, regardless of the weight of creatures inside.','Rare'),
(null,'Belt of Dwarvenkind','Wondrous',0,'While wearing this belt, you gain the following benefits:
Your Constitution score increases by 2, to a maximum of 20.
You have advantage on Charisma (Persuasion) checks made to interact with dwarves.
In addition, while attuned to the belt, you have a 50 percent chance each day at dawn of growing a full beard if you\'re capable of growing one, or a visibly thicker beard if you already have one.
If you aren\'t a dwarf, you gain the following additional benefits while wearing the belt:
You have advantage on saving throws against poison, and you have resistance against poison damage.
You have darkvision out to a range of 60 feet.
You can speak, read, and write Dwarvish.','Rare'),
(null,'Berserk Axe','Weapon',0,'You gain a +1 bonus to attack and damage rolls made with this magic weapon. In addition, while you are attuned to this weapon, your hit point maximum increases by 1 for each level you have attained.
Curse. This axe is cursed, and becoming attuned to it extends the curse to you. As long as you remain cursed, you are unwilling to part with the axe, keeping it within reach at all times. You also have disadvantage on attack rolls with weapons other than this one, unless no foe is within 60 feet of you that you can see or hear.
Whenever a hostile creature damages you while the axe is in your possession, you must succeed on a DC 15 Wisdom saving throw or go berserk. While berserk, you must use your action each round to attack the creature nearest to you with the axe. If you can make extra attacks as part of the Attack action, you use those extra attacks, moving to attack the next nearest creature after you fell your current target. If you have multiple possible targets, you attack one at random. You are berserk until you start your turn with no creatures within 60 feet of you that you can see or hear.','Rare'),
(null,'Boots of Levitation','Wondrous',0,'While you wear these boots, you can use an action to cast the levitate spell on yourself at will.','Rare'),
(null,'Boots of Speed','Wondrous',0,'While you wear these boots, you can use a bonus action and click the boots\' heels together. If you do, the boots double your walking speed, and any creature that makes an opportunity attack against you has disadvantage on the attack roll. If you click your heels together again, you end the effect.
When the boots\' property has been used for a total of 10 minutes, the magic ceases to function until you finish a long rest.','Rare'),
(null,'Bowl of Commanding Water Elementals','Wondrous',0,'While this bowl is filled with water, you can use an action to speak the bowl\'s command word and summon a water elemental, as if you had cast the conjure elemental spell. The bowl can\'t be used this way again until the next dawn.
The bowl is about 1 foot in diameter and half as deep. It weighs 3 pounds and holds about 3 gallons.','Rare'),
(null,'Bracers of Defense','Wondrous',0,'While wearing these bracers, you gain a +2 bonus to AC if you are wearing no armor and using no shield.','Rare'),
(null,'Brazier of Commanding Fire Elementals','Wondrous',0,'While a fire burns in this brass brazier, you can use an action to speak the brazier\'s command word and summon a fire elemental, as if you had cast the conjure elemental spell. The brazier can\'t be used this way again until the next dawn.
The brazier weighs 5 pounds.','Rare'),
(null,'Cape of the Mountebank','Wondrous',0,'This cape smells faintly of brimstone. While wearing it, you can use it to cast the dimension door spell as an action. This property of the cape can\'t be used again until the next dawn.
When you disappear, you leave behind a cloud of smoke, and you appear in a similar cloud of smoke at your destination. The smoke lightly obscures the space you left and the space you appear in, and it dissipates at the end of your next turn. A light or stronger wind disperses the smoke.','Rare'),
(null,'Censer of Controlling Air Elementals','Wondrous',0,'While incense is burning in this censer, you can use an action to speak the censer\'s command word and summon an air elemental, as if you had cast the conjure elemental spell. The censer can\'t be used this way again until the next dawn.
This 6-­inch-­wide, 1-­foot-­high vessel resembles a chalice with a decorated lid. It weighs 1 pound.','Rare'),
(null,'Chime of Opening','Wondrous',0,'This hollow metal tube measures about 1 foot long and weighs 1 pound. You can strike it as an action, pointing it at an object within 120 feet of you that can be opened, such as a door, lid, or lock. The chime issues a clear tone, and one lock or latch on the object opens unless the sound can\'t reach the object. If no locks or latches remain, the object itself opens.
The chime can be used ten times. After the tenth time, it cracks and becomes useless.','Rare'),
(null,'Cloak of Displacement','Wondrous',0,'While you wear this cloak, it projects an illusion that makes you appear to be standing in a place near your actual location, causing any creature to have disadvantage on attack rolls against you. If you take damage, the property ceases to function until the start of your next turn. This property is suppressed while you are incapacitated, restrained, or otherwise unable to move.','Rare'),
(null,'Cloak of the Bat','Wondrous',0,'While wearing this cloak, you have advantage on Dexterity (Stealth) checks. In an area of dim light or darkness, you can grip the edges of the cloak with both hands and use it to fly at a speed of 40 feet. If you ever fail to grip the cloak\'s edges while flying in this way, or if you are no longer in dim light or darkness, you lose this flying speed.
While wearing the cloak in an area of dim light or darkness, you can use your action to cast polymorph on yourself, transforming into a bat. While you are in the form of the bat, you retain your Intelligence, Wisdom, and Charisma scores. The cloak can\'t be used this way again until the next dawn.','Rare'),
(null,'Cube of Force','Wondrous',0,'This cube is about an inch across. Each face has a distinct marking on it that can be pressed. The cube starts with 36 charges, and it regains 1d20 expended charges daily at dawn.
You can use an action to press one of the cube\'s faces, expending a number of charges based on the chosen face, as shown in the Cube of Force Faces table. Each face has a different effect. If the cube has insufficient charges remaining, nothing happens. Otherwise, a barrier of invisible force springs into existence, forming a cube 15 feet on a side. The barrier is centered on you, moves with you, and lasts for 1 minute, until you use an action to press the cube\'s sixth face, or the cube runs out of charges. You can change the barrier\'s effect by pressing a different face of the cube and expending the requisite number of charges, resetting the duration.
If your movement causes the barrier to come into contact with a solid object that can\'t pass through the cube, you can\'t move any closer to that object as long as the barrier remains. Face	Charges	Effect
1	1	Gases, wind, and fog can\'t pass through the barrier.
2	2	Nonliving matter can\'t pass through the barrier. Walls, floors, and ceilings can pass through at your discretion.
3	3	Living matter can\'t pass through the barrier.
4	4	Spell effects can\'t pass through the barrier.
5	5	Nothing can pass through the barrier. Walls, floors, and ceilings can pass through at your discretion.
6	0	The barrier deactivates.
The cube loses charges when the barrier is targeted by certain spells or comes into contact with certain spell or magic item effects, as shown in the table below.
Spell or item	Charges lost
Disintegrate	1d12
Horn of blasting	1d10
Passwall	1d6
Prismatic spray	1d20
Wall of fire	1d4','Rare'),
(null,'Dagger of Venom','Weapon',0,'You gain a +1 bonus to attack and damage rolls made with this magic weapon.
You can use an action to cause thick, black poison to coat the blade. The poison remains for 1 minute or until an attack using this weapon hits a creature. That creature must succeed on a DC 15 Constitution saving throw or take 2d10 poison damage and become poisoned for 1 minute. The dagger can\'t be used this way again until the next dawn.','Rare'),
(null,'Dimensional Shackles','Wondrous',0,'You can use an action to place these shackles on an incapacitated creature. The shackles adjust to fit a creature of Small to Large size. In addition to serving as mundane manacles, the shackles prevent a creature bound by them from using any method of extradimensional movement, including teleportation or travel to a different plane of existence. They don\'t prevent the creature from passing through an interdimensional portal.
You and any creature you designate when you use the shackles can use an action to remove them. Once every 30 days, the bound creature can make a DC 30 Strength (Athletics) check. On a success, the creature breaks free and destroys the shackles.','Rare'),
(null,'Dragon Slayer(any sword)','Weapon',0,'You gain a +1 bonus to attack and damage rolls made with this magic weapon.
When you hit a dragon with this weapon, the dragon takes an extra 3d6 damage of the weapon\'s type. For the purpose of this weapon, "dragon" refers to any creature with the dragon type, including dragon turtles and wyverns.','Rare'),
(null,'Elven Chain','Armor',0,'You gain a +1 bonus to AC while you wear this armor. You are considered proficient with this armor even if you lack proficiency with medium armor.','Rare'),
(null,'Feather Token','Wondrous',0,'This tiny object looks like a feather. Different types of feather tokens exist, each with a different single use effect. The GM chooses the kind of token or determines it randomly. 
d100	Feather Token	d100	Feather Token
01-20	Anchor	51-65	Swan boat
21-35	Bird	66-90	Tree
36-50	Fan	91-00	Whip
Anchor. You can use an action to touch the token to a boat or ship. For the next 24 hours, the vessel can\'t be moved by any means. Touching the token to the vessel again ends the effect. When the effect ends, the token disappears.
Bird. You can use an action to toss the token 5 feet into the air. The token disappears and an enormous, multicolored bird takes its place. The bird has the statistics of a roc, but it obeys your simple commands and can\'t attack. It can carry up to 500 pounds while flying at its maximum speed (16 miles an hour for a maximum of 144 miles per day, with a one hour rest for every 3 hours of flying), or 1,000 pounds at half that speed. The bird disappears after flying its maximum distance for a day or if it drops to 0 hit points. You can dismiss the bird as an action.
Fan. If you are on a boat or ship, you can use an action to toss the token up to 10 feet in the air. The token disappears, and a giant flapping fan takes its place. The fan floats and creates a wind strong enough to fill the sails of one ship, increasing its speed by 5 miles per hour for 8 hours. You can dismiss the fan as an action.
Swan Boat. You can use an action to touch the token to a body of water at least 60 feet in diameter. The token disappears, and a 50-foot-long, 20-foot-wide boat shaped like a swan takes its place. The boat is self-propelled and moves across water at a speed of 6 miles per hour. You can use an action while on the boat to command it to move or to turn up to 90 degrees. The boat can carry up to thirty-two Medium or smaller creatures. A Large creature counts as four Medium creatures, while a Huge creature counts as nine. The boat remains for 24 hours and then disappears. You can dismiss the boat as an action.
Tree. You must be outdoors to use this token. You can use an action to touch it to an unoccupied space on the ground. The token disappears, and in its place a nonmagical oak tree springs into existence. The tree is 60 feet tall and has a 5-foot-diameter trunk, and its branches at the top spread out in a 20-foot radius.
Whip. You can use an action to throw the token to a point within 10 feet of you. The token disappears, and a floating whip takes its place. You can then use a bonus action to make a melee spell attack against a creature within 10 feet of the whip, with an attack bonus of +9. On a hit, the target takes 1d6 + 5 force damage.
As a bonus action on your turn, you can direct the whip to fly up to 20 feet and repeat the attack against a creature within 10 feet of it. The whip disappears after 1 hour, when you use an action to dismiss it, or when you are incapacitated or die.','Rare'),
(null,'Figurine of Wondrous Power(Bronze Griffon)','Wondrous',0,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description.
Bronze Griffon (Rare). This bronze statuette is of a griffon rampant. It can become a griffon for up to 6 hours. Once it has been used, it can\'t be used again until 5 days have passed.','Rare'),
(null,'Figurine of Wondrous Power(Ebony Fly)','Wondrous',0,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description.Ebony Fly (Rare). This ebony statuette is carved in the likeness of a horsefly. It can become a giant fly for up to 12 hours and can be ridden as a mount. Once it has been used, it can\'t be used again until 2 days have passed.','Rare'),
(null,'Figurine of Wondrous Power(Golden Lions)','Wondrous',0,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description. These gold statuettes of lions are always created in pairs. You can use one figurine or both simultaneously. Each can become a lion for up to 1 hour. Once a lion has been used, it can\'t be used again until 7 days have passed.','Rare'),
(null,'Figurine of Wondrous Power(Ivory Goats)','Wondrous',0,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description.These ivory statuettes of goats are always created in sets of three. Each goat looks unique and functions differently from the others. Their properties are as follows:

The goat of traveling can become a Large goat with the same statistics as a riding horse. It has 24 charges, and each hour or portion thereof it spends in beast form costs 1 charge. While it has charges, you can use it as often as you wish. When it runs out of charges, it reverts to a figurine and can\'t be used again until 7 days have passed, when it regains all its charges.
The goat of travail becomes a giant goat for up to 3 hours. Once it has been used, it can\'t be used again until 30 days have passed.
The goat of terror becomes a giant goat for up to 3 hours. The goat can\'t attack, but you can remove its horns and use them as weapons. One horn becomes a +1 lance, and the other becomes a +2 longsword. Removing a horn requires an action, and the weapons disappear and the horns return when the goat reverts to figurine form. In addition, the goat radiates a 30 foot radius aura of terror while you are riding it. Any creature hostile to you that starts its turn in the aura must succeed on a DC 15 Wisdom saving throw or be frightened of the goat for 1 minute, or until the goat reverts to figurine form. The frightened creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success. Once it successfully saves against the effect, a creature is immune to the goat\'s aura for the next 24 hours. Once the figurine has been used, it can\'t be used again until 15 days have passed.','Rare'),
(null,'Figurine of Wondrous Power(Marble Elephant )','Wondrous',0,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description.This marble statuette is about 4 inches high and long. It can become an elephant for up to 24 hours. Once it has been used, it can\'t be used again until 7 days have passed.','Rare'),
(null,'Figurine of Wondrous Power(Onyx Dog)','Wondrous',0,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description.This onyx statuette of a dog can become a mastiff for up to 6 hours. The mastiff has an Intelligence of 8 and can speak Common. It also has darkvision out to a range of 60 feet and can see invisible creatures and objects within that range. Once it has been used, it can\'t be used again until 7 days have passed.','Rare'),
(null,'Figurine of Wondrous Power(Serpentine Owl )','Wondrous',0,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
The creature is friendly to you and your companions. It understands your languages and obeys your spoken commands. If you issue no commands, the creature defends itself but takes no other actions.
The creature exists for a duration specific to each figurine. At the end of the duration, the creature reverts to its figurine form. It reverts to a figurine early if it drops to 0 hit points or if you use an action to speak the command word again while touching it. When the creature becomes a figurine again, its property can\'t be used again until a certain amount of time has passed, as specified in the figurine\'s description.','Rare'),
(null,'Flame Tongue(any sword)','Weapon',0,'You can use a bonus action to speak this magic sword\'s command word, causing flames to erupt from the blade. These flames shed bright light in a 40‑foot radius and dim light for an additional 40 feet. While the sword is ablaze, it deals an extra 2d6 fire damage to any target it hits. The flames last until you use a bonus action to speak the command word again or until you drop or sheathe the sword.','Rare'),
(null,'Folding Boat','Wondrous',0,'This object appears as a wooden box that measures 12 inches long, 6 inches wide, and 6 inches deep. It weighs 4 pounds and floats. It can be opened to store items inside. This item also has three command words, each requiring you to use an action to speak it.
One command word causes the box to unfold into a boat 10 feet long, 4 feet wide, and 2 feet deep. The boat has one pair of oars, an anchor, a mast, and a lateen sail. The boat can hold up to four Medium creatures comfortably.
The second command word causes the box to unfold into a ship 24 feet long, 8 feet wide, and 6 feet deep. The ship has a deck, rowing seats, five sets of oars, a steering oar, an anchor, a deck cabin, and a mast with a square sail. The ship can hold fifteen Medium creatures comfortably.
When the box becomes a vessel, its weight becomes that of a normal vessel its size, and anything that was stored in the box remains in the boat.
The third command word causes the folding boat to fold back into a box, provided that no creatures are aboard. Any objects in the vessel that can\'t fit inside the box remain outside the box as it folds. Any objects in the vessel that can fit inside the box do so.','Rare'),
(null,'Gem of Seeing','Wondrous',0,'This gem has 3 charges. As an action, you can speak the gems command word and expend 1 charge. For the next 10 minutes, you have truesight out to 120 feet when you peer through the gem.
The gem regains 1d3 expended charges daily at dawn.','Rare'),
(null,'Giant Slayer(any axe or sword)','Weapon',0,'You gain a +1 bonus to attack and damage rolls made with this magic weapon.
When you hit a giant with it, the giant takes an extra 2d6 damage of the weapon\'s type and must succeed on a DC 15 Strength saving throw or fall prone. For the purpose of this weapon, "giant" refers to any creature with the giant type, including ettins and trolls.','Rare'),
(null,'Glamoured Studded Leather','Armor',0,'While wearing this armor, you gain a +1 bonus to AC. You can also use a bonus action to speak the armor\'s command word and cause the armor to assume the appearance of a normal set of clothing or some other kind of armor. You decide what it looks like, including color, style, and accessories, but the armor retains its normal bulk and weight. The illusory appearance lasts until you use this property again or remove the armor.','Rare'),
(null,'Handy Haversack','Wondrous',0,'This backpack has a central pouch and two side pouches, each of which is an extradimensional space. Each side pouch can hold up to 20 pounds of material, not exceeding a volume of 2 cubic feet. The large central pouch can hold up to 8 cubic feet or 80 pounds of material. The backpack always weighs 5 pounds, regardless of its contents.
Placing an object in the haversack follows the normal rules for interacting with objects. Retrieving an item from the haversack requires you to use an action. When you reach into the haversack for a specific item, the item is always magically on top.
The haversack has a few limitations. If it is overloaded, or if a sharp object pierces it or tears it, the haversack ruptures and is destroyed. If the haversack is destroyed, its contents are lost forever, although an artifact always turns up again somewhere. If the haversack is turned inside out, its contents spill forth, unharmed, and the haversack must be put right before it can be used again. If a breathing creature is placed within the haversack, the creature can survive for up to 10 minutes, after which time it begins to suffocate.
Placing the haversack inside an extradimensional space created by a bag of holding, portable hole, or similar item instantly destroys both items and opens a gate to the Astral Plane. The gate originates where the one item was placed inside the other. Any creature within 10 feet of the gate is sucked through it and deposited in a random location on the Astral Plane. The gate then closes. The gate is one-way only and can\'t be reopened.','Rare'),
(null,'Helm of Teleportation','Wondrous',0,'This helm has 3 charges. While wearing it, you can use an action and expend 1 charge to cast the teleport spell from it. The helm regains 1d3 expended charges daily at dawn.','Rare'),
(null,'Horn of Blasting','Wondrous',0,'You can use an action to speak the horn\'s command word and then blow the horn, which emits a thunderous blast in a 30-­foot cone that is audible 600 feet away. Each creature in the cone must make a DC 15 Constitution saving throw. On a failed save, a creature takes 5d6 thunder damage and is deafened for 1 minute. On a successful save, a creature takes half as much damage and isn\'t deafened. Creatures and objects made of glass or crystal have disadvantage on the saving throw and take 10d6 thunder damage instead of 5d6.
Each use of the horn\'s magic has a 20 percent chance of causing the horn to explode. The explosion deals 10d6 fire damage to the blower and destroys the horn.','Rare'),
(null,'','',0,'','');




insert into shop(shop_id,S_name,Type,S_size,S_description) values
(null,'Emperors Emporium','Merchant','Grand',''),
(null,'Stone Anvil','Blacksmith','Small',''),
(null,'Hovering Unicorn','Magic','Medium',''),
(null,'Broken Wreckage','Blacksmith','Small',''),
(null,'Hammer and Anvil','Blacksmith','Small',''),
(null,'Gilded Hammer','Blacksmith','Small',''),
(null,'','','',''),
(null,'','','',''),
(null,'','','','');