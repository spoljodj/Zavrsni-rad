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
Type            varchar(50) not null,
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







insert into item (item_id,Name,Type,Cost,Description,Rarity) values 
(null,'Potion of healing','Potion',50.00,'A basic healing potion that heals 2d4+2 hit points','Common'),
(null,'Potion of climbing','Potion',35.00,'A potion that grants the user climbing speed equal to his walking speed, also gets advantage on STR(Athletics) checks. Lasts an hour','Common'),
(null,'Adamatine Armor','Armor',100.00,'Armor made from adamantine, the hardest known substance in the world. While wearing you treat any critical hit against you as a normal hit. Can only be made on metal armors(EG:plate armor or chainmail.','Uncommon'),
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
(null,'','',0,'','');





insert into shop(shop_id,S_name,Type,S_size,S_description) values
(null,'Emperors Emporium','Merchant','Grand',''),
(null,'Stone Anvil','Blacksmith','Small',''),
(null,'Hovering Unicorn','Magic','Medium',''),
(null,'','','','');