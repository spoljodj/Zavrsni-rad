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
(null, 'Administrator', '$2y$10$34K.VGo7JO/rdwHWyxS12uED7axurDUnrwNUBSGYakjotkhxxupC6', 'spoljo1122@gmail.com','admin',true,null),
(null, 'Administrator', '$2y$10$34K.VGo7JO/rdwHWyxS12uED7axurDUnrwNUBSGYakjotkhxxupC6', 'admin@edunova.hr','admin',true,null);

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
(null,'Halhomin','Falorin','Halfelf','Merchant','34','Halfelf dressed in travelling clothes with brigth colours.'),
(null,'Walcraes','Vanzaren','Halfelf','Merchant','40','Halfelf with smart looks giving a knowledgable aura. Likes to barter'),
(null,'Kriros','Zylnan','Halfelf','Merchant','27','He has cropped, wavy, gray hair and golden eyes.He has silky, sunburned, red skin.He stands 162cm tall and has an athletic build.He has an oval, extremely beautiful face.He has slightly long nails.'),
(null,'Cordeyr','Cragretor','Halfelf','Merchant','18','He has cropped, brown mohawk and black eyes.He has rough red skin.He stands 179cm tall and has a regular build.He has an edgy, disgusting face.He fidgets occasionally.'),
(null,'Fallamir','Orisariph','Halfelf','Merchant','45','He has long, curled, brown hair and gray eyes.
He has veiny brown skin.
He stands 169cm tall and has a muscular build.
He has a square, extremely typical face.'),
(null,'Tanyl','Erbalar','Elf','Merchant','350','He has long, curled, white hair and brown eyes.
He has soft copper skin.
He stands 142cm tall and has a muscular build.
He has a round, extremely innocent face.
He has 3 piercings on his right eyebrow and 3 fresh piercings on his right ear.'),
(null,'Almar','Trisdi','Elf','Merchant','366','He has cropped, straight, red hair and blue eyes.
He has soft golden skin.
He stands 167cm  tall and has a beefy build.
He has an oval, slightly bulbous face.'),
(null,'Wyrran','Holadi','Elf','Merchant','401','He has a bald head and brown eyes.
He has rugged, pockmarked, pink skin.
He stands 187cm tall and has a muscular build.
He has a sharp, innocent face.'),
(null,'Gantar','Nortoris','Elf','Merchant','306','He has cropped, straight, black hair and brown eyes.
He has rough pink skin.
He stands 157cm tall and has a skinny build.
He has an oval, innocent face.'),
(null,'Elandorr','Brydithas','Elf','Merchant','264','He has short, wavy, auburn hair and green eyes.
He has rugged silver skin.
He stands 157cm tall and has an athletic build.
He has an oval, very beautiful face.'),
(null,'Buren','Dhohre','Human','Merchant','45','He has a bald head and golden eyes.
He has rugged brown skin.
He stands 149cm tall and has a skinny build.
He has an oblong, pretty face.'),
(null,'Mau','Steelwhirl','Human','Merchant','31','He has long, white mohawk and blue eyes.
He has soft chocolate skin.
He stands 167cm tall and has a lean build.
He has an oblong, creepy face with a long sideburns.'),
(null,'Trorkoth','Saursky','Human','Merchant','30','He has extremely long, braided, blond hair shaved on the right side and brown eyes.
He has smooth, pockmarked, white skin.
He stands 182cm tall and has a muscular build.
He has a round, bland face with a short beard.'),
(null,'Matok','Vikrift','Human','Merchant','39','He has long, wavy, auburn hair shaved on the right side and black eyes.
He has rough pink skin.
He stands 157cm tall and has a regular build.
He has a square, beautiful face.'),
(null,'Maodadak','Dulivat','Human','Merchant','29','He has short, brown mohawk and black eyes.
He has smooth, dirty, red skin.
He stands 159cm tall and has a skinny build.
He has an edgy, attractive face.'),
(null,'Urovroth','Krembeak','Dragonborn','Merchant','22','He has a smooth head and green eyes.
He has pointy silver scales.
He stands 185cm tall and has a beefy build.
He has an oval, beautiful face.'),
(null,'Iorkax','Alkecidos','Dragonborn','Merchant','24','He has a ridged head and brown eyes.
He has ridged blue scales.
He stands 175cm tall and has a beefy build.
He has an oval, slightly typical face.
'),
(null,'Goraxiros','Arual','Dragonborn','Merchant','30','He has a crested head and brown eyes.
He has shiny brass scales.
He stands 162cm tall and has a fat build.
He has a round, beautiful face.'),
(null,'Raswarum','Prambus','Dragonborn','Merchant','34','He has a smooth head and green eyes.
He has dirty red scales.
He stands 178cm tall and has a beefy build.
He has an edgy, asymmetrical face.'),
(null,'Vyukris','Prammothondun','Dragonborn','Merchant','33','He has a smooth head and golden eyes.
He has ridged copper scales.
He stands 207cm tall and has a massive build.
He has a square, slightly attractive face.'),
(null,'Iraton','','Halfling','Merchant','64','He has long, straight, black hair and green eyes.
He has rugged gray skin.
He stands 111cm  tall and has a regular build.
He has a soft, stunning face.'),
(null,'Xanhace','','Halfling','Merchant','84','He has short, straight, white hair and golden eyes.
He has silky golden skin.
He stands 122cm tall and has a beefy build.
He has a round, forgettable face with a very short moustache.'),
(null,'Linmin','','Halfling','Merchant','92','He has a bald head and black eyes.
He has smooth gray skin.
He stands 91cm tall and has a round build.
He has a square, very forgettable face.'),
(null,'Lakas','','Halfling','Merchant','106','He has short, braided, gray hair and green eyes.
He has rough, pockmarked, golden skin.
He stands 99cm tall and has a round build.
He has a square, forgettable face.'),
(null,'Shartran','','Halfling','Merchant','113','He has very long, wavy, dyed black hair shaved on the right side and green eyes.
He has rugged golden skin.
He stands 94cm tall and has a muscular build.
He has an edgy, repulsive face with a short beard.'),
(null,'Pansire','','Halfling','Merchant','79','He has extremely long, golden mohawk and brown eyes.
He has rough, pockmarked, brown skin.
He stands 109cm  tall and has a regular build.
He has an edgy, forgettable face.'),
(null,'Davros','Beren','Gnome','Merchant','140','He has very long, curled, silver hair and brown eyes.
He has smooth gray skin.
He stands 89cm tall and has a lean build.
He has a square, beautiful face.'),
(null,'Namfoodle','Scheppen','Gnome','Merchant','167','He has long, wavy, golden hair and black eyes.
He has soft pink skin.
He stands 122cm tall and has a beefy build.
He has an oval, stunning face.'),
(null,'Kellen','Murnig','Gnome','Merchant','146','He has cropped, straight, gray hair and green eyes.
He has rough brown skin.
He stands 121cm tall and has an athletic build.
He has an edgy, magnificent face.'),
(null,'Seebo','Pock','Gnome','Merchant','197','He has a bald head and golden eyes.
He has smooth, sunburned, gray skin.
He stands 111cm tall and has an athletic build.
He has a round, ordinary face.'),
(null,'Lemmaegli','Laranonel','Elf','Magic','137','He has long, straight, black hair shaved on the left side and black eyes.
He has rough blueish skin.
He stands 167cm tall and has a lean build.
He has an oval, cute face.
He has an unfinished piercing on his right cheek.'),
(null,'Finethil','Nhaendrin','Elf','Magic','141','He has short, curled, black hair and brown eyes.
He has soft blueish skin.
He stands 172cm tall and has a skinny build.
He has an oval, attractive face.'),
(null,'Penlador','Dlaralthor','Elf','Magic','88','He has a bald head and brown eyes.
He has soft black skin.
He stands 162cm tall and has an athletic build.
He has a square, very beautiful face.'),
(null,'Mironwe','Cromwiel','Elf','Magic','167','He has cropped, gray mohawk and cyan eyes.
He has rough, pockmarked, copper skin.
He stands 162cm tall and has an anorexic build.
He has a round, slightly cute face.'),
(null,'Cirdaere','Runelenrin','Elf','Magic','116','He has short, wavy, gray hair and cyan eyes.

He has rough pink skin.

He stands 137cm tall and has a lean build.

He has a round, slightly magnificent face'),
(null,'Cirdaere','Aldaviel ','Elf','Magic','197','He has a bald head and green eyes.
He has rugged golden skin.
He stands 142cm tall and has a muscular build.
He has a sharp, incredibly pretty face.'),
(null,'Gonethin','Cromviel','Elf','Magic','269','He has long, wavy, dyed black hair and green eyes.
He has rugged, pockmarked, green skin.
He stands 174cm tall and has a skinny build.
He has a round, fanciable face.
He has a scar on his right arm.'),
(null,'Penlador','Dlarraithar','Elf','Magic','140','He has very long, curled, brown hair and green eyes.
He has rough silver skin.
He stands 177cm tall and has a skinny build.
He has an oval, fanciable face.'),
(null,'Galegal','Wervanion','Elf','Magic','92','He has long, white mohawk and brown eyes.
He has silky, sunburned, black skin.
He stands 147cm tall and has a lean build.
He has a square, slightly attractive face.'),
(null,'Quinn','Farligth','Human','Magic','70','He has extremely long, curled, brown hair and brown eyes.
He has soft golden skin.
He stands 164cm tall and has a muscular build.
He has an edgy, beautiful face with a long, braided mutton chops beard.'),
(null,'Forthwind','Morningfall','Human','Magic','29','He has short, straight, black hair and brown eyes.
He has rough golden skin.
He stands 167cm tall and has an obese build.
He has a sharp, very cute face.'),
(null,'Falk','Duststone','Human','Magic','55','He has short, curled, blond hair and brown eyes.
He has soft black skin.
He stands 195cm tall and has an athletic build.
He has an oblong, innocent face.'),
(null,'Geoffrey','Cleves','Human','Magic','70','He has short, wavy, red hair shaved on both side and blue eyes.
He has rugged pink skin.
He stands 164cm tall and has a round build.
He has an edgy, slightly attractive face with a long pencil moustache.'),
(null,'Gregory','Rowntree','Human','Magic','35','He has short, curled, brown hair shaved on the left side and brown eyes.
He has soft black skin.
He stands 170cm  tall and has a beefy build.
He has a diamond-shaped, extremely attractive face with a short moustache.'),
(null,'Cassius','Woodleaf','Human','Magic','32','He has very long, curled, blond hair and blue eyes.

He has silky black skin.

He stands 182cm tall and has a lean build.

He has a triangular, average face with a medium beard.'),
(null,'Donald ','Mownbray','Human','Magic','63','He has short, straight, dyed green hair and brown eyes.

He has veiny, pockmarked, brown skin.

He stands 187cm tall and has a lean build.

He has an oval, incredibly attractive face.'),
(null,'Ronald','Wheatflow','Human','Magic','20','He has short, wavy, blond hair and green eyes.

He has smooth chocolate skin.

He stands 187cm tall and has a regular build.

He has a triangular, innocent face.'),
(null,'Peter','Writingham','Human','Magic','56','He has long, curled, gray hair shaved on both side and brown eyes.

He has smooth chocolate skin.

He stands 159cmtall and has a muscular build.

He has an oblong, repugnant face with a very long, braided pencil moustache.'),
(null,'Leo','Cornwallis','Human','Magic','23','He has very long, curled, brown hair and black eyes.

He has smooth pink skin.

He stands 182cm tall and has an athletic build.

He has an oval, beautiful face with a medium beard.'),
(null,'Felver','Yetix','Gnome','Magic','143','He has a bald head and green eyes.

He has smooth brown skin.

He stands 114cm  tall and has a fat build.

He has a round, beautiful face.'),
(null,'Grapip','Zanyabar','Gnome','Magic','221','He has cropped, curled, gray hair and blue eyes.

He has soft golden skin.

He stands 109cm tall and has a lean build.

He has an oval, common face with a short squared beard.'),
(null,'Celygra','Sakini','Gnome','Magic','183','She has cropped, wavy, black hair and golden eyes.

She has soft gray skin.

She stands 79cm tall and has a lean build.

She has a square, mediocre face.'),
(null,'Galsa','Daphkini','Gnome','Magic','168','She has long, brown mohawk and blue eyes.

She has smooth, sunburned, white skin.

She stands 84cm tall and has a round build.

She has a round, incredibly forgettable face.'),
(null,'Fena','Lyblis','Gnome','Magic','172','She has cropped, wavy, brown hair and black eyes.

She has rugged golden skin.

She stands 104cm tall and has a massive build.

She has an oval, bland face.'),
(null,'Quoji','Jegim','Gnome','Magic','254','He has long, curled, brown hair and green eyes.

He has silky, pockmarked, brown skin.

He stands 96cm  tall and has a round build.

He has an oval, innocent face.'),
(null,'Horhik','Dorrug','Gnome','Magic','360','He has extremely long, straight, blond hair and green eyes.

He has soft pink skin.

He stands 94cm tall and has a lean build.

He has an oval, bland face with a long beard.'),
(null,'Oliver','Writhingham','Halfelf','Magic','41','He has very long, curled, dyed red hair and blue eyes.

He has rough green skin.

He stands 172cm tall and has a muscular build.

He has a round, slightly ordinary face.'),
(null,'Ivy','Bladewalker','Halfelf','Magic','47','She has short, curled, brown hair and gray eyes.

She has smooth green skin.

She stands 137cm tall and has a skinny build.

She has a round, very sightly face.'),
(null,'Finduilye','Kithollal','Halfelf','Magic','75','She has short, braided, brown hair and green eyes.

She has soft pink skin.

She stands 159cm tall and has a muscular build.

She has a sharp, common face.'),
(null,'Emeline','Woodleaf','Halfelf','Magic','23','She has short, wavy, gray hair and blue eyes.

She has rough chocolate skin.

She stands 152cm tall and has a massive build.

She has a sharp, slightly fanciable face.'),
(null,'Finaeli','Haleond','Halfelf','Alchemist','90','He has very long, black mohawk and brown eyes.

He has rough brown skin.

He stands 162cm tall and has a muscular build.

He has an oval, ugly face.'),
(null,'Cirdaere','Mithmerelen','Halfelf','Alchemist','56','He has short, curled, dyed green hair and gray eyes.

He has veiny blueish skin.

He stands 164cm tall and has a fat build.

He has an oblong, unremarkable face.'),
(null,'Imethren','Maerethar','Halfelf','Alchemist','23','She has a bald head and green eyes.

She has rough, sunburned, white skin.

She stands 137cm tall and has a lean build.

She has a diamond-shaped, extremely revolting face.'),
(null,'Cirdire','Shandoralan','Halfelf','Alchemist','35','He has short, wavy, auburn hair and green eyes.

He has silky green skin.

He stands 172cm tall and has a round build.

He has an oblong, bland face.'),
(null,'Elwindth','Rhuivaul','Halfelf','Alchemist','16','She has a bald head and brown eyes.

She has soft pink skin.

She stands 157cm tall and has a regular build.

She has a round, ordinary face.'),
(null,'Gilmirie','Birlond','Halfelf','Alchemist','80','She has long, curled, brown hair and gray eyes.

She has rough chocolate skin.

She stands 147cm tall and has a regular build.

She has a square, forgettable face.'),
(null,'Cirdire','Tathviel','Halfelf','Alchemist','35','He has very long, curled, dyed black hair shaved on the right side and golden eyes.

He has smooth chocolate skin.

He stands 165cm tall and has a beefy build.

He has a round, slightly unremarkable face.'),
(null,'Rowan','Redstream','Halfelf','Alchemist','26','He has a bald head and brown eyes.

He has rough, sunburned, chocolate skin.

He stands 155cm tall and has a beefy build.

He has an oval, fanciable face with a short german goatee.

He has a tattoo of a skull on his chesthis '),
(null,'Serylie','Aldaviel','Halfelf','Alchemist','53','She has a bald head and red eyes.

She has smooth, ghostly, white skin.

She stands 157cm tall and has a muscular build.

She has a round, very unremarkable face.'),
(null,'Aloth','Taldilindar','Elf','Alchemist','94','She has long, wavy, gray hair and brown eyes.

She has smooth green skin.

She stands 187cm tall and has a lean build.

She has an oval, slightly sightly face.'),
(null,'Tanye','Cromelon','Elf','Alchemist','131','She has short, wavy, white hair and brown eyes.

She has rough green skin.

She stands 172cm tall and has a skinny build.

She has an edgy, slightly pretty face.'),
(null,'Celorin','Mithmirelen','Elf','Alchemist','136','He has extremely long, wavy, red hair and golden eyes.

He has silky golden skin.

He stands 197cm tall and has a regular build.

He has an oval, fanciable face.'),
(null,'Ingon','Nhaendrin','Elf','Alchemist','130','He has short, straight, red hair and cyan eyes.

He has rough silver skin.

He stands 162cm tall and has a regular build.

He has an oval, incredibly glamorous face.'),
(null,'Gilme','Elervir','Elf','Alchemist','181','She has very long, curled, black hair and green eyes.

She has soft green skin.

She stands 162cm tall and has a lean build.

She has a square, slightly sightly face.'),
(null,'Elered','Rhuival','Elf','Alchemist','219','He has very long, curled, blond hair and blue eyes.

He has soft green skin.

He stands 172cm tall and has a lean build.

He has a square, fanciable face.'),
(null,'Sybbyl','de Bolbec','Human','Alchemist','59','She has cropped, wavy, red hair and blue eyes.

She has rough pink skin.

She stands 164cm tall and has an athletic build.

She has an oval, pretty face.'),
(null,'Angmar','Fenwick','Human','Alchemist','41','She has long, curled, white hair and green eyes.

She has rugged golden skin.

She stands 177cm tall and has a round build.

She has an oblong, incredibly attractive face.'),
(null,'Thomas','Truegust','Human','Alchemist','65','He has a bald head and black eyes.

He has soft, sunburned, red skin.

He stands 164cm tall and has a regular build.

He has a sharp, fanciable face.'),
(null,'Doran','Cloudfang','Human','Alchemist','32','He has long, wavy, blond hair and brown eyes.

He has smooth red skin.

He stands 170cm tall and has a beefy build.

He has a round, typical face with a long neckbeard.'),
(null,'Arthur','Morningfall','Human','Alchemist','62','He has long, curled, brown hair and black eyes.

He has soft golden skin.

He stands 187cm tall and has a beefy build.

He has an oval, asymmetrical face with a short beard.'),
(null,'Mirabelle','Farligth','Human','Alchemist','35','She has a bald head and gray eyes.

She has rough golden skin.

She stands 157cm tall and has an athletic build.

She has an edgy, revolting face.'),
(null,'Ariel','Cleves','Human','Alchemist','44','She has long, curled, dyed orange hair shaved on the right side and blue eyes.

She has rugged, dirty, chocolate skin.

She stands 157cm tall and has an athletic build.

She has a sharp, forgettable face.'),
(null,'Letholdus','Darkdraft','Thiefling','Alchemist','81','He has cropped, wavy, gray hair and brown eyes.

He has rough red skin.

He stands 167cm tall and has an athletic build.

He has a square, bland face.'),
(null,'Maerwynn','Darkdraft','Thiefling','Alchemist','32','She has long, wavy, brown hair and red eyes.

She has veiny red skin.

She stands 157cm tall and has a skinny build.

She has an oblong, average face.'),
(null,'Idealism','','Thiefling','Alchemist','34','She has long, curled, dyed yellow hair and green eyes.

She has veiny red skin.

She stands 162cm tall and has an athletic build.

She has a triangular, incredibly ugly face.'),
(null,'Uricis','','Thiefling','Alchemist','99','He has short, wavy, red hair and golden eyes.

He has rough, pockmarked, red skin.

He stands 187cm tall and has a lean build.

He has an oval, very typical face.'),
(null,'Vlorg','Clansword','Halforc','Alchemist','29','He has short, blond mohawk and brown eyes.

He has rough brown skin.

He stands 195cm tall and has a muscular build.

He has an edgy, slightly unremarkable face.'),
(null,'Orguth','Forebinder','Halforc','Alchemist','56','He has very long, wavy, brown hair and blue eyes.

He has rough gray skin.

He stands 174cm tall and has a massive build.

He has an oval, forgettable face.'),
(null,'Peter','Twoorb','Halforc','Alchemist','29','He has a bald head and brown eyes.

He has rough white skin.

He stands 182cm tall and has a massive build.

He has an oblong, common face with a short moustache.'),
(null,'Idla','Boulderdown','Halforc','Alchemist','20','She has very long, straight, red hair and blue eyes.

She has soft green skin.

She stands 172cm tall and has a regular build.

She has a round, forgettable face.');








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
(null,'Horseshoes of Speed','Wondrous',0,'These iron horseshoes come in a set of four. While all four shoes are affixed to the hooves of a horse or similar creature, they increase the creature\'s walking speed by 30 feet.','Rare'),
(null,'Instant Fortress','Wondrous',0,'You can use an action to place this 1-­inch metal cube on the ground and speak its command word. The cube rapidly grows into a fortress that remains until you use an action to speak the command word that dismisses it, which works only if the fortress is empty.
The fortress is a square tower, 20 feet on a side and 30 feet high, with arrow slits on all sides and a battlement atop it. Its interior is divided into two floors, with a ladder running along one wall to connect them. The ladder ends at a trapdoor leading to the roof. When activated, the tower has a small door on the side facing you. The door opens only at your command, which you can speak as a bonus action. It is immune to the knock spell and similar magic, such as that of a chime of opening.
Each creature in the area where the fortress appears must make a DC 15 Dexterity saving throw, taking 10d10 bludgeoning damage on a failed save, or half as much damage on a successful one. In either case, the creature is pushed to an unoccupied space outside but next to the fortress. Objects in the area that aren\'t being worn or carried take this damage and are pushed automatically.
The tower is made of adamantine, and its magic prevents it from being tipped over. The roof, the door, and the walls each have 100 hit points, immunity to damage from nonmagical weapons excluding siege weapons, and resistance to all other damage. Only a wish spell can repair the fortress (this use of the spell counts as replicating a spell of 8th level or lower). Each casting of wish causes the roof, the door, or one wall to regain 50 hit points.','Rare'),
(null,'Ioun Stone of Awarness','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect. 
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. You can\'t be surprised while this dark blue rhomboid orbits your head.','Rare'),
(null,'Ioun Stone of Protection','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head.  You gain a +1 bonus to AC while this dusty rose prism orbits your head.','Rare'),
(null,'Ioun Stone of Reserve','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. This vibrant purple prism stores spells cast into it, holding them until you use them. The stone can store up to 3 levels worth of spells at a time. When found, it contains 1d4 − 1 levels of stored spells chosen by the GM.
Any creature can cast a spell of 1st through 3rd level into the stone by touching it as the spell is cast. The spell has no effect, other than to be stored in the stone. If the stone can’t hold the spell, the spell is expended without effect. The level of the slot used to cast the spell determines how much space it uses.
While this stone orbits your head, you can cast any spell stored in it. The spell uses the slot level, spell save DC, spell attack bonus, and spellcasting ability of the original caster, but is otherwise treated as if you cast the spell. The spell cast from the stone is no longer stored in it, freeing up space.','Rare'),
(null,'Ioun Stone of Sustenance','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. You don\'t need to eat or drink while this clear spindle orbits your head.','Rare'),
(null,'Ioun Stone of Absorption','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. While this pale lavender ellipsoid orbits your head, you can use your reaction to cancel a spell of 4th level or lower cast by a creature you can see and targeting only you.
Once the stone has canceled 20 levels of spells, it burns out and turns dull gray, losing its magic. If you are targeted by a spell whose level is higher than the number of spell levels the stone has left, the stone can\'t cancel it.','Very rare'),
(null,'Ioun Stone of Agility','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. Your Dexterity score increases by 2, to a maximum of 20, while this deep red sphere orbits your head.','Very rare'),
(null,'Ioun Stone of Fortitude','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. Your Constitution score increases by 2, to a maximum of 20, while this pink rhomboid orbits your head.','Very rare'),
(null,'Ioun Stone of Insight','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. Your Wisdom score increases by 2, to a maximum of 20, while this incandescent blue sphere orbits your head.','Very rare'),
(null,'Ioun Stone of Intellect','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. Your Intelligence score increases by 2, to a maximum of 20, while this marbled scarlet and blue sphere orbits your head.','Very rare'),
(null,'Ioun Stone of Leadership','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. Your Charisma score increases by 2, to a maximum of 20, while this marbled pink and green sphere orbits your head.','Very rare'),
(null,'Ioun Stone of Strenght','Wondrous',0,'An Ioun stone is named after Ioun, a god of knowledge and prophecy revered on some worlds. Many types of Ioun stone exist, each type a distinct combination of shape and color.
When you use an action to toss one of these stones into the air, the stone orbits your head at a distance of 1d3 feet and confers a benefit to you. Thereafter, another creature must use an action to grasp or net the stone to separate it from you, either by making a successful attack roll against AC 24 or a successful DC 24 Dexterity (Acrobatics) check. You can use an action to seize and stow the stone, ending its effect.
A stone has AC 24, 10 hit points, and resistance to all damage. It is considered to be an object that is being worn while it orbits your head. Your Strength score increases by 2, to a maximum of 20, while this pale blue rhomboid orbits your head.','Very rare'),
(null,'Iron Bands of Binding','Wondrous',0,'This rusty iron sphere measures 3 inches in diameter and weighs 1 pound. You can use an action to speak the command word and throw the sphere at a Huge or smaller creature you can see within 60 feet of you. As the sphere moves through the air, it opens into a tangle of metal bands.
Make a ranged attack roll with an attack bonus equal to your Dexterity modifier plus your proficiency bonus. On a hit, the target is restrained until you take a bonus action to speak the command word again to release it. Doing so, or missing with the attack, causes the bands to contract and become a sphere once more.
A creature, including the one restrained, can use an action to make a DC 20 Strength check to break the iron bands. On a success, the item is destroyed, and the restrained creature is freed. If the check fails, any further attempts made by that creature automatically fail until 24 hours have elapsed.
Once the bands are used, they can\'t be used again until the next dawn.','Rare'),
(null,'Mace of Disruption','Weapon',0,'When you hit a fiend or an undead with this magic weapon, that creature takes an extra 2d6 radiant damage. If the target has 25 hit points or fewer after taking this damage, it must succeed on a DC 15 Wisdom saving throw or be destroyed. On a successful save, the creature becomes frightened of you until the end of your next turn.
While you hold this weapon, it sheds bright light in a 20-­foot radius and dim light for an additional 20 feet.','Rare'),
(null,'Mace of Smiting','Weapon',0,'You gain a +1 bonus to attack and damage rolls made with this magic weapon. The bonus increases to +3 when you use the mace to attack a construct.
When you roll a 20 on an attack roll made with this weapon, the target takes an extra 2d6 bludgeoning damage, or 4d6 bludgeoning damage if it\'s a construct. If a construct has 25 hit points or fewer after taking this damage, it is destroyed.','Rare'),
(null,'Mace of Terror','Weapon',0,'This magic weapon has 3 charges. While holding it, you can use an action and expend 1 charge to release a wave of terror. Each creature of your choice in a 30-­foot radius extending from you must succeed on a DC 15 Wisdom saving throw or become frightened of you for 1 minute. While it is frightened in this way, a creature must spend its turns trying to move as far away from you as it can, and it can\'t willingly move to a space within 30 feet of you. It also can\'t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If it has nowhere it can move, the creature can use the Dodge action. At the end of each of its turns, a creature can repeat the saving throw, ending the effect on itself on a success.
The mace regains 1d3 expended charges daily at dawn.','Rare'),
(null,'Mantle of Spell Resistance','Wondrous',0,'You have advantage on saving throws against spells while you wear this cloak.','Rare'),
(null,'Necklace of Fireballs','Wondrous',0,'This necklace has 1d6 + 3 beads hanging from it. You can use an action to detach a bead and throw it up to 60 feet away. When it reaches the end of its trajectory, the bead detonates as a 3rd level fireball spell (save DC 15).
You can hurl multiple beads, or even the whole necklace, as one action. When you do so, increase the level of the fireball by 1 for each bead beyond the first.','Rare'),
(null,'Necklace of Prayer Beads','Wondrous',0,'This necklace has 1d4 + 2 magic beads made from aquamarine, black pearl, or topaz. It also has many nonmagical beads made from stones such as amber, bloodstone, citrine, coral, jade, pearl, or quartz. If a magic bead is removed from the necklace, that bead loses its magic.
Six types of magic beads exist. The GM decides the type of each bead on the necklace or determines it randomly. A necklace can have more than one bead of the same type. To use one, you must be wearing the necklace. Each bead contains a spell that you can cast from it as a bonus action (using your spell save DC if a save is necessary). Once a magic bead\'s spell is cast, that bead can\'t be used again until the next dawn. d20	Bead of...	Spell
1-6	Blessing	    Bless
7-12 Curing	        Cure wounds (2nd level) or lesser restoration
13-16 Favor	        Greater restoration
17-18 Smiting	    Branding smite
19 Summons	        Planar ally
20 Wind walking	    Wind walk','Rare'),
(null,'Oil of Etherealness','Potion',0,'Beads of this cloudy gray oil form on the outside of its container and quickly evaporate. The oil can cover a Medium or smaller creature, along with the equipment it\'s wearing and carrying (one additional vial is required for each size category above Medium). Applying the oil takes 10 minutes. The affected creature then gains the effect of the etherealness spell for 1 hour.','Rare'),
(null,'Periapt of Proof against Poison','Wondrous',0,'This delicate silver chain has a brilliant cut black gem pendant. While you wear it, poisons have no effect on you. You are immune to the poisoned condition and have immunity to poison damage.','Rare'),
(null,'Portable Hole','Wondrous',0,'This fine black cloth, soft as silk, is folded up to the dimensions of a handkerchief. It unfolds into a circular sheet 6 feet in diameter.
You can use an action to unfold a portable hole and place it on or against a solid surface, whereupon the portable hole creates an extradimensional hole 10 feet deep. The cylindrical space within the hole exists on a different plane, so it can\'t be used to create open passages. Any creature inside an open portable hole can exit the hole by climbing out of it.
You can use an action to close a portable hole by taking hold of the edges of the cloth and folding it up. Folding the cloth closes the hole, and any creatures or objects within remain in the extradimensional space. No matter what\'s in it, the hole weighs next to nothing.
If the hole is folded up, a creature within the hole\'s extradimensional space can use an action to make a DC 10 Strength check. On a successful check, the creature forces its way out and appears within 5 feet of the portable hole or the creature carrying it. A breathing creature within a closed portable hole can survive for up to 10 minutes, after which time it begins to suffocate.
Placing a portable hole inside an extradimensional space created by a bag of holding, handy haversack, or similar item instantly destroys both items and opens a gate to the Astral Plane. The gate originates where the one item was placed inside the other. Any creature within 10 feet of the gate is sucked through it and deposited in a random location on the Astral Plane. The gate then closes. The gate is one-way only and can\'t be reopened.','Rare'),
(null,'Potion of Clairvoyance','Potion',0,'When you drink this potion, you gain the effect of the clairvoyance spell. An eyeball bobs in this yellowish liquid but vanishes when the potion is opened.','Rare'),
(null,'Potion of Diminution','Potion',0,'When you drink this potion, you gain the “reduce” effect of the enlarge/reduce spell for 1d4 hours (no concentration required). The red in the potion\'s liquid continuously contracts to a tiny bead and then expands to color the clear liquid around it. Shaking the bottle fails to interrupt this process.','Rare'),
(null,'Potion of Gaseous Form','Potion',0,'When you drink this potion, you gain the effect of the gaseous form spell for 1 hour (no concentration required) or until you end the effect as a bonus action. This potion\'s container seems to hold fog that moves and pours like water.','Rare'),
(null,'Potion of Heroism','Potion',0,'For 1 hour after drinking it, you gain 10 temporary hit points that last for 1 hour. For the same duration, you are under the effect of the bless spell (no concentration required). This blue potion bubbles and steams as if boiling.','Rare'),
(null,'Potion of Mind Reading','Potion',0,'When you drink this potion, you gain the effect of the detect thoughts spell (save DC 13). The potion\'s dense, purple liquid has an ovoid cloud of pink floating in it.','Rare'),
(null,'Ring of Animal Influence','Wondrous',0,'This ring has 3 charges, and it regains 1d3 expended charges daily at dawn. While wearing the ring, you can use an action to expend 1 of its charges to cast one of the following spells:
Animal friendship (save DC 13)
Fear (save DC 13), targeting only beasts that have an Intelligence of 3 or lower
Speak with animals','Rare'),
(null,'Ring of Evasion','Wondrous',0,'This ring has 3 charges, and it regains 1d3 expended charges daily at dawn. When you fail a Dexterity saving throw while wearing it, you can use your reaction to expend 1 of its charges to succeed on that saving throw instead.','Rare'),
(null,'Ring of Feather Falling','Wondrous',0,'When you fall while wearing this ring, you descend 60 feet per round and take no damage from falling.','Rare'),
(null,'Ring of Free Action','Wondrous',0,'While you wear this ring, difficult terrain doesn\'t cost you extra movement. In addition, magic can neither reduce your speed nor cause you to be paralyzed or restrained.','Rare'),
(null,'Ring of Protection','Wondrous',0,'You gain a +1 bonus to AC and saving throws while wearing this ring.','Rare'),
(null,'Ring of Resistance','Wondrous',0,'You have resistance to one damage type while wearing this ring. The gem in the ring indicates the type, which the GM chooses or determines randomly. 
d10	Damage Type	Gem
1	Acid	Pearl
2	Cold	Tourmaline
3	Fire	Garnet
4	Force	Sapphire
5	Lightning	Citrine
6	Necrotic	Jet
7	Poison	Amethyst
8	Psychic	Jade
9	Radiant	Topaz
10	Thunder	Spinel','Rare'),
(null,'Ring of Spell Storing','Wondrous',0,'This ring stores spells cast into it, holding them until the attuned wearer uses them. The ring can store up to 5 levels worth of spells at a time. When found, it contains 1d6 − 1 levels of stored spells chosen by the GM.
Any creature can cast a spell of 1st through 5th level into the ring by touching the ring as the spell is cast. The spell has no effect, other than to be stored in the ring. If the ring can\'t hold the spell, the spell is expended without effect. The level of the slot used to cast the spell determines how much space it uses.
While wearing this ring, you can cast any spell stored in it. The spell uses the slot level, spell save DC, spell attack bonus, and spellcasting ability of the original caster, but is otherwise treated as if you cast the spell. The spell cast from the ring is no longer stored in it, freeing up space.','Rare'),
(null,'Ring of X-ray Vision','Wondrous',0,'While wearing this ring, you can use an action to speak its command word. When you do so, you can see into and through solid matter for 1 minute. This vision has a radius of 30 feet. To you, solid objects within that radius appear transparent and don\'t prevent light from passing through them. The vision can penetrate 1 foot of stone, 1 inch of common metal, or up to 3 feet of wood or dirt. Thicker substances block the vision, as does a thin sheet of lead.
Whenever you use the ring again before taking a long rest, you must succeed on a DC 15 Constitution saving throw or gain one level of exhaustion.','Rare'),
(null,'Ring of the Ram','Wondrous',0,'This ring has 3 charges, and it regains 1d3 expended charges daily at dawn. While wearing the ring, you can use an action to expend 1 to 3 of its charges to attack one creature you can see within 60 feet of you. The ring produces a spectral ram\'s head and makes its attack roll with a +7 bonus. On a hit, for each charge you spend, the target takes 2d10 force damage and is pushed 5 feet away from you.
Alternatively, you can expend 1 to 3 of the ring\'s charges as an action to try to break an object you can see within 60 feet of you that isn\'t being worn or carried. The ring makes a Strength check with a +5 bonus for each charge you spend.','Rare'),
(null,'Robe of Eyes','Wondrous',0,'This robe is adorned with eyelike patterns. While you wear the robe, you gain the following benefits:

The robe lets you see in all directions, and you have advantage on Wisdom (Perception) checks that rely on sight.
You have darkvision out to a range of 120 feet.
You can see invisible creatures and objects, as well as see into the Ethereal Plane, out to a range of 120 feet.
The eyes on the robe can\'t be closed or averted. Although you can close or avert your own eyes, you are never considered to be doing so while wearing this robe.
A light spell cast on the robe or a daylight spell cast within 5 feet of the robe causes you to be blinded for 1 minute. At the end of each of your turns, you can make a Constitution saving throw (DC 11 for light or DC 15 for daylight), ending the blindness on a success.','Rare'),
(null,'Rod of Rulership','Wondrous',0,'You can use an action to present the rod and command obedience from each creature of your choice that you can see within 120 feet of you. Each target must succeed on a DC 15 Wisdom saving throw or be charmed by you for 8 hours. While charmed in this way, the creature regards you as its trusted leader. If harmed by you or your companions, or commanded to do something contrary to its nature, a target ceases to be charmed in this way.
The rod can\'t be used again until the next dawn.','Rare'),
(null,'Rope of Entanglement','Wondrous',0,'This rope is 30 feet long and weighs 3 pounds. If you hold one end of the rope and use an action to speak its command word, the other end darts forward to entangle a creature you can see within 20 feet of you. The target must succeed on a DC 15 Dexterity saving throw or become restrained.
You can release the creature by using a bonus action to speak a second command word. A target restrained by the rope can use an action to make a DC 15 Strength or Dexterity check (target\'s choice). On a success, the creature is no longer restrained by the rope.
The rope has AC 20 and 20 hit points. It regains 1 hit point every 5 minutes as long as it has at least 1 hit point. If the rope drops to 0 hit points, it is destroyed.','Rare'),
(null,'Shield of Missile Attraction','Armor',0,'While holding this shield, you have resistance to damage from ranged weapon attacks.
Curse. This shield is cursed. Attuning to it curses you until you are targeted by the remove curse spell or similar magic. Removing the shield fails to end the curse on you. Whenever a ranged weapon attack is made against a target within 10 feet of you, the curse causes you to become the target instead.','Rare'),
(null,'Staff of Charming','Wondrous',0,'While holding this staff, you can use an action to expend 1 of its 10 charges to cast charm person, command, or comprehend languages from it using your spell save DC. The staff can also be used as a magic quarterstaff.
If you are holding the staff and fail a saving throw against an enchantment spell that targets only you, you can turn your failed save into a successful one. You can\'t use this property of the staff again until the next dawn. If you succeed on a save against an enchantment spell that targets only you, with or without the staff\'s intervention, you can use your reaction to expend 1 charge from the staff and turn the spell back on its caster as if you had cast the spell.
The staff regains 1d8 + 2 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, the staff becomes a nonmagical quarterstaff.','Rare'),
(null,'Staff of Healing','Wondrous',0,'This staff has 10 charges. While holding it, you can use an action to expend 1 or more of its charges to cast one of the following spells from it, using your spell save DC and spellcasting ability modifier: cure wounds (1 charge per spell level, up to 4th), lesser restoration (2 charges), or mass cure wounds (5 charges).
The staff regains 1d6 + 4 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, the staff vanishes in a flash of light, lost forever.','Rare'),
(null,'Staff of Swarming Insects','Wondrous',0,'This staff has 10 charges and regains 1d6 + 4 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, a swarm of insects consumes and destroys the staff, then disperses.
Spells. While holding the staff, you can use an action to expend some of its charges to cast one of the following spells from it, using your spell save DC: giant insect (4 charges) or insect plague (5 charges).
Insect Cloud. While holding the staff, you can use an action and expend 1 charge to cause a swarm of harmless flying insects to spread out in a 30-­foot radius from you. The insects remain for 10 minutes, making the area heavily obscured for creatures other than you. The swarm moves with you, remaining centered on you. A wind of at least 10 miles per hour disperses the swarm and ends the effect.','Rare'),
(null,'Staff of Withering','Wondrous',0,'This staff has 3 charges and regains 1d3 expended charges daily at dawn.
The staff can be wielded as a magic quarterstaff. On a hit, it deals damage as a normal quarterstaff, and you can expend 1 charge to deal an extra 2d10 necrotic damage to the target. In addition, the target must succeed on a DC 15 Constitution saving throw or have disadvantage for 1 hour on any ability check or saving throw that uses Strength or Constitution.','Rare'),
(null,'Staff of the Woodlands','Wondrous',0,'This staff can be wielded as a magic quarterstaff that grants a +2 bonus to attack and damage rolls made with it. While holding it, you have a +2 bonus to spell attack rolls.
The staff has 10 charges for the following properties. It regains 1d6 + 4 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, the staff loses its properties and becomes a nonmagical quarterstaff.
Spells. You can use an action to expend 1 or more of the staff\'s charges to cast one of the following spells from it, using your spell save DC: animal friendship (1 charge), awaken (5 charges), barkskin (2 charges), locate animals or plants (2 charges), speak with animals (1 charge), speak with plants (3 charges), or wall of thorns (6 charges).
You can also use an action to cast the pass without trace spell from the staff without using any charges.
Tree Form. You can use an action to plant one end of the staff in fertile earth and expend 1 charge to transform the staff into a healthy tree. The tree is 60 feet tall and has a 5-­foot-­diameter trunk, and its branches at the top spread out in a 20‑foot radius. The tree appears ordinary but radiates a faint aura of transmutation magic if targeted by detect magic. While touching the tree and using another action to speak its command word, you return the staff to its normal form. Any creature in the tree falls when it reverts to a staff.','Rare'),
(null,'Stone of Controlling Earth Elementals','Wondrous',0,'If the stone is touching the ground, you can use an action to speak its command word and summon an earth elemental, as if you had cast the conjure elemental spell. The stone can\'t be used this way again until the next dawn. The stone weighs 5 pounds','Rare'),
(null,'Sun Blade','Weapon',0,'This item appears to be a longsword hilt. While grasping the hilt, you can use a bonus action to cause a blade of pure radiance to spring into existence, or make the blade disappear. While the blade exists, this magic longsword has the finesse property. If you are proficient with shortswords or longswords, you are proficient with the sun blade.
You gain a +2 bonus to attack and damage rolls made with this weapon, which deals radiant damage instead of slashing damage. When you hit an undead with it, that target takes an extra 1d8 radiant damage.
The sword\'s luminous blade emits bright light in a 15‑foot radius and dim light for an additional 15 feet. The light is sunlight. While the blade persists, you can use an action to expand or reduce its radius of bright and dim light by 5 feet each, to a maximum of 30 feet each or a minimum of 10 feet each.','Rare'),
(null,'Sword of Life Stealing','Weapon',0,'When you attack a creature with this magic weapon and roll a 20 on the attack roll, that target takes an extra 3d6 necrotic damage, provided that the target isn\'t a construct or an undead. You gain temporary hit points equal to the extra damage dealt.','Rare'),
(null,'Sword of Wounding','Weapon',0,'Hit points lost to this weapon\'s damage can be regained only through a short or long rest, rather than by regeneration, magic, or any other means.
Once per turn, when you hit a creature with an attack using this magic weapon, you can wound the target. At the start of each of the wounded creature\'s turns, it takes 1d4 necrotic damage for each time you\'ve wounded it, and it can then make a DC 15 Constitution saving throw, ending the effect of all such wounds on itself on a success. Alternatively, the wounded creature, or a creature within 5 feet of it, can use an action to make a DC 15 Wisdom (Medicine) check, ending the effect of such wounds on it on a success.','Rare'),
(null,'Wand of Binding','Wondrous',0,'This wand has 7 charges for the following properties. It regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.
Spells. While holding the wand, you can use an action to expend some of its charges to cast one of the following spells (save DC 17): hold monster (5 charges) or hold person (2 charges).
Assisted Escape. While holding the wand, you can use your reaction to expend 1 charge and gain advantage on a saving throw you make to avoid being paralyzed or restrained, or you can expend 1 charge and gain advantage on any check you make to escape a grapple.','Rare'),
(null,'Wand of Enemy Detection','Wondrous',0,'This wand has 7 charges. While holding it, you can use an action and expend 1 charge to speak its command word. For the next minute, you know the direction of the nearest creature hostile to you within 60 feet, but not its distance from you. The wand can sense the presence of hostile creatures that are ethereal, invisible, disguised, or hidden, as well as those in plain sight. The effect ends if you stop holding the wand.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.','Rare'),
(null,'Wand of Fear','Wondrous',0,'This wand has 7 charges for the following properties. It regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.
Command. While holding the wand, you can use an action to expend 1 charge and command another creature to flee or grovel, as with the command spell (save DC 15).
Cone of Fear. While holding the wand, you can use an action to expend 2 charges, causing the wand\'s tip to emit a 60 foot cone of amber light. Each creature in the cone must succeed on a DC 15 Wisdom saving throw or become frightened of you for 1 minute. While it is frightened in this way, a creature must spend its turns trying to move as far away from you as it can, and it can\'t willingly move to a space within 30 feet of you. It also can\'t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If it has nowhere it can move, the creature can use the Dodge action. At the end of each of its turns, a creature can repeat the saving throw, ending the effect on itself on a success.','Rare'),
(null,'Wand of Fireballs','Wondrous',0,'This wand has 7 charges. While holding it, you can use an action to expend 1 or more of its charges to cast the fireball spell (save DC 15) from it. For 1 charge, you cast the 3rd level version of the spell. You can increase the spell slot level by one for each additional charge you expend.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.','Rare'),
(null,'Wand of Lightning Bolts','Wondrous',0,'This wand has 7 charges. While holding it, you can use an action to expend 1 or more of its charges to cast the lightning bolt spell (save DC 15) from it. For 1 charge, you cast the 3rd level version of the spell. You can increase the spell slot level by one for each additional charge you expend.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.','Rare'),
(null,'Wand of Paralysis','Wondrous',0,'This wand has 7 charges. While holding it, you can use an action to expend 1 of its charges to cause a thin blue ray to streak from the tip toward a creature you can see within 60 feet of you. The target must succeed on a DC 15 Constitution saving throw or be paralyzed for 1 minute. At the end of each of the target\'s turns, it can repeat the saving throw, ending the effect on itself on a success.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.','Rare'),
(null,'Wand of Wonder','Wondrous',0,'This wand has 7 charges. While holding it, you can use an action to expend 1 of its charges and choose a target within 120 feet of you. The target can be a creature, an object, or a point in space. Roll d100 and consult the following table to discover what happens.
If the effect causes you to cast a spell from the wand, the spell\'s save DC is 15. If the spell normally has a range expressed in feet, its range becomes 120 feet if it isn\'t already.
If an effect covers an area, you must center the spell on and include the target. If an effect has multiple possible subjects, the GM randomly determines which ones are affected.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand’s last charge, roll a d20. On a 1, the wand crumbles into dust and is destroyed. d100	Contents
01-05	You cast slow.
06-10	You cast faerie fire.
11-15	You are stunned until the start of your next turn, believing something awesome just happened.
16-20	You cast gust of wind.
21-25	You cast detect thoughts on the target you chose. If you didn\'t target a creature, you instead take 1d6 psychic damage.
26-30	You cast stinking cloud.
31-33	Heavy rain falls in a 60-foot radius centered on the target. The area becomes lightly obscured. The rain falls until the start of your next turn.
34-36	An animal appears in the unoccupied space nearest the target. The animal isn\'t under your control and acts as it normally would. Roll a d100 to determine which animal appears. On a 01–25, a rhinoceros appears; on a 26–50, an elephant appears; and on a 51–100, a rat appears.
37-46	You cast lightning bolt.
47-49	A cloud of 600 oversized butterflies fills a 30-foot radius centered on the target. The area becomes heavily obscured. The butterflies remain for 10 minutes.
50-53	You enlarge the target as if you had cast enlarge/reduce. If the target can\'t be affected by that spell, or if you didn\'t target a creature, you become the target.
54-58	You cast darkness.
59-62	Grass grows on the ground in a 60-foot radius centered on the target. If grass is already there, it grows to ten times its normal size and remains overgrown for 1 minute.
63-65	An object of the GM\'s choice disappears into the Ethereal Plane. The object must be neither worn nor carried, within 120 feet of the target, and no larger than 10 feet in any dimension.
66-69	You shrink yourself as if you had cast enlarge/reduce on yourself.
70-79	You cast fireball.
80-84	You cast invisibility on yourself.
85-87	Leaves grow from the target. If you chose a point in space as the target, leaves sprout from the creature nearest to that point. Unless they are picked off, the leaves turn brown and fall off after 24 hours.
88-90	A stream of 1d4 × 10 gems, each worth 1 gp, shoots from the wand\'s tip in a line 30 feet long and 5 feet wide. Each gem deals 1 bludgeoning damage, and the total damage of the gems is divided equally among all creatures in the line.
91-95	A burst of colorful shimmering light extends from you in a 30-foot radius. You and each creature in the area that can see must succeed on a DC 15 Constitution saving throw or become blinded for 1 minute. A creature can repeat the saving throw at the end of each of its turns, ending the effect on itself on a success.
96-97	The target\'s skin turns bright blue for 1d10 days. If you chose a point in space, the creature nearest to that point is affected.
98-00	If you targeted a creature, it must make a DC 15 Constitution saving throw. If you didn\'t target a creature, you become the target and must make the saving throw. If the saving throw fails by 5 or more, the target is instantly petrified. On any other failed save, the target is restrained and begins to turn to stone. While restrained in this way, the target must repeat the saving throw at the end of its next turn, becoming petrified on a failure or ending the effect on a success. The petrification lasts until the target is freed by the greater restoration spell or similar magic.','Rare'),
(null,'Wings of Flying','Wondrous',0,'While wearing this cloak, you can use an action to speak its command word. This turns the cloak into a pair of bat wings or bird wings on your back for 1 hour or until you repeat the command word as an action. The wings give you a flying speed of 60 feet. When they disappear, you can\'t use them again for 1d12 hours.','Rare'),
(null,'Club','Weapon',0.1,'1d4 bludgeon Light','Common'),
(null,'Dagger','Weapon',0.2,'1d4 piercing Finesse,light,thrown(20/60)','Common'),
(null,'Greatclub','Weapon',0.2,'1d8 bludgeon Two-handed','Common'),
(null,'Handaxe','Weapon',0.5,'1d6 slashing Light,thrown(20/60)','Common'),
(null,'Javelin','Weapon',0.5,'1d6 piercing Thrown(30/120)','Common'),
(null,'Light Hammer','Weapon',0.2,'1d4 bludgeon Ligth,thrown(20/60)','Common'),
(null,'Quarterstaff','Weapon',0.5,'1d6 bludgeon Versatile(1d8)','Common'),
(null,'Mace','Weapon',0.2,'1d6 bludgeon','Common'),
(null,'Sickle','Weapon',1,'1d4 slashing Light','Common'),
(null,'Spear','Weapon',1,'1d6 piercing Thrown(20/60), Versatile(1d8)','Common'),
(null,'Light Crossbow','Weapon',25,'1d8 piercing Ammunition,range(80/320),loading,two-handed','Common'),
(null,'Dart','Weapon',0.05,'1d4 piercing Finesse, thrown(20/60)','Common'),
(null,'Sling','Weapon',0.1,'1d4 bludgeon Ammunition,range(30/120)','Common'),
(null,'Battleaxe','Weapon',10,'1d8 slashing Versatile (1d10)','Common'),
(null,'Flail','Weapon',10,'1d8 bludgeon','Common'),
(null,'Glaive','Weapon',20,'1d10 slashing Heavy,reach,two-handed','Common'),
(null,'Greataxe','Weapon',30,'1d12 slashing Heavy,two-handed','Common'),
(null,'Greatsword','Weapon',50,'2d6 slashing Heavy,two-handed','Common'),
(null,'Halberd','Weapon',20,'1d10 slashing Heavy,reach,two-handed','Common'),
(null,'Lance','Weapon',10,'1d12 piercing Reach,special','Common'),
(null,'Longsword','Weapon',15,'1d8 slashing Versatile(1d10)','Common'),
(null,'Maul','Weapon',10,'2d6 bludgeon Heavy,two-handed','Common'),
(null,'Morningstar','Weapon',15,'1d8 piercing','Common'),
(null,'Pike','Weapon',5,'1d10 piercing Heavy,reach,two-handed','Common'),
(null,'Rapier','Weapon',25,'1d8 piercing Finesse','Common'),
(null,'Scimitar','Weapon',25,'1d6 slashing Finesse,light','Common'),
(null,'Shortsword','Weapon',10,'1d6 piercing Finesse,light','Common'),
(null,'Trident','Weapon',5,'1d6 piercing Thrown(20/60),Versatile(1d8)','Common'),
(null,'War pick','Weapon',5,'1d8 piercing','Common'),
(null,'Warhammer','Weapon',15,'1d8 bludgeon Versatile(1d10)','Common'),
(null,'Whip','Weapon',2,'1d4 slashing Finnese, reach','Common'),
(null,'Blowgun','Weapon',10,'1 piercing Ammunition, range(25/100),loading','Common'),
(null,'Hand Crossbow','Weapon',75,'1d6 piercing Ammunition,range(30/120),light,loading','Common'),
(null,'Heavy Crossbow','Weapon',50,'1d8 piercing Ammunition,range(100/400),heavy,loading,two-handed','Common'),
(null,'Longbow','Weapon',50,'1d8 piercing Ammunition,range(150/600),heavy,two-handed','Common'),
(null,'Net','Weapon',1,'Thrown(5/15), A Large or smaller creature hit by a net is restrained until it is freed. A net has no effect on creatures that are formless, or creatures that are Huge or larger. A creature can use its action to make a DC 10 Strength check, freeing itself or another creature within its reach on a success. Dealing 5 slashing damage to the net (AC 10) also frees the creature without harming it, ending the effect and destroying the net.When you use an action, bonus action, or reaction to attack with a net, you can make only one attack regardless of the number of attacks you can normally make.','Common'),
(null,'Shortbow','Weapon',25,'1d6 piercing Ammunition,range(80/320),two-handed','Common'),
(null,'Leather Armor','Armor',10,'AC=11 + Dex modifier','Common'),
(null,'Padded Leather Armor','Armor',10,'AC=11 + Dex modifier Stealth Disadvantage','Common'),
(null,'Studded Leather Armor','Armor',0,'AC=12 + Dex modifier','Common'),
(null,'Breastplate','Armor',400,'AC=14 + Dex modifier (max 2)','Common'),
(null,'Chain Shirt','Armor',50,'AC=13 + Dex modifier (max 2)','Common'),
(null,'Half Plate','Armor',750,'AC=15 + Dex modifier (max 2) Stealth Disadvantage','Common'),
(null,'Hide Armor','Armor',10,'AC=12 + Dex modifier (max 2)','Common'),
(null,'Scale Mail','Armor',50,'AC=14 + Dex modifier (max 2) Stealth Disadvantage','Common'),
(null,'Chain Mail','Armor',75,'AC=16 Stealth Disadvantage','Common'),
(null,'Plate','Armor',1500,'AC=18 Stealth Disadvantage','Common'),
(null,'Ring Mail','Armor',30,'AC=14 Stealth Disadvantage','Common'),
(null,'Splint','Armor',200,'AC=17 Stealth Disadvantage','Common'),
(null,'Leather Armor +2','Armor',10,'AC=13 + Dex modifier','Very rare'),
(null,'Padded Leather Armor +2','Armor',10,'AC=13 + Dex modifier Stealth Disadvantage','Very rare'),
(null,'Studded Leather Armor +2','Armor',0,'AC=14 + Dex modifier','Very rare'),
(null,'Breastplate +2','Armor',400,'AC=16 + Dex modifier (max 2)','Very rare'),
(null,'Chain Shirt +2','Armor',50,'AC=15 + Dex modifier (max 2)','Very rare'),
(null,'Half Plate +2','Armor',750,'AC=17 + Dex modifier (max 2) Stealth Disadvantage','Very rare'),
(null,'Hide Armor +2','Armor',10,'AC=14 + Dex modifier (max 2)','Very rare'),
(null,'Scale Mail +2','Armor',50,'AC=16 + Dex modifier (max 2) Stealth Disadvantage','Very rare'),
(null,'Chain Mail +2','Armor',75,'AC=18 Stealth Disadvantage','Very rare'),
(null,'Plate +2','Armor',1500,'AC=20 Stealth Disadvantage','Very rare'),
(null,'Ring Mail +2','Armor',30,'AC=16 Stealth Disadvantage','Very rare'),
(null,'Splint +2','Armor',200,'AC=19 Stealth Disadvantage','Very rare'),
(null,'Club +1','Weapon',1,'1d4+1 bludgeon Light','Uncommon'),
(null,'Dagger +1','Weapon',2,'1d4+1 piercing Finesse,light,thrown(20/60)','Uncommon'),
(null,'Greatclub +1','Weapon',2,'1d8+1 bludgeon Two-handed','Uncommon'),
(null,'Handaxe +1','Weapon',5,'1d6+1 slashing Light,thrown(20/60)','Uncommon'),
(null,'Javelin +1','Weapon',5,'1d6+1 piercing Thrown(30/120)','Uncommon'),
(null,'Light Hammer +1','Weapon',2,'1d4+1 bludgeon Ligth,thrown(20/60)','Uncommon'),
(null,'Quarterstaff +1','Weapon',5,'1d6+1 bludgeon Versatile(1d8)','Uncommon'),
(null,'Mace +1','Weapon',2,'1d6 bludgeon','Uncommon'),
(null,'Sickle +1','Weapon',10,'1d4+1 slashing Light','Uncommon'),
(null,'Spear +1','Weapon',10,'1d6+1 piercing Thrown(20/60), Versatile(1d8)','Uncommon'),
(null,'Light Crossbow +1','Weapon',250,'1d8+1 piercing Ammunition,range(80/320),loading,two-handed','Uncommon'),
(null,'Dart +1','Weapon',0.5,'1d4+1 piercing Finesse, thrown(20/60)','Uncommon'),
(null,'Sling +1','Weapon',1,'1d4+1 bludgeon Ammunition,range(30/120)','Uncommon'),
(null,'Battleaxe +1','Weapon',100,'1d8+1 slashing Versatile (1d10)','Uncommon'),
(null,'Flail +1','Weapon',100,'1d8+1 bludgeon','Uncommon'),
(null,'Glaive +1','Weapon',200,'1d10+1 slashing Heavy,reach,two-handed','Uncommon'),
(null,'Greataxe +1','Weapon',300,'1d12+1 slashing Heavy,two-handed','Uncommon'),
(null,'Greatsword +1','Weapon',500,'2d6+1 slashing Heavy,two-handed','Uncommon'),
(null,'Halberd +1','Weapon',200,'1d10+1 slashing Heavy,reach,two-handed','Uncommon'),
(null,'Lance +1','Weapon',100,'1d12+1 piercing Reach,special','Uncommon'),
(null,'Longsword +1','Weapon',150,'1d8+1 slashing Versatile(1d10)','Uncommon'),
(null,'Maul +1','Weapon',100,'2d6+1 bludgeon Heavy,two-handed','Uncommon'),
(null,'Morningstar +1','Weapon',150,'1d8+1 piercing','Uncommon'),
(null,'Pike +1','Weapon',50,'1d10+1 piercing Heavy,reach,two-handed','Uncommon'),
(null,'Rapier +1','Weapon',250,'1d8+1 piercing Finesse','Uncommon'),
(null,'Scimitar +1','Weapon',250,'1d6+1 slashing Finesse,light','Uncommon'),
(null,'Shortsword +1','Weapon',100,'1d6+1 piercing Finesse,light','Uncommon'),
(null,'Trident +1','Weapon',50,'1d6+1 piercing Thrown(20/60),Versatile(1d8)','Uncommon'),
(null,'War pick +1','Weapon',50,'1d8+1 piercing','Uncommon'),
(null,'Warhammer +1','Weapon',150,'1d8+1 bludgeon Versatile(1d10)','Uncommon'),
(null,'Whip +1','Weapon',20,'1d4+1 slashing Finnese, reach','Uncommon'),
(null,'Blowgun +1','Weapon',100,'2 piercing Ammunition, range(25/100),loading','Uncommon'),
(null,'Hand Crossbow +1','Weapon',750,'1d6+1 piercing Ammunition,range(30/120),light,loading','Uncommon'),
(null,'Heavy Crossbow +1','Weapon',500,'1d8+1 piercing Ammunition,range(100/400),heavy,loading,two-handed','Uncommon'),
(null,'Longbow +1','Weapon',500,'1d8+1 piercing Ammunition,range(150/600),heavy,two-handed','Uncommon'),
(null,'Club +2','Weapon',300,'1d4+2 bludgeon Light','Rare'),
(null,'Dagger +2','Weapon',1200,'1d4+2 piercing Finesse,light,thrown(20/60)','Rare'),
(null,'Greatclub +2','Weapon',1000,'1d8+2 bludgeon Two-handed','Rare'),
(null,'Handaxe +2','Weapon',1200,'1d6+2 slashing Light,thrown(20/60)','Rare'),
(null,'Javelin +2','Weapon',1200,'1d6+2 piercing Thrown(30/120)','Rare'),
(null,'Light Hammer +2','Weapon',1100,'1d4+1 bludgeon Ligth,thrown(20/60)','Rare'),
(null,'Quarterstaff +2','Weapon',1000,'1d6+2 bludgeon Versatile(1d8)','Rare'),
(null,'Mace +2','Weapon',1000,'1d6 bludgeon','Rare'),
(null,'Sickle +2','Weapon',1000,'1d4+2 slashing Light','Rare'),
(null,'Spear +2','Weapon',1000,'1d6+2 piercing Thrown(20/60), Versatile(1d8)','Rare'),
(null,'Light Crossbow +2','Weapon',1800,'1d8+2 piercing Ammunition,range(80/320),loading,two-handed','Rare'),
(null,'Dart +2','Weapon',200,'1d4+2 piercing Finesse, thrown(20/60)','Rare'),
(null,'Sling +2','Weapon',500,'1d4+2 bludgeon Ammunition,range(30/120)','Rare'),
(null,'Battleaxe +2','Weapon',1600,'1d8+2 slashing Versatile (1d10)','Rare'),
(null,'Flail +2','Weapon',1600,'1d8+2 bludgeon','Rare'),
(null,'Glaive +2','Weapon',1900,'1d10+2 slashing Heavy,reach,two-handed','Rare'),
(null,'Greataxe +2','Weapon',1900,'1d12+2 slashing Heavy,two-handed','Rare'),
(null,'Greatsword +2','Weapon',2200,'2d6+2 slashing Heavy,two-handed','Rare'),
(null,'Halberd +2','Weapon',2000,'1d10+2 slashing Heavy,reach,two-handed','Rare'),
(null,'Lance +2','Weapon',1900,'1d12+2 piercing Reach,special','Rare'),
(null,'Longsword +2','Weapon',1500,'1d8+2 slashing Versatile(1d10)','Rare'),
(null,'Maul +2','Weapon',1700,'2d6+2 bludgeon Heavy,two-handed','Rare'),
(null,'Morningstar +2','Weapon',1500,'1d8+2 piercing','Rare'),
(null,'Pike +2','Weapon',1300,'1d10+2 piercing Heavy,reach,two-handed','Rare'),
(null,'Rapier +2','Weapon',1700,'1d8+2 piercing Finesse','Rare'),
(null,'Scimitar +2','Weapon',1700,'1d6+2 slashing Finesse,light','Rare'),
(null,'Shortsword +2','Weapon',1400,'1d6+2 piercing Finesse,light','Rare'),
(null,'Trident +2','Weapon',1300,'1d6+2 piercing Thrown(20/60),Versatile(1d8)','Rare'),
(null,'War pick +2','Weapon',1300,'1d8+2 piercing','Rare'),
(null,'Warhammer +2','Weapon',1400,'1d8+2 bludgeon Versatile(1d10)','Rare'),
(null,'Whip +2','Weapon',1000,'1d4+2 slashing Finnese, reach','Rare'),
(null,'Blowgun +2','Weapon',1000,'3 piercing Ammunition, range(25/100),loading','Rare'),
(null,'Hand Crossbow +2','Weapon',2600,'1d6+2 piercing Ammunition,range(30/120),light,loading','Rare'),
(null,'Heavy Crossbow +2','Weapon',2400,'1d8+2 piercing Ammunition,range(100/400),heavy,loading,two-handed','Rare'),
(null,'Longbow +2','Weapon',2000,'1d8+2 piercing Ammunition,range(150/600),heavy,two-handed','Rare'),
(null,'Club +3','Weapon',3000,'1d4+3 bludgeon Light','Very rare'),
(null,'Dagger +3','Weapon',12000,'1d4+3 piercing Finesse,light,thrown(20/60)','Very rare'),
(null,'Greatclub +3','Weapon',10000,'1d8+3 bludgeon Two-handed','Very rare'),
(null,'Handaxe +3','Weapon',12000,'1d6+3 slashing Light,thrown(20/60)','Very rare'),
(null,'Javelin +3','Weapon',12000,'1d6+3 piercing Thrown(30/120)','Very rare'),
(null,'Light Hammer +3','Weapon',11000,'1d4+1 bludgeon Ligth,thrown(20/60)','Very rare'),
(null,'Quarterstaff +3','Weapon',10000,'1d6+3 bludgeon Versatile(1d8)','Very rare'),
(null,'Mace +3','Weapon',10000,'1d6 bludgeon','Very rare'),
(null,'Sickle +3','Weapon',10000,'1d4+3 slashing Light','Very rare'),
(null,'Spear +3','Weapon',10000,'1d6+3 piercing Thrown(20/60), Versatile(1d8)','Very rare'),
(null,'Light Crossbow +3','Weapon',18000,'1d8+3 piercing Ammunition,range(80/320),loading,two-handed','Very rare'),
(null,'Dart +3','Weapon',2000,'1d4+3 piercing Finesse, thrown(20/60)','Very rare'),
(null,'Sling +3','Weapon',5000,'1d4+3 bludgeon Ammunition,range(30/120)','Very rare'),
(null,'Battleaxe +3','Weapon',16000,'1d8+3 slashing Versatile (1d10)','Very rare'),
(null,'Flail +3','Weapon',16000,'1d8+3 bludgeon','Very rare'),
(null,'Glaive +3','Weapon',19000,'1d10+3 slashing Heavy,reach,two-handed','Very rare'),
(null,'Greataxe +3','Weapon',19000,'1d12+3 slashing Heavy,two-handed','Very rare'),
(null,'Greatsword +3','Weapon',22000,'2d6+3 slashing Heavy,two-handed','Very rare'),
(null,'Halberd +3','Weapon',20000,'1d10+3 slashing Heavy,reach,two-handed','Very rare'),
(null,'Lance +3','Weapon',19000,'1d12+3 piercing Reach,special','Very rare'),
(null,'Longsword +3','Weapon',15000,'1d8+3 slashing Versatile(1d10)','Very rare'),
(null,'Maul +3','Weapon',17000,'2d6+3 bludgeon Heavy,two-handed','Very rare'),
(null,'Morningstar +3','Weapon',15000,'1d8+3 piercing','Very rare'),
(null,'Pike +3','Weapon',13000,'1d10+3 piercing Heavy,reach,two-handed','Very rare'),
(null,'Rapier +3','Weapon',17000,'1d8+3 piercing Finesse','Very rare'),
(null,'Scimitar +3','Weapon',17000,'1d6+3 slashing Finesse,light','Very rare'),
(null,'Shortsword +3','Weapon',14000,'1d6+3 piercing Finesse,light','Very rare'),
(null,'Trident +3','Weapon',13000,'1d6+3 piercing Thrown(20/60),Versatile(1d8)','Very rare'),
(null,'War pick +3','Weapon',13000,'1d8+3 piercing','Very rare'),
(null,'Warhammer +3','Weapon',14000,'1d8+3 bludgeon Versatile(1d10)','Very rare'),
(null,'Whip +3','Weapon',10000,'1d4+3 slashing Finnese, reach','Very rare'),
(null,'Blowgun +3','Weapon',10000,'4 piercing Ammunition, range(25/100),loading','Very rare'),
(null,'Hand Crossbow +3','Weapon',26000,'1d6+3 piercing Ammunition,range(30/120),light,loading','Very rare'),
(null,'Heavy Crossbow +3','Weapon',24000,'1d8+3 piercing Ammunition,range(100/400),heavy,loading,two-handed','Very rare'),
(null,'Longbow +3','Weapon',20000,'1d8+3 piercing Ammunition,range(150/600),heavy,two-handed','Very rare'),
(null,'Amulet of the Planes','Wondrous',15000,'While wearing this amulet, you can use an action to name a location that you are familiar with on another plane of existence. Then make a DC 15 Intelligence check. On a successful check, you cast the plane shift spell. On a failure, you and each creature and object within 15 feet of you travel to a random destination. Roll a d100. On a 1–60, you travel to a random location on the plane you named. On a 61–100, you travel to a randomly determined plane of existence.','Very rare'),
(null,'Animated Shield','Armor',12000,'While holding this shield, you can speak its command word as a bonus action to cause it to animate. The shield leaps into the air and hovers in your space to protect you as if you were wielding it, leaving your hands free. The shield remains animated for 1 minute, until you use a bonus action to end this effect, or until you are incapacitated or die, at which point the shield falls to the ground or into your hand if you have one free.','Very rare'),
(null,'Arrow of Slaying','Weapon',5000,'An arrow of slaying is a magic weapon meant to slay a particular kind of creature. Some are more focused than others; for example, there are both arrows of dragon slaying and arrows of blue dragon slaying. If a creature belonging to the type, race, or group associated with an arrow of slaying takes damage from the arrow, the creature must make a DC 17 Constitution saving throw, taking an extra 6d10 piercing damage on a failed save, or half as much extra damage on a successful one.
Once an arrow of slaying deals its extra damage to a creature, it becomes a nonmagical arrow.
Other types of magic ammunition of this kind exist, such as bolts of slaying meant for a crossbow, though arrows are most common.','Very rare'),
(null,'Candle of Invocation','Wondrous',13000,'This slender taper is dedicated to a deity and shares that deity\'s alignment. The candle\'s alignment can be detected with the detect evil and good spell. The GM chooses the god and associated alignment or determines the alignment randomly. 
d20	Alignment
1–2	Chaotic evil
3–4	Chaotic neutral
5–7	Chaotic good
8–9	Neutral evil
10–11	Neutral
12–13	Neutral good
14–15	Lawful evil
16–17	Lawful neutral
18–20	Lawful good
The candle\'s magic is activated when the candle is lit, which requires an action. After burning for 4 hours, the candle is destroyed. You can snuff it out early for use at a later time. Deduct the time it burned in increments of 1 minute from the candle\'s total burn time.
While lit, the candle sheds dim light in a 30 foot radius. Any creature within that light whose alignment matches that of the candle makes attack rolls, saving throws, and ability checks with advantage. In addition, a cleric or druid in the light whose alignment matches the candle\'s can cast 1st-level spells he or she has prepared without expending spell slots, though the spell\'s effect is as if cast with a 1st-level slot.
Alternatively, when you light the candle for the first time, you can cast the gate spell with it. Doing so destroys the candle.','Very rare'),
(null,'Carpet of Flying','Wondrous',15000,'You can speak the carpet\'s command word as an action to make the carpet hover and fly. It moves according to your spoken directions, provided that you are within 30 feet of it.
Four sizes of carpet of flying exist. The GM chooses the size of a given carpet or determines it randomly.

d100	Size	Capacity	Flying Speed
0-20	3 ft. × 5 ft.	200 lb.	80 feet
21-55	4 ft. × 6 ft.	400 lb.	60 feet
56-80	5 ft. × 7 ft.	600 lb.	40 feet
80-100	6 ft. × 9 ft.	800 lb.	30 feet
A carpet can carry up to twice the weight shown on the table, but it flies at half speed if it carries more than its normal capacity.','Very rare'),
(null,'Cloak of Arachnida','Wondrous',0,'This fine garment is made of black silk interwoven with faint silvery threads. While wearing it, you gain the following benefits:
You have resistance to poison damage.
You have a climbing speed equal to your walking speed.
You can move up, down, and across vertical surfaces and upside down along ceilings, while leaving your hands free.
You can\'t be caught in webs of any sort and can move through webs as if they were difficult terrain.
You can use an action to cast the web spell (save DC 13). The web created by the spell fills twice its normal area. Once used, this property of the cloak can\'t be used again until the next dawn.','Very rare'),
(null,'Crystal Ball','Wondrous',20130,'The typical crystal ball, a very rare item, is about 6 inches in diameter. While touching it, you can cast the scrying spell (save DC 17) with it.
The following crystal ball variants are legendary items and have additional properties.
Crystal Ball of Mind Reading. You can use an action to cast the detect thoughts spell (save DC 17) while you are scrying with the crystal ball, targeting creatures you can see within 30 feet of the spell\'s sensor. You don\'t need to concentrate on this detect thoughts to maintain it during its duration, but it ends if scrying ends.
Crystal Ball of Telepathy. While scrying with the crystal ball, you can communicate telepathically with creatures you can see within 30 feet of the spell\'s sensor. You can also use an action to cast the suggestion spell (save DC 17) through the sensor on one of those creatures. You don\'t need to concentrate on this suggestion to maintain it during its duration, but it ends if scrying ends. Once used, the suggestion power of the crystal ball can\'t be used again until the next dawn.
Crystal Ball of True Seeing. While scrying with the crystal ball, you have truesight with a radius of 120 feet centered on the spell\'s sensor.','Very rare'),
(null,'Dancing Sword(any sword)','Weapon',17000,'You can use a bonus action to toss this magic sword into the air and speak the command word. When you do so, the sword begins to hover, flies up to 30 feet, and attacks one creature of your choice within 5 feet of it. The sword uses your attack roll and ability score modifier to damage rolls.
While the sword hovers, you can use a bonus action to cause it to fly up to 30 feet to another spot within 30 feet of you. As part of the same bonus action, you can cause the sword to attack one creature within 5 feet of it.
After the hovering sword attacks for the fourth time, it flies up to 30 feet and tries to return to your hand. If you have no hand free, it falls to the ground at your feet. If the sword has no unobstructed path to you, it moves as close to you as it can and then falls to the ground. It also ceases to hover if you grasp it or move more than 30 feet away from it.','Very rare'),
(null,'Demon Armor','Armor',13000,'While wearing this armor, you gain a +1 bonus to AC, and you can understand and speak Abyssal. In addition, the armor\'s clawed gauntlets turn unarmed strikes with your hands into magic weapons that deal slashing damage, with a +1 bonus to attack rolls and damage rolls and a damage die of 1d8.
Curse. Once you don this cursed armor, you can\'t doff it unless you are targeted by the remove curse spell or similar magic. While wearing the armor, you have disadvantage on attack rolls against demons and on saving throws against their spells and special abilities.','Very rare'),
(null,'Dragon Scale Mail','Armor',20000,'Dragon scale mail is made of the scales of one kind of dragon. Sometimes dragons collect their cast-­off scales and gift them to humanoids. Other times, hunters carefully skin and preserve the hide of a dead dragon. In either case, dragon scale mail is highly valued.
While wearing this armor, you gain a +1 bonus to AC, you have advantage on saving throws against the Frightful Presence and breath weapons of dragons, and you have resistance to one damage type that is determined by the kind of dragon that provided the scales (see the table).
Additionally, you can focus your senses as an action to magically discern the distance and direction to the closest dragon within 30 miles of you that is of the same type as the armor. This special action can\'t be used again until the next dawn.

Dragon	    Resistance	    Dragon	    Resistance
Black	    Acid	        Gold	    Fire
Blue	    Lightning	    Green	    Poison
Brass	    Fire	        Red	        Fire
Bronze	    Lightning	    Silver	    Cold
Copper	    Acid	        White	    Cold
','Very rare'),
(null,'Dwarven Plate','Armor',21000,'While wearing this armor, you gain a +2 bonus to AC. In addition, if an effect moves you against your will along the ground, you can use your reaction to reduce the distance you are moved by up to 10 feet.','Very rare'),
(null,'Dwarven Thrower','Weapon',18000,'You gain a +3 bonus to attack and damage rolls made with this magic weapon. It has the thrown property with a normal range of 20 feet and a long range of 60 feet. When you hit with a ranged attack using this weapon, it deals an extra 1d8 damage or, if the target is a giant, 2d8 damage. Immediately after the attack, the weapon flies back to your hand.','Very rare'),
(null,'Efreeti Bottle','Wondrous',20000,'This painted brass bottle weighs 1 pound. When you use an action to remove the stopper, a cloud of thick smoke flows out of the bottle. At the end of your turn, the smoke disappears with a flash of harmless fire, and an efreeti appears in an unoccupied space within 30 feet of you.
The first time the bottle is opened, the GM rolls to determine what happens.
d100	Effect
01-10	The efreeti attacks you. After fighting for 5 rounds, the efreeti disappears, and the bottle loses its magic.
21-90	The efreeti serves you for 1 hour, doing as you command. Then the efreeti returns to the bottle, and a new stopper contains it. The stopper can\'t be removed for 24 hours. The next two times the bottle is opened, the same effect occurs. If the bottle is opened a fourth time, the efreeti escapes and disappears, and the bottle loses its magic.
91-00	The efreeti can cast the wish spell three times for you. It disappears when it grants the final wish or after 1 hour, and the bottle loses its magic.','Very rare'),
(null,'Frost Brand(any sword)','Weapon',20000,'When you hit with an attack using this magic sword, the target takes an extra 1d6 cold damage. In addition, while you hold the sword, you have resistance to fire damage.
In freezing temperatures, the blade sheds bright light in a 10-­foot radius and dim light for an additional 10 feet.
When you draw this weapon, you can extinguish all nonmagical flames within 30 feet of you. This property can be used no more than once per hour.','Very rare'),
(null,'Helm of Brilliance','Wondrous',25000,'This dazzling helm is set with 1d10 diamonds, 2d10 rubies, 3d10 fire opals, and 4d10 opals. Any gem pried from the helm crumbles to dust. When all the gems are removed or destroyed, the helm loses its magic.
You gain the following benefits while wearing it:

You can use an action to cast one of the following spells (save DC 18), using one of the helm\'s gems of the specified type as a component: daylight (opal), fireball (fire opal), prismatic spray (diamond), or wall of fire (ruby). The gem is destroyed when the spell is cast and disappears from the helm.
As long as it has at least one diamond, the helm emits dim light in a 30-­foot radius when at least one undead is within that area. Any undead that starts its turn in that area takes 1d6 radiant damage.
As long as the helm has at least one ruby, you have resistance to fire damage.
As long as the helm has at least one fire opal, you can use an action and speak a command word to cause one weapon you are holding to burst into flames. The flames emit bright light in a 10‑foot radius and dim light for an additional 10 feet. The flames are harmless to you and the weapon. When you hit with an attack using the blazing weapon, the target takes an extra 1d6 fire damage. The flames last until you use a bonus action to speak the command word again or until you drop or stow the weapon.
Roll a d20 if you are wearing the helm and take fire damage as a result of failing a saving throw against a spell. On a roll of 1, the helm emits beams of light from its remaining gems. Each creature within 60 feet of the helm other than you must succeed on a DC 17 Dexterity saving throw or be struck by a beam, taking radiant damage equal to the number of gems in the helm. The helm and its gems are then destroyed.','Very rare'),
(null,'Horseshoes of a Zephyr','Wondrous',12000,'These iron horseshoes come in a set of four. While all four shoes are affixed to the hooves of a horse or similar creature, they allow the creature to move normally while floating 4 inches above the ground. This effect means the creature can cross or stand above nonsolid or unstable surfaces, such as water or lava. The creature leaves no tracks and ignores difficult terrain. In addition, the creature can move at normal speed for up to 12 hours a day without suffering exhaustion from a forced march.','Very rare'),
(null,'Manual of Bodily Health','Wondrous',25000,'This book contains health and diet tips, and its words are charged with magic. If you spend 48 hours over a period of 6 days or fewer studying the book\'s contents and practicing its guidelines, your Constitution score increases by 2, as does your maximum for that score. The manual then loses its magic, but regains it in a century.','Very rare'),
(null,'Manual of Gainful Exercise','Wondrous',25000,'This book describes fitness exercises, and its words are charged with magic. If you spend 48 hours over a period of 6 days or fewer studying the book\'s contents and practicing its guidelines, your Strength score increases by 2, as does your maximum for that score. The manual then loses its magic, but regains it in a century.','Very rare'),
(null,'Manual of Golems','Wondrous',20000,'This tome contains information and incantations necessary to make a particular type of golem. The GM chooses the type or determines it randomly. To decipher and use the manual, you must be a spellcaster with at least two 5th-­level spell slots. A creature that can\'t use a manual of golems and attempts to read it takes 6d6 psychic damage.
d20	Golem	Time	Cost
1-5	Clay	30 days	65,000 gp
6-17	Flesh	60 days	50,000 gp
18	Iron	120 days	100,000 gp
19-20	Stone	90 days	80,000 gp
To create a golem, you must spend the time shown on the table, working without interruption with the manual at hand and resting no more than 8 hours per day. You must also pay the specified cost to purchase supplies.
Once you finish creating the golem, the book is consumed in eldritch flames. The golem becomes animate when the ashes of the manual are sprinkled on it. It is under your control, and it understands and obeys your spoken commands.
','Very rare'),
(null,'Manual of Quickness of Action','Wondrous',25000,'This book contains coordination and balance exercises, and its words are charged with magic. If you spend 48 hours over a period of 6 days or fewer studying the book\'s contents and practicing its guidelines, your Dexterity score increases by 2, as does your maximum for that score. The manual then loses its magic, but regains it in a century.','Very rare'),
(null,'Marvelous Pigments','Wondrous',15000,'Typically found in 1d4 pots inside a fine wooden box with a brush (weighing 1 pound in total), these pigments allow you to create three-­dimensional objects by painting them in two dimensions. The paint flows from the brush to form the desired object as you concentrate on its image.
Each pot of paint is sufficient to cover 1,000 square feet of a surface, which lets you create inanimate objects or terrain features—such as a door, a pit, flowers, trees, cells, rooms, or weapons— that are up to 10,000 cubic feet. It takes 10 minutes to cover 100 square feet.
When you complete the painting, the object or terrain feature depicted becomes a real, nonmagical object. Thus, painting a door on a wall creates an actual door that can be opened to whatever is beyond. Painting a pit on a floor creates a real pit, and its depth counts against the total area of objects you create.
Nothing created by the pigments can have a value greater than 25 gp. If you paint an object of greater value (such as a diamond or a pile of gold), the object looks authentic, but close inspection reveals it is made from paste, bone, or some other worthless material.
If you paint a form of energy such as fire or lightning, the energy appears but dissipates as soon as you complete the painting, doing no harm to anything.','Very rare'),
(null,'Mirror of Life Trapping','Wondrous',0,'When this 4-­foot‑tall mirror is viewed indirectly, its surface shows faint images of creatures. The mirror weighs 50 pounds, and it has AC 11, 10 hit points, and vulnerability to bludgeoning damage. It shatters and is destroyed when reduced to 0 hit points.
If the mirror is hanging on a vertical surface and you are within 5 feet of it, you can use an action to speak its command word and activate it. It remains activated until you use an action to speak the command word again.
Any creature other than you that sees its reflection in the activated mirror while within 30 feet of it must succeed on a DC 15 Charisma saving throw or be trapped, along with anything it is wearing or carrying, in one of the mirror\'s twelve extradimensional cells. This saving throw is made with advantage if the creature knows the mirror\'s nature, and constructs succeed on the saving throw automatically.
An extradimensional cell is an infinite expanse filled with thick fog that reduces visibility to 10 feet. Creatures trapped in the mirror\'s cells don\'t age, and they don\'t need to eat, drink, or sleep. A creature trapped within a cell can escape using magic that permits planar travel. Otherwise, the creature is confined to the cell until freed.
If the mirror traps a creature but its twelve extradimensional cells are already occupied, the mirror frees one trapped creature at random to accommodate the new prisoner. A freed creature appears in an unoccupied space within sight of the mirror but facing away from it. If the mirror is shattered, all creatures it contains are freed and appear in unoccupied spaces near it.
While within 5 feet of the mirror, you can use an action to speak the name of one creature trapped in it or call out a particular cell by number. The creature named or contained in the named cell appears as an image on the mirror\'s surface. You and the creature can then communicate normally.
In a similar way, you can use an action to speak a second command word and free one creature trapped in the mirror. The freed creature appears, along with its possessions, in the unoccupied space nearest to the mirror and facing away from it.','Very rare'),
(null,'Nine Lives Stealer','Weapon',19000,'You gain a +2 bonus to attack and damage rolls made with this magic weapon.
The sword has 1d8 + 1 charges. If you score a critical hit against a creature that has fewer than 100 hit points, it must succeed on a DC 15 Constitution saving throw or be slain instantly as the sword tears its life force from its body (a construct or an undead is immune). The sword loses 1 charge if the creature is slain. When the sword has no charges remaining, it loses this property.','Very rare'),
(null,'Oathbow','Weapon',20000,'When you nock an arrow on this bow, it whispers in Elvish, “Swift defeat to my enemies.” When you use this weapon to make a ranged attack, you can, as a command phrase, say, “Swift death to you who have wronged me.” The target of your attack becomes your sworn enemy until it dies or until dawn seven days later. You can have only one such sworn enemy at a time. When your sworn enemy dies, you can choose a new one after the next dawn.
When you make a ranged attack roll with this weapon against your sworn enemy, you have advantage on the roll. In addition, your target gains no benefit from cover, other than total cover, and you suffer no disadvantage due to long range. If the attack hits, your sworn enemy takes an extra 3d6 piercing damage.
While your sworn enemy lives, you have disadvantage on attack rolls with all other weapons.','Very rare'),
(null,'Oil of Sharpness','Potion',9000,'This clear, gelatinous oil sparkles with tiny, ultrathin silver shards. The oil can coat one slashing or piercing weapon or up to 5 pieces of slashing or piercing ammunition. Applying the oil takes 1 minute. For 1 hour, the coated item is magical and has a +3 bonus to attack and damage rolls.','Very rare'),
(null,'Potion of Flying','Potion',11000,'When you drink this potion, you gain a flying speed equal to your walking speed for 1 hour and can hover. If you\'re in the air when the potion wears off, you fall unless you have some other means of staying aloft. This potion\'s clear liquid floats at the top of its container and has cloudy white impurities drifting in it.','Very rare'),
(null,'Potion of Invisibility','Potion',10000,'This potion\'s container looks empty but feels as though it holds liquid. When you drink it, you become invisible for 1 hour. Anything you wear or carry is invisible with you. The effect ends early if you attack or cast a spell.','Very rare'),
(null,'Potion of Speed','Potion',7000,'When you drink this potion, you gain the effect of the haste spell for 1 minute (no concentration required). The potion\'s yellow fluid is streaked with black and swirls on its own.','Very rare'),
(null,'Potion of Vitality','Potion',7000,'When you drink this potion, it removes any exhaustion you are suffering and cures any disease or poison affecting you. For the next 24 hours, you regain the maximum number of hit points for any Hit Die you spend. The potion\'s crimson liquid regularly pulses with dull light, calling to mind a heartbeat.','Very rare'),
(null,'Ring of Regeneration','Wondrous',24000,'While wearing this ring, you regain 1d6 hit points every 10 minutes, provided that you have at least 1 hit point. If you lose a body part, the ring causes the missing part to regrow and return to full functionality after 1d6 + 1 days if you have at least 1 hit point the whole time.','Very rare'),
(null,'Ring of Shooting Stars','Wondrous',16000,'While wearing this ring in dim light or darkness, you can cast dancing lights and light from the ring at will. Casting either spell from the ring requires an action.
The ring has 6 charges for the following other properties. The ring regains 1d6 expended charges daily at dawn.
Faerie Fire. You can expend 1 charge as an action to cast faerie fire from the ring.
Ball Lightning. You can expend 2 charges as an action to create one to four 3 foot diameter spheres of lightning. The more spheres you create, the less powerful each sphere is individually.
Each sphere appears in an unoccupied space you can see within 120 feet of you. The spheres last as long as you concentrate (as if concentrating on a spell), up to 1 minute. Each sphere sheds dim light in a 30 foot radius.
As a bonus action, you can move each sphere up to 30 feet, but no farther than 120 feet away from you. When a creature other than you comes within 5 feet of a sphere, the sphere discharges lightning at that creature and disappears. That creature must make a DC 15 Dexterity saving throw. On a failed save, the creature takes lightning damage based on the number of spheres you created.

Spheres	Lightning Damage
4	2d4
3	2d6
2	5d4
1	4d12
Shooting Stars. You can expend 1 to 3 charges as an action. For every charge you expend, you launch a glowing mote of light from the ring at a point you can see within 60 feet of you. Each creature within a 15 foot cube originating from that point is showered in sparks and must make a DC 15 Dexterity saving throw, taking 5d4 fire damage on a failed save, or half as much damage on a successful one.','Very rare'),
(null,'Ring of Telekinesis','Wondrous',17000,'While wearing this ring, you can cast the telekinesis spell at will, but you can target only objects that aren\'t being worn or carried.','Very rare'),
(null,'Robe of Scintillating Colors','Wondrous',18000,'This robe has 3 charges, and it regains 1d3 expended charges daily at dawn. While you wear it, you can use an action and expend 1 charge to cause the garment to display a shifting pattern of dazzling hues until the end of your next turn. During this time, the robe sheds bright light in a 30-foot radius and dim light for an additional 30 feet. Creatures that can see you have disadvantage on attack rolls against you. In addition, any creature in the bright light that can see you when the robe\'s power is activated must succeed on a DC 15 Wisdom saving throw or become stunned until the effect ends.','Very rare'),
(null,'Robe of Stars','Wondrous',21000,'This black or dark blue robe is embroidered with small white or silver stars. You gain a +1 bonus to saving throws while you wear it.
Six stars, located on the robe\'s upper front portion, are particularly large. While wearing this robe, you can use an action to pull off one of the stars and use it to cast magic missile as a 5th level spell. Daily at dusk, 1d6 removed stars reappear on the robe.
While you wear the robe, you can use an action to enter the Astral Plane along with everything you are wearing and carrying. You remain there until you use an action to return to the plane you were on. You reappear in the last space you occupied, or if that space is occupied, the nearest unoccupied space.','Very rare'),
(null,'Rod of Absorption','Wondrous',19000,'While holding this rod, you can use your reaction to absorb a spell that is targeting only you and not with an area of effect. The absorbed spell\'s effect is canceled, and the spell\'s energy—not the spell itself—is stored in the rod. The energy has the same level as the spell when it was cast. The rod can absorb and store up to 50 levels of energy over the course of its existence. Once the rod absorbs 50 levels of energy, it can\'t absorb more. If you are targeted by a spell that the rod can\'t store, the rod has no effect on that spell.
When you become attuned to the rod, you know how many levels of energy the rod has absorbed over the course of its existence, and how many levels of spell energy it currently has stored.
If you are a spellcaster holding the rod, you can convert energy stored in it into spell slots to cast spells you have prepared or know. You can create spell slots only of a level equal to or lower than your own spell slots, up to a maximum of 5th level. You use the stored levels in place of your slots, but otherwise cast the spell as normal. For example, you can use 3 levels stored in the rod as a 3rd level spell slot.
A newly found rod has 1d10 levels of spell energy stored in it already. A rod that can no longer absorb spell energy and has no energy remaining becomes nonmagical.','Very rare'),
(null,'Rod of Alertness','Wondrous',16000,'This rod has a flanged head and the following properties.
Alertness. While holding the rod, you have advantage on Wisdom (Perception) checks and on rolls for initiative.
Spells. While holding the rod, you can use an action to cast one of the following spells from it: detect evil and good, detect magic, detect poison and disease, or see invisibility.
Protective Aura. As an action, you can plant the haft end of the rod in the ground, whereupon the rod\'s head sheds bright light in a 60-­foot radius and dim light for an additional 60 feet. While in that bright light, you and any creature that is friendly to you gain a +1 bonus to AC and saving throws and can sense the location of any invisible hostile creature that is also in the bright light.
The rod\'s head stops glowing and the effect ends after 10 minutes, or when a creature uses an action to pull the rod from the ground. This property can\'t be used again until the next dawn.','Very rare'),
(null,'Rod of Security','Wondrous',17000,'While holding this rod, you can use an action to activate it. The rod then instantly transports you and up to 199 other willing creatures you can see to a paradise that exists in an extraplanar space. You choose the form that the paradise takes. It could be a tranquil garden, lovely glade, cheery tavern, immense palace, tropical island, fantastic carnival, or whatever else you can imagine. Regardless of its nature, the paradise contains enough water and food to sustain its visitors. Everything else that can be interacted with inside the extraplanar space can exist only there. For example, a flower picked from a garden in the paradise disappears if it is taken outside the extraplanar space.
For each hour spent in the paradise, a visitor regains hit points as if it had spent 1 Hit Die. Also, creatures don\'t age while in the paradise, although time passes normally. Visitors can remain in the paradise for up to 200 days divided by the number of creatures present (round down).
When the time runs out or you use an action to end it, all visitors reappear in the location they occupied when you activated the rod, or an unoccupied space nearest that location. The rod can\'t be used again until ten days have passed','Very rare'),
(null,'Scimitar of Speed','Weapon',19000,'You gain a +2 bonus to attack and damage rolls made with this magic weapon. In addition, you can make one attack with it as a bonus action on each of your turns.','Very rare'),
(null,'Spellguard Shield','Armor',20000,'While holding this shield, you have advantage on saving throws against spells and other magical effects, and spell attacks have disadvantage against you.','Very rare'),
(null,'Staff of Fire','Wondrous',20000,'You have resistance to fire damage while you hold this staff.
The staff has 10 charges. While holding it, you can use an action to expend 1 or more of its charges to cast one of the following spells from it, using your spell save DC: burning hands (1 charge), fireball (3 charges), or wall of fire (4 charges).
The staff regains 1d6 + 4 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, the staff blackens, crumbles into cinders, and is destroyed.','Very rare'),
(null,'Staff of Frost','Wondrous',20000,'You have resistance to cold damage while you hold this staff.
The staff has 10 charges. While holding it, you can use an action to expend 1 or more of its charges to cast one of the following spells from it, using your spell save DC: cone of cold (5 charges), fog cloud (1 charge), ice storm (4 charges), or wall of ice (4 charges).
The staff regains 1d6 + 4 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, the staff turns to water and is destroyed.','Very rare'),
(null,'Staff of Power','Wondrous',20000,'This staff can be wielded as a magic quarterstaff that grants a +2 bonus to attack and damage rolls made with it. While holding it, you gain a +2 bonus to Armor Class, saving throws, and spell attack rolls.
The staff has 20 charges for the following properties. The staff regains 2d8 + 4 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, the staff retains its +2 bonus to attack and damage rolls but loses all other properties. On a 20, the staff regains 1d8 + 2 charges.
Power Strike. When you hit with a melee attack using the staff, you can expend 1 charge to deal an extra 1d6 force damage to the target.
Spells. While holding this staff, you can use an action to expend 1 or more of its charges to cast one of the following spells from it, using your spell save DC and spell attack bonus: cone of cold (5 charges), fireball (5th level version, 5 charges), globe of invulnerability (6 charges), hold monster (5 charges), levitate (2 charges), lightning bolt (5th level version, 5 charges), magic missile (1 charge), ray of enfeeblement (1 charge), or wall of force (5 charges).
Retributive Strike. You can use an action to break the staff over your knee or against a solid surface, performing a retributive strike. The staff is destroyed and releases its remaining magic in an explosion that expands to fill a 30 foot radius sphere centered on it.
You have a 50 percent chance to instantly travel to a random plane of existence, avoiding the explosion. If you fail to avoid the effect, you take force damage equal to 16 × the number of charges in the staff. Every other creature in the area must make a DC 17 Dexterity saving throw. On a failed save, a creature takes an amount of damage based on how far away it is from the point of origin, as shown in the following table. On a successful save, a creature takes half as much damage.

Distance from Origin	Damage
10 ft. away or closer	8 × the number of charges in the staff
11 to 20 ft. away	6 × the number of charges in the staff
21 to 30 ft. away	4 × the number of charges in the staff
','Very rare'),
(null,'Staff of Striking','Weapon',20000,'This staff can be wielded as a magic quarterstaff that grants a +3 bonus to attack and damage rolls made with it.
The staff has 10 charges. When you hit with a melee attack using it, you can expend up to 3 of its charges. For each charge you expend, the target takes an extra 1d6 force damage. The staff regains 1d6 + 4 expended charges daily at dawn. If you expend the last charge, roll a d20. On a 1, the staff becomes a nonmagical quarterstaff.','Very rare'),
(null,'Staff of Thunder and Lightning','Wondrous',20000,'This staff can be wielded as a magic quarterstaff that grants a +2 bonus to attack and damage rolls made with it. It also has the following additional properties. When one of these properties is used, it can\'t be used again until the next dawn.
Lightning. When you hit with a melee attack using the staff, you can cause the target to take an extra 2d6 lightning damage.
Thunder. When you hit with a melee attack using the staff, you can cause the staff to emit a crack of thunder, audible out to 300 feet. The target you hit must succeed on a DC 17 Constitution saving throw or become stunned until the end of your next turn.
Lightning Strike. You can use an action to cause a bolt of lightning to leap from the staff\'s tip in a line that is 5 feet wide and 120 feet long. Each creature in that line must make a DC 17 Dexterity saving throw, taking 9d6 lightning damage on a failed save, or half as much damage on a successful one.
Thunderclap. You can use an action to cause the staff to issue a deafening thunderclap, audible out to 600 feet. Each creature within 60 feet of you (not including you) must make a DC 17 Constitution saving throw. On a failed save, a creature takes 2d6 thunder damage and becomes deafened for 1 minute. On a successful save, a creature takes half damage and isn\'t deafened.
Thunder and Lightning. You can use an action to use the Lightning Strike and Thunderclap properties at the same time. Doing so doesn\'t expend the daily use of those properties, only the use of this one.','Very rare'),
(null,'Sword of Sharpness','Weapon',23000,'When you attack an object with this magic sword and hit, maximize your weapon damage dice against the target.
When you attack a creature with this weapon and roll a 20 on the attack roll, that target takes an extra 4d6 slashing damage. Then roll another d20. If you roll a 20, you lop off one of the target\'s limbs, with the effect of such loss determined by the GM. If the creature has no limb to sever, you lop off a portion of its body instead.
In addition, you can speak the sword\'s command word to cause the blade to shed bright light in a 10-­foot radius and dim light for an additional 10 feet. Speaking the command word again or sheathing the sword puts out the light.','Very rare'),
(null,'Tome of Clear Thought','Wondrous',25000,'This book contains memory and logic exercises, and its words are charged with magic. If you spend 48 hours over a period of 6 days or fewer studying the book\'s contents and practicing its guidelines, your Intelligence score increases by 2, as does your maximum for that score. The manual then loses its magic, but regains it in a century.','Very rare'),
(null,'Tome of Leadership and Influence','Wondrous',25000,'This book contains guidelines for influencing and charming others, and its words are charged with magic. If you spend 48 hours over a period of 6 days or fewer studying the book\'s contents and practicing its guidelines, your Charisma score increases by 2, as does your maximum for that score. The manual then loses its magic, but regains it in a century.','Very rare'),
(null,'Tome of Understanding','Wondrous',25000,'This book contains intuition and insight exercises, and its words are charged with magic. If you spend 48 hours over a period of 6 days or fewer studying the book\'s contents and practicing its guidelines, your Wisdom score increases by 2, as does your maximum for that score. The manual then loses its magic, but regains it in a century.','Very rare'),
(null,'Wand of Polymorph','Wondrous',21000,'This wand has 7 charges. While holding it, you can use an action to expend 1 of its charges to cast the polymorph spell (save DC 15) from it.
The wand regains 1d6 + 1 expended charges daily at dawn. If you expend the wand\'s last charge, roll a d20. On a 1, the wand crumbles into ashes and is destroyed.','Very rare'),
(null,'Light','Scroll',5,'You touch one object that is no larger than 10 feet in any dimension. Until the spell ends, the object sheds bright light in a 20-foot radius and dim light for an additional 20 feet. The light can be colored as you like. Completely covering the object with something opaque blocks the light. The spell ends if you cast it again or dismiss it as an action.
If you target an object held or worn by a hostile creature, that creature must succeed on a Dexterity saving throw to avoid the spell.','Common'),
(null,'Fire Bolt','Scroll',5,'You hurl a mote of fire at a creature or object within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 fire damage. A flammable object hit by this spell ignites if it isn’t being worn or carried.','Common'),
(null,'Dancing Lights','Scroll',5,'You create up to four torch-sized lights within range, making them appear as torches, lanterns, or glowing orbs that hover in the air for the duration.
You can also combine the four lights into one glowing vaguely humanoid form of Medium size. Whichever form you choose, each light sheds dim light in a 10-foot radius.
As a bonus action on your turn, you can move the lights up to 60 feet to a new spot within range. A light must be within 20 feet of another light created by this spell, and a light winks out if it exceeds the spell’s range.','Common'),
(null,'Message','Scroll',5,'You point your finger toward a creature within range and whisper a message.
The target (and only the target) hears the message and can reply in a whisper that only you can hear.
You can cast this spell through solid objects if you are familiar with the target and know it is beyond the barrier. Magical silence, 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood blocks the spell. The spell doesn’t have to follow a straight line and can travel freely around corners or through openings.','Common'),
(null,'Resistance','Scroll',5,'You touch one willing creature. Once before the spell ends, the target can roll a d4 and add the number rolled to one saving throw of its choice. It can roll the die before or after the saving throw. The spell then ends.','Common'),
(null,'Alarm','Scroll',10,'You set an alarm against unwanted intrusion.
Choose a door, a window, or an area within range that is no larger than a 20-foot cube. Until the spell ends, an alarm alerts you whenever a tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won’t set off the alarm. You also choose whether the alarm is mental or audible.
A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping.
An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.','Common'),
(null,'Catapult','Scroll',10,'Choose one object weighing 1 to 5 pounds within range that isn’t being worn or carried. The object flies in a straight line up to 90 feet in a direction you choose before falling to the ground, stopping early if it impacts against a solid surface. If the object would strike a creature, that creature must make a Dexterity saving throw. On a failed save, the object strikes the target and stops moving. In either case, both the object and the creature or solid surface take 3d8 bludgeoning damage.','Common'),
(null,'Cure Wounds','Scroll',10,'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs. ','Common'),
(null,'Disguise Self','Scroll',10,'You make yourself – including your clothing, armor, weapons, and other belongings on your person – look different until the spell ends or until you use your action to dismiss it.
You can seem 1 foot shorter or taller and can appear thin, fat, or in between. You can’t change your body type, so you must adopt a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you.
The changes wrought by this spell fail to hold up to physical inspection. For example, if you use this spell to add a hat to your outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel your head and hair. If you use this spell to appear thinner than you are, the hand of som eone who reaches out to touch you would bump into you while it was seemingly still in midair. To discern that you are disguised, a creature can use its action to inspect your appearance and must succeed on an Intelligence (Investigation) check against your spell save DC.','Common'),
(null,'Faerie Fire','Scroll',10,'Each object in a 20-foot cube within range is outlined in blue, green, or violet light (your choice).
Any creature in the area when the spell is cast is also outlined in light if it fails a Dexterity saving throw. For the duration, objects and affected creatures shed dim light in a 10-foot radius.
Any attack roll against an affected creature or object has advantage if the attacker can see it, and the affected creature or object can’t benefit from being invisible.','Common'),
(null,'Grease','Scroll',10,'Slick grease covers the ground in a 10-foot square centered on a point within range and turns it into difficult terrain for the duration.
When the grease appears, each creature standing in its area must succeed on a Dexterity saving throw or fall prone. A creature that enters the area or ends its turn there must also succeed on a Dexterity saving throw or fall prone.','Common'),
(null,'Barkskin','Scroll',50,'You touch a willing creature. Until the spellends, the target’s skin has a rough, bark-like appearance, and the target’s AC can’t be less than 16, regardless of what kind of armor it is wearing.','Uncommon'),
(null,'Darkness','Scroll',50,'Magical darkness spreads from a point you choose within range to fill a 15-foot radius sphere for the duration.
The darkness spreads around corners. A creature with darkvision can’t see through this darkness, and nonmagical light can’t illuminate it. 
If the point you choose is on an object you are holding or one that isn’t being worn or carried, the darkness emanates from the object and moves with it. Completely covering the source of the darkness with an opaque object, such as a bowl or a helm, blocks the darkness.
If any of this spell’s area overlaps with an area of light created by a spell of 2nd level or lower, the spell that created the light is dispelled.
','Uncommon'),
(null,'Darkvision','Scroll',50,'You touch a willing creature to grant it the ability to see in the dark.
For the duration, that creature has darkvision out to a range of 60 feet.','Uncommon'),
(null,'Enlarge/Reduce','Scroll',50,'You cause a creature or an object you can see within range to grow larger or smaller for the duration. Choose either a creature or an object that is neither worn nor carried. If the target is unwilling, it can make a Constitution saving throw. On a success, the spell has no effect.
If the target is a creature, everything it is wearing and carrying changes size with it. Any item dropped by an affected creature returns to normal size at once.
Enlarge 
The target’s size doubles in all dimensions, and its weight is multiplied by eight. This growth increases its size by one category – from Medium to Large, for example. If there isn’t enough room for the target to double its size, the creature or object attains the maximum possible size in the space available. Until the spell ends, the target also has advantage on Strength checks and Strength saving throws. The target’s weapons also grow to match its new size. While these weapons are enlarged, the target’s attack with them deal 1d4 extra damage.
Reduce 
The target’s size is halved in all dimensions, and its weight is reduced to one-eighth of normal. This reduction decreases its size by one category – from Medium to Small, for example. Until the spell ends, the target also has disadvantage on Strength checks and Strength saving throws. The target’s weapons also shrink to match its new size. While these weapons are reduced, the target’s attacks with them deal 1d4 less damage (this can’t reduce the damage below 1).','Uncommon'),
(null,'Flaming Sphere','Scroll',50,'A 5-foot-diameter sphere of fire appears in an unoccupied space of your choice within range and lasts for the duration.
Any creature that ends its turn within 5 feet of the sphere must make a Dexterity saving throw. The creature takes 2d6 fire damage on a failed save, or half as much damage on a successful one.

As a bonus action, you can move the sphere up to 30 feet. If you ram the sphere into a creature, that creature must make the saving throw against the sphere’s damage, and the sphere stops moving this turn.

When you move the sphere, you can direct it over barriers up to 5 feet tall and jump it across pits up to 10 feet wide. The sphere ignites flammable objects not being worn or carried, and it sheds bright light in a 20-foot radius and dim light for an additional 20 feet. ','Uncommon'),
(null,'Counterspell','Scroll',100,'1 reaction, which you take when you see a creature within 60 feet of you casting a spell
You attempt to interrupt a creature in the process of casting a spell. If the creature is casting a spell of 3rd level or lower, its spell fails and has no effect. If it is casting a spell of 4th level or higher, make an ability check using your spellcasting ability. The DC equals 10+ the spell’s level. On a success, the creature’s spell fails and has no effect. ','Uncommon'),
(null,'Dispel Magic','Scroll',100,'Choose any creature, object, or magical effect within range. Any spell of 3rd level or lower on the target ends. For each spell of 4th level or higher on the target, make an ability check using your spellcasting ability. The DC equals 10 + the spell’s level. On a successful check, the spell ends. ','Uncommon'),
(null,'Fear','Scroll',100,'You project a phantasmal image of a creature’s worst fears. Each creature in a 30-foot cone must succeed on a Wisdom saving throw or drop whatever it is holding and become frightened for the duration.
While frightened by this spell, a creature must take the Dash action and move away from you by the safest available route on each of its turns, unless there is nowhere to move. If the creature ends its turn in a location where it doesn’t have line of sight to you, the creature can make a Wisdom saving throw. On a successful save, the spell ends for that creature.','Uncommon'),
(null,'Fireball','Scroll',100,'A bright streak flashes from your pointing finger to a point you choose within range then blossoms with a low roar into an explosion of flame.
Each creature in a 20-foot radius must make a Dexterity saving throw. A target takes 8d6 fire damage on a failed save, or half as much damage on a successful one. The fire spreads around corners. It ignites flammable objects in the area that aren’t being worn or carried. ','Uncommon'),
(null,'Fly','Scroll',100,'You touch a willing creature. The target gains a flying speed of 60 feet for the duration. When the spell ends, the target falls if it is still aloft, unless it can stop the fall.','Uncommon'),
(null,'Banishment','Scroll',500,'You attempt to send one creature that you can see within range to another place of existence. The target must succeed on a Charisma saving throw or be banished.
If the target is native to the plane of existence you’re on, you banish the target to a harmless demiplane. While there, the target is incapacitated. The target remains there until the spell ends, at which point the target reappears in the space it left or in the nearest unoccupied space if that space is occupied.
If the target is native to a different plane of existence that the one you’re on, the target is banished with a faint popping noise, returning to its home plane.
If the spell ends before 1 minute has passed, the target reappears in the space it left or in the nearest unoccupied space if that space is occupied. Otherwise, the target doesn’t return.','Rare'),
(null,'Dimension Door','Scroll',500,'You teleport yourself from your current location to any other spot within range. You arrive at exactly the spot desired. It can be a place you can see, one you can visualize, or one you can describe by stating distance and direction, such as "200 feet straight downward" or "upward to the northwest at a 45-degree angle, 300 feet".
You can bring along objects as long as their weight doesn’t exceed what you can carry. You can also bring one willing creature of your size or smaller who is carrying gear up to its carrying capacity. The creature must be within 5 feet of you when you cast this spell.
If you would arrive in a place already occupied by an object or a creature, you and any creature traveling with you each take 4d6 force damage, and the spell fails to teleport you.','Rare'),
(null,'Elemental Bane','Scroll',500,'Choose one creature you can see within range, and choose one of the following damage types: acid, cold, fire, lightning, or thunder.
The target must succeed on a Constitution saving throw or be affected by the spell for its duration. The first time each turn the affected target takes damage of the chosen type, the target takes an extra 2d6 damage of that type. Moreover, the target loses any resistance to that damage type until the spell ends.','Rare'),
(null,'Mordenkainen’s Private Sanctum','Scroll',500,'You make an area within range magically secure.
The area is a cube that can be as small as 5 feet to as large as 100 feet on each side. The spell lasts for the duration or until you use an action to dismiss it.
When you cast the spell, you decide what sort of security the spell provides, choosing any or all of the following properties:
* Sound can’t pass through the barrier at the edge of the warded area.
* The barrier of the warded area appears dark and foggy, preventing vision (including darkvision) through it.
* Sensors created by divination spells can’t appear inside the protected area or pass through the barrier at its perimeter.
* Creatures in the area can’t be targeted by divination spells.
* Nothing can teleport into or out of the warded area.
* Planar travel is blocked within the warded area.
Casting this spell on the same spot every day for a year makes this effect permanent.','Rare'),
(null,'Summon Greater Demon','Scroll',500,'You utter foul words, summoning one demon from the chaos of the Abyss. You choose the demon’s type, which must be one of challenge rating 5 or lower, such as a shadow demon or a barlgura. The demon appears in an unoccupied space you can see within range, and the demon disappears when it drops to 0 hit points or when the spell ends.
Roll initiative for the demon, which has its own turns. When you summon it and on each of your turns thereafter, you can issue a verbal command to it (requiring no action on your part), telling it what it must do on its next turn. If you issue no command, it spends its turn attacking any creature within reach that has attacked it.
At the end of each of the demon’s turns, it makes a Charisma saving throw. The demon has disadvantage on this saving throw if you say its true name. On a failed save, the demon continues to obey you. On a successful save, your control of the demon ends for the rest of the duration, and the demon spends its turns pursuing and attacking the nearest non-demons to the best of its ability. If you stop concentrating on the spell before it reaches its full duration, an uncontrolled demon doesn’t disappear for 1d6 rounds if it still has hit points.
As part of casting the spell, you can form a circle on the ground with the blood used as a material component. The circle is large enough to encompass your space. While the spell lasts, the summoned demon can’t cross the circle or harm it, and it can’t target anyone within it. Using the material component in this manner consumes it when the spell ends.','Rare'),
(null,'Bigby’s Hand','Scroll',1000,'You create a Large hand of shimmering, translucent force in an unoccupied space that you can see within range. The hand lasts for the spell’s duration, and it moves at your command, mimicking the movements of your own hand.

The hand is an object that has AC 20 and hit points equal to your hit point maximum. If it drops to 0 hit points, the spell ends. It has a Strength of 26 (+8) and a Dexterity of 10 (+0). The hand doesn’t fill its space.

When you cast the spell and as a bonus action on your subsequent turns, you can move the hand up to 60 feet and then cause one of the following effects with it.

Clenched Fist 
The hand strikes one creature or object within 5 feet of it. Make a melee spell attack for the hand using your game statistics. On a hit, the target takes 4d8 force damage.

Forceful Hand
The hand attempts to push a creature within 5 feet of it in a direction you choose. Make a check with the hand’s Strength contested by the Strength (Athletics) check of the target. If the target is Medium or smaller, you have advantage on the check. If you succeed, the hand pushes the target up to 5 feet plus a number of feet equal to five times your spellcasting ability modifier. The hand moves with the target to remain within 5 feet of it.

Grasping Hand
The hand attempts to grapple a Huge or smaller creature within 5 feet of it. You use the hand’s Strength score to resolve the grapple. If the target is Medium or smaller, you have advantage on the check. While the hand is grappling the target, you can use a bonus action to have the hand crush it. When you do so, the target takes bludgeoning damage equal to 2d6 + your spellcasting ability modifier.

Interposing Hand
The hand interposes itself between you and a creature you choose until you give the hand a different command. The hand moves to stay between you and the target, providing you with half cover against the target. The target can’t move through the hand’s space if its Strength score is less than or equal to the hand’s Strength score. If its Strength score is higher than the hand’s Strength score, the target can move toward you through the hand’s space, but that space is difficult terrain for the target.','Rare'),
(null,'Danse Macabre','Scroll',1000,'Threads of dark power leap from your fingers to pierce up to five Small or Medium corpses you can see within range. Each corpse immediately stands up and becomes undead. You decide whether it is a zombie or a skeleton (the statistics for zombies and skeletons are in the Monster Manual), and it gains a bonus to its attack and damage rolls equal to your spellcasting ability modifier. You can use a bonus action to mentally command the creatures you make with this spell, issuing the same command to all of them. To receive the command, a creature must be within 60 feet of you. You decide what action the creatures will take and where they will move during their next turn, or you can issue a general command, such as to guard a chamber or passageway against your foes. lfyou issue no commands, the creatures do nothing except defend themselves against hostile creatures. Once given an order, the creatures continue to follow it until their task is complete.
The creatures are under your control until the spell ends, after which they become inanimate once more.','Rare'),
(null,'Hold Monster','Scroll',1000,'Choose a creature that you can see within range. The target must succeed on a Wisdom saving throw or be paralyzed for the duration. This spell has no effect on undead. At the end of each of its turns, the target can make another Wisdom saving throw. On a success, the spell ends on the target.','Rare'),
(null,'Greater Restoration','Scroll',1000,'You imbue a creature you touch with positive energy to undo a debilitating effect. You can reduce the target’s exhaustion level by one, or end one of the following effects on the target:
* One effect that charmed or petrified the target
* One curse, including the target’s attunement to a cursed magic item
* Any reduction to one of the target’s ability scores
* One effect reducing the target’s hit point maximum
','Rare'),
(null,'Telekinesis','Scroll',1000,'You gain the ability to move or manipulate creatures or objects by thought.
When you cast the spell, and as your action each round for the duration, you can exert your will on one creature or object that you can see within range, causing the appropriate effect below. You can affect the same target round after round, or choose a new one at any time. If you switch targets, the prior target is no longer affected by the spell.
Creature
You can try to move a Huge or smaller creature. Make an ability check with your spellcasting ability contested by the creature’s Strength check. If you win the contest, you move the creature up to 30 feet in any direction, including upward but not beyond the range of this spell. Until the end of your next turn, the creature is restrained in your telekinetic grip. A creature lifted upward is suspended in mid-air.
On subsequent rounds, you can use your action to attempt to maintain your telekinetic grip on the creature by repeating the contest.
Object
You can try to move an object that weighs up to 1,000 pounds. If the object isn’t being worn or carried, you automatically move it up to 30 feet in any direction, but not beyond the range of this spell.
If the object is worn or carried by a creature, you must make an ability check with your spellcasting ability contested by that creature’s Strength check. If you succeed, you pull the object away from that creature and can move it up to 30 feet in any direction but not beyond the range of this spell.
You can exert fine control on objects with your telekinetic grip, such as manipulating a simple tool, opening a door or a container, stowing or retrieving an item from an open container, or pouring the contents from a vial.','Rare'),
(null,'Create Homunculus','Scroll',2000,'While speaking an intricate incantation, you cut yourself with a jewel-encrusted dagger, taking 2d4 piercing damage that can’t be reduced in any way. You then drip your blood on the spell’s other components and touch them, transforming them into a special construct called a homunculus. The statistics of the homunculus are in the Monster Manual. It is your faithful companion, and it dies if you die. Whenever you finish a long rest, you can spend up to half your Hit Dice if the homunculus is on the same plane of existence as you. When you do so, roll each die and add your Constitution modifier to it. Your hit point maximum is reduced by the total, and the homunculus’s hit point maximum and current hit points are
both increased by it. This process can reduce you to no lower than 1 hit point. and the change to your and the homunculus’s hit points ends when you finish your next long rest. The reduction to your hit point maximum can’t be removed by any means before then, except by the homunculus‘s death. You can have only one homunculus at a time. If you cast this spell while your homunculus lives, the spell fails.','Very rare'),
(null,'Create Undead','Scroll',2000,'You can cast this spell only at night. Choose up to three corpses of Medium or Small humanoids within range. Each corpse becomes a ghoul under your control. (The DM has game statistics for these creatures.)
As a bonus action on each of your turns, you can mentally command any creature you animated with this spell if the creature is within 120 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete.
The creature is under your control for 24 hours, after which it stops obeying any command you have given it. To maintain control of the creature for another 24 hours, you must cast this spell on the creature before the current 24-hour period ends. This use of the spell reasserts your control over up to three creatures you have animated with this spell, rather than animating new ones. ','Very rare'),
(null,'Disintegrate','Scroll',2000,'A thin green ray springs from your pointing finger to a target that you can see within range.
The target can be a creature, an object, or a creation of magical force, such as the wall created by wall of force.
A creature targeted by this spell must make a Dexterity saving throw. On a failed save, the target takes 10d6 + 40 force damage. If this damage reduces the target to 0 hit points, it is disintegrated.
A disintegrated creature and everything it is wearing and carrying, except magic items, are reduced to a pile of fine gray dust. The creature can be restored to life only by means of a true resurrection or a wish spell.
This spell automatically disintegrates a Large or smaller nonmagical object or a creation of magical force. If the target is a Huge or larger object or creation of force, this spell disintegrates a 10-foot-cube portion of it. A magic item is unaffected by this spell. ','Very rare'),
(null,'Heal','Scroll',2000,'Choose a creature that you can see within range. A surge of positive energy washes through the creature, causing it to regain 70 hit points. The spell also ends blindness, deafness, and any diseases affecting the target. This spell has no effect on constructs or undead. ','Very rare'),
(null,'Harm','Scroll',2000,'You unleash a virulent disease on a creature that you can see within range.The target must make a Constitution saving throw. On a failed save, it takes 14d6 necrotic damage, or half as much damage on a successful save. The damage can’t reduce the target’s hit points below 1. If the target fails the saving throw, its hit point maximum is reduced for 1 hour by an amount equal to the necrotic damage it took. Any effect that removes a disease allows a creature’s hit point maximum to return to normal before that time passes.','Very rare'),
(null,'Finger of Death','Scroll',8000,'You send negative energy coursing through a creature that you can see within range, causing it searing pain.
The target must make a Constitution saving throw. It takes 7d8 + 30 necrotic damage on a failed save, or half as much damage on a successful one.
A humanoid killed by this spell rises at the start of your next turn as a zombie that is permanently under your command, following your verbal orders to the best of its ability.','Very rare'),
(null,'Divine Word','Scroll',8000,'You utter a divine word, imbued with the power that shaped the world at the dawn of creation.
Choose any number of creatures you can see within range. Each creature that can hear you must make a Charisma saving throw. On a failed save, a creature suffers an effect based on its current hit points:
 • 50 hit points or fewer: deafened for 1 minute
 • 40 hit points or fewer: deafened and blinded for 10 minutes
 • 30 hit points or fewer: blinded, deafened, and stunned for 1 hour
 • 20 hit points or fewer: killed instantly
Regardless of its current hit points, a celestial, an elemental, a fey, or a fiend that fails its save is forced back to its plane of origin (if it isn’t there already) and can’t return to your current plane for 24 hours by any means short of a wish spell.','Very rare'),
(null,'Crown of Stars','Scroll',8000,'Seven star-like motes of light appear and orbit your head until the spell ends. You can use a bonus action to send one of the motes streaking toward one creature or object within 120 feet of you. When you do so, make a ranged spell attack. On a hit. the target takes 4d12 radiant damage. Whether you hit or miss, the mote is expended. The spell ends early if you expend the last mote. If you have four or more motes remaining, they shed bright light in a 30-foot radius and dim light for an additional 30 feet. Ifyou have one to three motes remaining, they shed dim light in a 30—foot radius.','Very rare'),
(null,'Forcecage','Scroll',8000,'An immobile, invisible, cube-shaped prison composed of magical force springs into existence around an area you choose within range. The prison can be a cage or a solid box as you choose.
A prison in the shape of a cage can be up to 20 feet on a side and is made from 1/2-inch diameter bars spaced 1/2 inch apart.
A prison in the shape of a box can be up to 10 feet on a side, creating a solid barrier that prevents any matter from passing through it and blocking any spells cast into or out of the area.
When you cast the spell, any creature that is completely inside the cage’s area is trapped. Creatures only partially within the area, or those too large to fit inside the area, are pushed away from the center of the area until they are completely outside the area.
A creature inside the cage can’t leave it by nonmagical means. If the creature tries to use teleportation or interplanar travel to leave the cage, it must first make a Charisma saving throw. On a success, the creature can use that magic to exit the cage. On a failure, the creature can’t exit the cage and wastes the use of the spell or effect. The cage also extends into the Ethereal Plane, blocking ethereal travel.
This spell can’t be dispelled by dispel magic.','Very rare'),
(null,'Mordenkainen’s Magnificent Mansion','Scroll',8000,'You conjure an extradimensional dwelling in range that lasts for the duration.
You choose where its one entrance is located. The entrance shimmers faintly and is 5 feet w ide and 10 feet tall. You and any creature you designate when you cast the spell can enter the extradimensional dwelling as long as the portal remains open. You can open or close the portal if you are within 30 feet of it. While closed, the portal is invisible.
Beyond the portal is a magnificent foyer with numerous chambers beyond. The atmosphere is clean, fresh, and warm.
You can create any floor plan you like, but the space can’t exceed 50 cubes, each cube being 10 feet on each side. The place is furnished and decorated as you choose. It contains sufficient food to serve a ninecourse banquet for up to 100 people. A staff of 100 near-transparent servants attends all who enter. You decide the visual appearance of these servants and their attire. They are completely obedient to your orders. Each servant can perform any task a normal human servant could perform, but they can’t attack or take any action that would directly harm another creature. Thus the servants can fetch things, clean, mend, fold clothes, light fires, serve food, pour wine, and so on. The servants can go anywhere in the mansion but can’t leave it. Furnishings and other objects created by this spell dissipate into smoke if removed from the mansion. When the spell ends, any creatures inside the extradimensional space are expelled into the open spaces nearest to the entrance.','Very rare'),
(null,'Holy Aura','Scroll',12000,'Divine light washes out from you and coalesces in a soft radiance in a 30-foot radius around you.
Creatures of your choice in that radius when you cast this spell shed dim light in a 5-foot radius and have advantage on all saving throws, and other creatures have disadvantage on attack rolls against them until the spell ends. In addition, when a fiend or an undead hits an affected creature with a melee attack, the aura flashes with brilliant light. The attacker must succeed on a Constitution saving throw or be blinded until the spell ends.','Very rare'),
(null,'Maze','Scroll',12000,'You banish a creature that you can see within range into a labyrinthine demiplane. The target remains there for the duration or until it escapes the maze.
The target can use its action to attempt to escape. When it does so, it makes a DC 20 Intelligence check. If it succeeds, it escapes, and the spell ends (a minotaur or goristro demon automatically succeeds).
When the spell ends, the target reappears in the space it left or, if that space is occupied, in the nearest unoccupied space.','Very rare'),
(null,'Sunburst','Scroll',12000,'Brilliant sunlight flashes in a 60-foot radius centered on a point you choose within range.
Each creature in that light must make a Constitution saving throw. On a failed save, a creature takes 12d6 radiant damage and is blinded for 1 minute. On a successful save, it takes half as much damage and isn’t blinded by this spell. Undead and oozes have disadvantage on this saving throw.
A creature blinded by this spell makes another Constitution saving throw at the end of each of its turns. On a successful save, it is no longer blinded.
This spell dispels any darkness in its area that was created by a spell.','Very rare'),
(null,'Telepathy','Scroll',12000,'You create a telepathic link between yourself and a willing creature with which you are familiar.
The creature can be anywhere on the same plane of existence as you. The spell ends if you or the target are no longer on the same plane.
Until the spell ends, you and the target can instantaneously share words, images, sounds, and other sensory messages with one another through the link, and the target recognizes you as the creature it is communicating with. The spell enables a creature with an Intelligence score of at least 1 to understand the meaning of your words and take in the scope of any sensory messages you send to it.','Very rare'),
(null,'Abi-Dalzim’s Horrid Wilting','Scroll',12000,'You draw the moisture from every creature in a 30-foot cube centered on a point you choose within range. Each creature in that area must make a Constitution saving throw. Constructs and undead aren’t affected, and plants and water elementals make this saving throw with disadvantage. A creature takes 12d8 necrotic damage on a failed save, or half as much damage on a successful one.
Nonmagical plants in the area that aren’t creatures, such as trees and shrubs, wither and die instantly.','Very rare'),
(null,'Wish','Scroll',1000000,'Wish is the mightiest spell a mortal creature can cast. By simply speaking aloud, you can alter the very foundations of reality in accord with your desires.

The basic use of this spell is to duplicate any other spell of 8th level or lower. You don’t need to meet any requirements in that spell, including costly components. The spell simply takes effect.
Alternatively, you can create one of the following effects of your choice:

• You create one object of up to 25,000 gp in value that isn’t a magic item. The object can be no more than 300 feet in any dimension, and it appears in an unoccupied space you can see on the ground.

• You allow up to twenty creatures that you can see to regain all hit points, and you end all effects on them described in the greater restoration spell.

• You grant up to ten creatures that you can see resistance to a damage type you choose.

• You grant up to ten creatures you can see immunity to a single spell or other magical effect for 8 hours. For instance, you could make yourself and all your com panions immune to a lich’s life drain attack.

• You undo a single recent event by forcing a reroll of any roll made within the last round (including your last turn). Reality reshapes itself to accommodate the new result. For example, a wish spell could undo an opponent’s successful save, a foe’s critical hit, or a friend’s failed save. You can force the reroll to be made with advantage or disadvantage, and you can choose whether to use the reroll or the original roll.

You might be able to achieve something beyond the scope of the above examples. State your wish to the DM as precisely as possible. The DM has great latitude in ruling what occurs in such an instance; the greater the wish, the greater the likelihood that something goes wrong. This spell might simply fail, the effect you desire mightonlybepartlyachieved,oryoumightsuffersome unforeseen consequence as a result of how you worded the wish. For example, wishing that a villain were dead might propel you forward in time to a period when that villain is no longer alive, effectively removing you from the game. Similarly, wishing for a legendary magic item or artifact might instantly transport you to the presence of the item’s current owner.

The stress of casting this spell to produce any effect other than duplicating another spell weakens you. After enduring that stress, each time you cast a spell until you finish a long rest, you take 1d10 necrotic damage per level of that spell. This damage can’t be reduced or prevented in any way. In addition, your Strength drops to 3, if it isn’t 3 or lower already, for 2d4 days. For each of those days that you spend resting and doing nothing more than light activity, your remaining recovery time decreases by 2 days. Finally, there is a 33 percent chance that you are unable to cast wish ever again if you suffer this stress.','Very rare'),
(null,'The Lost Blade(any sword)','Weapon',250,'An ancient Sword Which is imbued with the power of a demon. The wielder of this sword has a disadvantage on trying to bond with people as the demon speaks to the user threw direct contact when the wielder drops the sword the connection is broken If a creature who is not chaotic tries to wield the weapon they take 10d6 poison damage and drop the weapon.

The Sword Of Dust Know As Axel. The wielder of the ancient weapon can take an action to cut itself dealing 1d8 slashing damage to themselves. They will be restrained until the start of their next turn as their body begins to change. Their eyes turn blood red, their skin becomes darker and abyssal letters begin appearing on their skin glowing any color, their veins grow as they pump more blood. On tieflings it triggers their demonic ancient bond, their horns grows, their nails becomes claws and their voice changes to a much much darker one.

Any creature in this form gains the following boosts.

Has advantage on attack rolls.
Can take the dodge action for free.
Increases their Dexterity score by 5.
Triples their base walking speed.
Resistance to piercing, slashing and bludgeoning damage.
At the end of each of the users turns in this form, they have to roll a Dex save of 15 Constitution saving throw which increases by 1 on each success. On a fail, the user is rendered unconscious for 24 hour\'s, unless greater restoration is used.

Disadvantages. If the effect lasts more than 3 turns, the weather changes and soft rains start to drop. After 2 more turns, the rain becomes heavy.

When the wielder return to his or her normal form the rain stops and they will pass out form using such and ability boost.

If a wielder use\'s the ability 3 times in the same 15 days after they return to there normal form they will die from the weapon\'s curse','Rare'),
(null,'Thunder Sword(any sword)','Weapon',5000,'Also known as the Levin Sword, the blade of this sword was forged in the shape of a lightning-bolt. When you hit with a melee attack using this magic weapon, the target takes an extra 1d6 lightning damage.
In addition, you can use your action to shoot a bolt of lightning from the blade. You make a ranged spell attack against a creature within 60 feet as an action. The spell attack for this effect is 8 + your Dexterity modifier + your proficiency bonus. Creatures must may a Dexterity saving throw to take half of the 3d6 lightning damage. You must finish a short or long rest before you can use this feature again.','Rare'),
(null,'Winter\'s Claws(handaxe)','Weapon',250,'These ancient axes belonged to a warrior who never let his prey escape him. When either of these weapons make contact, be it thrown or melee, the target takes an additional 1d4 cold damage and its movement speed is slowed by 10 feet.','Rare'),
(null,'Spear of Combustion','Weapon',250,'You gain +1 to attack and damage rolls made with this magic weapon.
This ornate spear has several effigies of flames crave into the shaft of the spear. When you throw this spear you can speak the command word to cause flames to burst forth from it. On a hit, any creature within 10 feet must make a DC 16 Dexterity saving throw, taking 3d8 fire damage on a failed save or half damage on a successful one. The spear cannot be used in this way again until the next dawn.','Rare'),
(null,'Parrying Blade(any sword)','Weapon',250,'A shimmering haze surrounds this weapon and the wielder is protected by glowing bands of power.
You have a +1 bonus to attack and damage rolls made with this magic weapon.
While wielding the parrying blade and another creature hits you with a melee weapon attack, you can use your reaction to add your proficiency bonus to your AC for that attack, potentially causing the attack to miss you.','Rare'),
(null,'Yin Yang Blade(longsword)','Weapon',25000,'A double edged blade, one side pulsating black for chaos and the other side radiating white for order.
This magical weapon deals an additional 2d10 damage. As a bonus action, you can the focus of this weapon to change the damage types dealt.
Balanced Focus. 1d10 radiant and 1d10 necrotic damage
Yin Focus. 1d10 radiant and 1d10 slashing damage
Yang Focus.1d10 necrotic and 1d10 slashing damage','Very rare'),
(null,'Spiked Flail of Darkness','Weapon',20000,'You gain a +3 bonus to attack rolls made with this magic weapon, which deals an additional 1d8 necrotic damage on a hit.','Very rare'),
(null,'Sniper\'s Bow','Weapon',19000,'The sniper\'s bow is a unique bow in that arrows fired from it actually grow stronger the farther they travel before reaching their target. Consult the table below for the bow\'s effects at different ranges:

Distance: Effect

005-100: +1 to Attack/Damage rolls

105-200: +2 to Attack/Damage rolls, advantage

205-300: +2 to Attack/Damage rolls, advantage, critical 19-20

305-400: +3 to Attack/Damage rolls, advantage, critical 19-20

405-500: +3 to Attack/Damage rolls, advantage, critical 18-20

505-600: +4 to Attack/Damage rolls, advantage, critical 18-20

605-700: +4 to Attack/Damage rolls, advantage, critical 18-20

705-800: +4 to Attack/Damage rolls, advantage, critical 17-20

(Note: at 205+ the sniper\'s bow\'s advantage only cancels out the normal disadvantage long rage attacks incur.)','Very rare'),
(null,'Rift Glaive','Weapon',250,'The blade of this red-handled naginata looks to be made of gold, but is far more durable. You gain a +2 bonus to attack rolls and damage rolls made with this magic weapon. It has 6 charges, and recovers 1d4 + 1 expended charges daily at dawn.
Rift Beam. You can use an action to expend a charge to perform a Rift Beam attack. Each creature in a 30-foot line that is 5 feet wide must make a DC 15 Strength saving throw. On a failed save, the creature takes weapon damage and is pushed 5 feet away perpendicular from the line (caster\'s choice of direction) and cannot make reactions until the start of their next turn.
The Rift Beam can also create temporary tunnels in nonmagical walls. The tunnels last for 1 minute before closing and extend for up to 30 feet from where the rift beam originated. The tunnels are a distortion of space and do not cause structural damage.','Very rare'),
(null,'Luring Edge(greataxe)','Weapon',250,'This dwarven greataxe seems simplistic in design, but each side of the axe head is festooned with a pair of round onyx gemstones. The stones are deep black, save for a white band surrounding a white circle at the center of each. You gain a +2 bonus to AC against ranged weapon attacks while wielding this greataxe.
You can use your reaction to draw any projectiles travelling within 5 feet of you to the head of the greataxe. For each redirected projectile, you must make a Strength saving throw against a DC equal 1/2 the damage dealt from the attack. On a success, the projectile bounces harmlessly off the axe head. On a failed save, you take no damage, but you are disarmed and the greataxe lands at your feet. This effect lasts until the start of your next turn, or until you are disarmed.','Very rare'),
(null,'Aegis','Armor',10000,'This magic shield bears the supernaturally horrifying visage of a gorgon. While holding this shield, you have an extra +1 bonus to your AC and to Constitution saving throws. You also have advantage on any Charisma (Intimidation) check made to intimidate humanoids that can see this shield on your person.
If the aegis is destroyed, all creatures within 60 feet must succeed on a DC 18 Wisdom saving throw or take 6d6 psychic damage.','Rare'),
(null,'Ghost Armor(any armor)','Armor',10000,'A ghostly set of armor that always fits its wearer and by using a bonus action, speaking the command word can be instantly donned or removed. Does not cause disadvantage on stealth checks no matter what type of armor it is.','Rare'),
(null,'Lion’s Mane(hide armor)','Armor',10000,'This majestic hide of a great lion has been enchanted to always look best by brushing both arrows and dust alike. While wearing this armor, you gain a +1 bonus to AC.
Once a turn, whenever you are attacked with a range weapon, you can add an extra +2 to your AC. This ability continues to work as long as you are neither surprised nor incapacitated.','Rare'),
(null,'Warding Steel(heavy armor)','Armor',10000,'When you wear this armor, you benefit from the effect of death ward. When the spell ends, you do not gain the benefits again until the following dawn.','Rare'),
(null,'Yin Yang robe(clothes)','Armor',10000,'During the daytime this robe is black with white accents, giving you an AC equal to 10+ twice your Dexterity modifier. At night the robes colors shift, becoming white with black accents and giving you an AC equal to 10+ twice your Wisdom modifer.','¸Rare'),
(null,'Ancient Shield','Armor',10000,'This magic shield was masterfully recreated using ancient Sheikah technology. Its surface glows blue when raised in defense. While wielding it, you have an extra +2 bonus to AC, have resistance to force damage, and do not take damage from the magic missile spell.','Very rare'),
(null,'Angelic Armor(any armor)','Armor',10000,'A suit of armor forged in Mount Celestia. Powerful enough to protect a hero on his journey through the the world, or even beyond the Gates of Hell itself. These armors are made for the most faithful and divine mortals and angels alike.
While wearing this armor, you gain a +2 bonus to AC, you have advantage on all saving throws against effects caused by fiends, and it creates an aura in a 5-foot radius around you. Fiends in the aura have disadvantage on saving throws.','Very rare'),
(null,'Armor of Dawn(any armor)','Armor',10000,'While you wear this armour, you have a +1 bonus to AC.
At each dawn, the user may choose one type of damage to become resistant to until the following dawn:
• Fire
• Cold
• Poison
• Acid
• Psychic
• Necrotic
• Radiant
• Lightning
• Thunder
• Force','Very rare'),
(null,'Dreadnought Armor(plate armor)','Armor',10000,'The dreadnought armor was designed by the dwarves after they discovered that adamantine could be compressed. Despite being designed to maximize mobility, even going so far as to reduce its weight using runes, only the strongest could use it. While you\'re wearing this armor, any critical hit against you becomes a normal hit and you have a +2 bonus to your AC.
Heavyweight. If you have don\'t have 19 Strength, while wearing this armor, your movement speed is halved.
Clunky. It takes 30 minutes to don this armor, and 10 minutes to doff this armor.','Very rare'),
(null,'Spiderplate','Armor',10000,'This dusty gray armor is covered with segments, and whirrs and clicks as its limbs are moved. A small lever on the chest must be pulled which causes the armor to open itself up over 1 minute, meaning donning and doffing this armor is not much of a hassle.
While you are wearing this armor, you can use an action to speak its command word. This causes your legs to vanish and be replaced with eight long, spindly legs for 1 hour or until you die or use a bonus action to end the effect. While activated, your base walking speed becomes 40 feet, you do not gain disadvantage on Dexterity (Stealth) checks despite wearing plate, you gain a climbing speed of 40 feet, and you are also not inconvenienced by difficult terrain.
Once this property of the armor has been used, it cannot be used again until the next dawn.','Very rare'),
(null,'Beads of Sabotage','Wondrous',10,'As an action, you can activate one bead in your hand. Any creature in possession of an activated bead cannot receive advantage on any ability checks, attack rolls, or saving throws. Beads fizzle away after 24 hours of being activated.
Beads of sabotage are usually found in groups of 1d6 + 4
These beads are often activated, then slipped into the pocket or pack of an enemy to sabotage some event, or make assassinations or robberies more advantageous.','Common'),
(null,'Belt of Language Decoding','Wondrous',0,'The belt of language decoding is a brown belt that looks quite dapper. It has magic that lets you temporarily learn a language. When you finish a long rest roll 1d20 and choose a desired language. Until you finish another long rest, you know the following parts of the language chosen:
1-5: You do not speak any parts of the language.
6-10: You can speak a few extremely common sentences.
11-15: You speak the language as well as a commoner.
16-20: You speak the language as well as an educated individual.','Common'),
(null,'Book of Memory','Wondrous',10,'This magical book copies written and drawn information in the attuned user\'s handwriting and style. When you or another creature places a piece of paper or paper like material in this book and closes it, any pages in contact with written or drawn information copy the information onto themselves, in the handwriting and drawing style of the attuned user. Copying new information onto a page that has already been used erases the previous information.
While holding and attuned to this book, you can use a bonus action to think about a document that has been copied into the book, causing the book to fly open to the page it was copied onto.
If the book becomes attuned to a new creature, or the book loses attunement to any creature, all pages become blank.
A Book of Memory typically has 100 + 10d10 pages, each of which has two sides.','Common'),
(null,'Bowl of Soups','Wondrous',10,'Any fresh water poured into this bowl immediately becomes soup. The soup can be potato, tomato, or turnip (user’s choice). If the soup isn’t lifted with the accompanying spoon or drank, it reverts to water.','Common'),
(null,'Pen of Endless Ink','Wondrous',10,'This pen never runs out of ink. Though truly a novelty, the ink that comes from the pen is of poor quality, making it unusable in the writing of spell scrolls, spellbooks, and other delicate magical writings','Common'),
(null,'Ring of Fire Bolts','Wondrous',10,'This ring has 3 charges. While wearing it, you can use an action and expend 1 charge to cast fire bolt (spell attack bonus +6) from it. The ring regains 1d3 expended charges daily at dawn.','Common'),
(null,'Ring of Pleh','Wondrous',10,'This ring has ten charges. When you wear this ring, you can use a charge and an action to cause a splatter of green, brown, or gray (DM decides which when first giving the item) goop to cover up to 1 sq. foot of material (or person) in a gross mess. It smells a little off and is hard to clean (It can take 10 minutes of scrubbing a hard surface or a hour of washing clothes), but is otherwise harmless. The ring regains 1 charge at dawn each day.','Common'),
(null,'Hangover Cure','Potion',1,'A clear potion in an vial that when drunk clears all forms of a hangover, as well as giving a clearer understaning of what happened when you were drunk.','Common'),
(null,'Goodberry Potion','Potion',4,'When you drink this potion, you gain the benefits of the goodberry spell. This potion\'s purple liquid looks and smells a bit like grapes. The purpose of this potion is an alternative to normal rations that has a few benefits. It only weighs a pound, never expires, and can act as three meals instead of one.','Common'),
(null,'Potion of Solace','Potion',50,'This potion\'s blue liquid reflects light, granting it a slight sheen. A spellcaster that drinks this potion regains one expended 1st level spell slot.','Common'),
(null,'Potion of the Sleepless Mind','Potion',30,'When you drink this potion, you do not need to sleep for the next 48 hours. Also, you cannot suffer from exhaustion as a result of a lack of sleep or similar spell effects.
Until the duration of the potion ends, you feel refreshed as though you had woken from a restful sleep. The potion does not have the same affect as if taking a short rest or long rest, nor does it effect the benefits you gain from such rests.','Common'),
(null,'Scarlet Bovine','Potion',50,'When you drink this potion, your exhaustion level is reduced by 1 and your movement increases by 10 feet. In addition, there is a 5% chance that you grow wings, granting a flying speed of 60 feet. The increased movement and flight last for 1 hour.','Common'),
(null,'Chocolate Rain','Potion',10,'The chocolate rain potion is a drink that tastes exactly like chocolate. When you have taken it, you get the ability to throw a 5-foot-square of liquid chocolate over the head over who ever you think about for 1 hour','Common'),
(null,'Armor of Thorns(light or medium)','Armor',150,'This armor is decorated with small, metal spikes. While wearing this armor, you gain a +1 bonus to AC, and when a creature within 5 feet of you hits you with a melee attack, you can use your reaction to deal 2d4 force damage to them, as magical purple spikes pulse from the metal ones.','Uncommon'),
(null,'Combat Skirt','Armor',0,'The Combat Skirt is a fashionable piece of armor designed to look indistinguishable from fashionable - if distinctive - clothing. They are typically made of regular cloth embroidered and reinforced with magical Dust, fabrics, or charms and often enhanced with a minor glamour to protect the combatant from accidentally exposing themselves during acrobatic maneuvers. Because of its nature as magically reinforced cloth, it does not impose disadvantage or spell failure if worn by a person without light armor proficiency. It provides +1 AC while worn and weighs 4 lbs.','Uncommon'),
(null,'Pirate Garb','Armor',0,'Iconic of virtually all pirates across the sea, this garb sets them apart from most other seafarers. While it may occasionally include thick coats and even solid leather portions for armor, it\'s primarily intended for general sailing and concealment of items. The visual aesthetics and condition of the clothing can also tell you much about the individual wearing it. Due to its partitioned make which allows for free movement and overall aerodynamic design, while you wear this armor you have a +1 bonus to your AC.
Commanding Outfit. While wearing this armor, if you are proficient in vehicles (water), you have advantage on Charisma checks against other seafarers.','Uncommon'),
(null,'Armor of Haste(light or medium)','Armor',100,'While moving, you can spend your bonus action to take the Dash action.','Uncommon');









insert into shop(shop_id,S_name,Type,S_size,S_description) values
(null,'Stone Anvil','Blacksmith','Small',''),
(null,'Broken Wreckage','Blacksmith','Small',''),
(null,'Hammer and Anvil','Blacksmith','Small',''),
(null,'Gilded Hammer','Blacksmith','Small',''),
(null,'Hot Hammer','Blacksmith','Medium',''),
(null,'Golden Anvil','Blacksmith','Medium',''),
(null,'Forgoten Craft','Blacksmith','Medium',''),
(null,'The Fox\'s Armaments','Blacksmith','Medium',''),
(null,'Hard Ores','Blacksmith','Large',''),
(null,'The Sphinx\'s Blades','Blacksmith','Large',''),
(null,'Tilgri\'s Armaments','Blacksmith','Large',''),
(null,'The Popular Hammer','Blacksmith','Large',''),
(null,'The Admired Guard','Blacksmith','Grand',''),
(null,'The Begging Chariot','Blacksmith','Grand',''),
(null,'The Elder Plate','Blacksmith','Grand',''),
(null,'Dwarven Mails','Blacksmith','Grand',''),
(null,'Broken Drake','Alchemist','Small',''),
(null,'Bags Bunny','Alchemist','Small',''),
(null,'The Sunny Pear','Alchemist','Small',''),
(null,'The Agreeing Boar Drugstore','Alchemist','Small',''),
(null,'Bubbling Cauldron','Alchemist','Medium',''),
(null,'The Joking Pantheon Garden Center','Alchemist','Medium',''),
(null,'The Sad Bite Potions','Alchemist','Medium',''),
(null,'The Careful Tooth Apothecary','Alchemist','Medium',''),
(null,'Hairy Hag','Alchemist','Large',''),
(null,'Planet of the Grapes','Alchemist','Large',''),
(null,'The Rolling Pot','Alchemist','Large',''),
(null,'Tiecoon','Alchemist','Large',''),
(null,'Unicorn Tears','Alchemist','Grand',''),
(null,'The Sleek Peacock','Alchemist','Grand',''),
(null,'The Smart Model Drugstore','Alchemist','Grand',''),
(null,'The Intelligent Growth','Alchemist','Grand',''),
(null,'Mad mage shack','Magic','Small',''),
(null,'The Flimsy Boar','Magic','Small',''),
(null,'The Mad Table Supermarket','Magic','Small',''),
(null,'The Tiny Adventure','Magic','Small',''),
(null,'Hovering Unicorn','Magic','Medium',''),
(null,'The Little Asteroid','Magic','Medium',''),
(null,'Crease Lightning','Magic','Medium',''),
(null,'The Broken Book','Magic','Medium',''),
(null,'Karn\'s Tower','Magic','Large',''),
(null,'The Tired Writer','Magic','Large',''),
(null,'The Quick Tower','Magic','Large',''),
(null,'The Flawless Adventure','Magic','Large',''),
(null,'The Yawning Door','Magic','Large',''),
(null,'Gilded Qilin','Magic','Grand',''),
(null,'The Golden River','Magic','Grand',''),
(null,'The Jaded Chariot','Magic','Grand',''),
(null,'The Hidden Tower ','Magic','Grand',''),
(null,'Gullible peaseant','Merchant','Small',''),
(null,'The Admiring Ghost','Merchant','Small',''),
(null,'The Fabulous Mug','Merchant','Small',''),
(null,'The Preaching Monkey','Merchant','Small',''),
(null,'Traveling Minstrel','Merchant','Medium',''),
(null,'The Laughing Raven','Merchant','Medium',''),
(null,'The Burning Sail','Merchant','Medium',''),
(null,'The Big Crate','Merchant','Medium',''),
(null,'Eastern Tale','Merchant','Large',''),
(null,'The Blissful Chimney Tradepost','Merchant','Large',''),
(null,'The Large Owl Market','Merchant','Large',''),
(null,'The Velvet Castle','Merchant','Large',''),
(null,'Emperors Emporium','Merchant','Grand',''),
(null,'The Awesome Joker','Merchant','Grand',''),
(null,'The Wise Tree Boutique','Merchant','Grand',''),
(null,'The Exalted Blossom','Merchant','Grand','');
