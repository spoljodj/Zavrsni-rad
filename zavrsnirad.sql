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
(null, 'Administrator', '$2y$10$YhUXusAzdGHCFpcU/WVEY.1fzYUWCeeffaWqlgI8o/QTnJYMO/bNC', 'spoljo1122@gmail.com','admin',true,null);

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
(null,'Alchemy jug','Wondrous',250.00,'This ceramic jug appears to be able to hold a gallon of
                                            liquid and weighs 12 pounds whether full or empty.
                                            Sloshing sounds can be heard from within the jug when
                                            it is shaken, even if the jug is empty.
                                            You can use an action and name one liquid from the
                                            table below to cause the jug to produce the chosen
                                            liquid. Afterward, you can uncork the jug as an action
                                            and pour that liquid out, up to 2 gallons per minute. The
                                            maximum amount of liquid the jug can produce depends
                                            on the liquid you named.
                                            Once the jug starts producing a liquid, it can\'t produce
                                            a different one, or more of one that has reached its
                                            maximum, until the next dawn.
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
(null,'Figurine of Wondrous Power','Wondrous',160.00,'A figurine of wondrous power is a statuette of a beast small enough to fit in a pocket. If you use an action to speak the command word and throw the figurine to a point on the ground within 60 feet of you, the figurine becomes a living creature. If the space where the creature would appear is occupied by other creatures or objects, or if there isn\'t enough space for the creature, the figurine doesn\'t become a creature.
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
(null,'','',0,'',''),
(null,'','',0,'',''),
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