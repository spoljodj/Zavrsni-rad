<?php


Class Generated 
{
    public static function generateShop()
    {
        $veza = DB::getInstanca();
        $shoparray=[];
        $shoparray = $veza->prepare('select * from shop where Type like :type and S_size like :size ;');
        $shoparray->execute(['type' => $_GET['type'],'size' => $_GET['size']]);
        return $shoparray->fetchAll();
    }

    public static function generateShopkeeper()
    {
        $veza = DB::getInstanca();
        $shopkeeperarray=[];
        $shopkeeperarray = $veza->prepare('select * from shopkeeper where Bussiness like :type;');
        $shopkeeperarray->execute(['type' => $_GET['type']]);
        return $shopkeeperarray->fetchAll();
    }

    public static function generateCommonWeapon()
    {
        $veza = DB::getInstanca();
        $commonweapon=[];
        $commonweapon=$veza->prepare('select * from item where Rarity = \'Common\' and Itype = \'Weapon\';');
        $commonweapon->execute();
        return $commonweapon->fetchAll();
    }

    public static function generateUncommonWeapon()
    {
        $veza = DB::getInstanca();
        $Uncomonweapon=[];
        $Uncomonweapon=$veza->prepare('select * from item where Rarity = \'Uncommon\' and Itype = \'Weapon\';');
        $Uncomonweapon->execute();
        return $Uncomonweapon->fetchAll();
    }

    public static function generateRareWeapon()
    {
        $veza = DB::getInstanca();
        $rareweapon=[];
        $rareweapon=$veza->prepare('select * from item where Rarity = \'Rare\' and Itype = \'Weapon\';');
        $rareweapon->execute();
        return $rareweapon->fetchAll();
    }

    public static function generateVeryrareWeapon()
    {
        $veza = DB::getInstanca();
        $veryrareweapon=[];
        $veryrareweapon=$veza->prepare('select * from item where Rarity = \'Very rare\' and Itype = \'Weapon\';');
        $veryrareweapon->execute();
        return $veryrareweapon->fetchAll();
    }

    public static function generateCommonPotion()
    {
        $veza = DB::getInstanca();
        $commonpotion=[];
        $commonpotion=$veza->prepare('select * from item where Rarity = \'Common\' and Itype = \'Potion\';');
        $commonpotion->execute();
        return $commonpotion->fetchAll();
    }
    
    public static function generateUncommonPotion()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Uncommon\' and Itype = \'Potion\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateRarePotion()
    {
        $veza = DB::getInstanca();
        $rarepotion=[];
        $rarepotion=$veza->prepare('select * from item where Rarity = \'Rare\' and Itype = \'Potion\';');
        $rarepotion->execute();
        return $rarepotion->fetchAll();
    }

    public static function generateVeryrarePotion()
    {
        $veza = DB::getInstanca();
        $veryrarepotion=[];
        $veryrarepotion=$veza->prepare('select * from item where Rarity = \'Very rare\' and Itype = \'Potion\';');
        $veryrarepotion->execute();
        return $veryrarepotion->fetchAll();
    }

    public static function generateCommonArmor()
    {
        $veza = DB::getInstanca();
        $commonweapon=[];
        $commonweapon=$veza->prepare('select * from item where Rarity = \'Common\' and Itype = \'Armor\';');
        $commonweapon->execute();
        return $commonweapon->fetchAll();
    }

    public static function generateUncommonArmor()
    {
        $veza = DB::getInstanca();
        $commonweapon=[];
        $commonweapon=$veza->prepare('select * from item where Rarity = \'Uncommon\' and Itype = \'Armor\';');
        $commonweapon->execute();
        return $commonweapon->fetchAll();
    }

    public static function generateRareArmor()
    {
        $veza = DB::getInstanca();
        $commonweapon=[];
        $commonweapon=$veza->prepare('select * from item where Rarity = \'Rare\' and Itype = \'Armor\';');
        $commonweapon->execute();
        return $commonweapon->fetchAll();
    }

    public static function generateVeryrareArmor()
    {
        $veza = DB::getInstanca();
        $commonweapon=[];
        $commonweapon=$veza->prepare('select * from item where Rarity = \'Very rare\' and Itype = \'Armor\';');
        $commonweapon->execute();
        return $commonweapon->fetchAll();
    }

    public static function generateCommonWondrousItem()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Common\' and Itype = \'Wondrous\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateUncommonWondrousItem()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Uncommon\' and Itype = \'Wondrous\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateRareWondrousItem()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Rare\' and Itype = \'Wondrous\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateVeryrareWondrousItem()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Very rare\' and Itype = \'Wondrous\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateCommonSpellscroll()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Common\' and Itype = \'Scroll\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateUncommonSpellscroll()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Uncommon\' and Itype = \'Scroll\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateRareSpellscroll()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Rare\' and Itype = \'Scroll\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }

    public static function generateVeryrareSpellscroll()
    {
        $veza = DB::getInstanca();
        $Uncomonpotion=[];
        $Uncomonpotion=$veza->prepare('select * from item where Rarity = \'Very rare\' and Itype = \'Scroll\';');
        $Uncomonpotion->execute();
        return $Uncomonpotion->fetchAll();
    }
}