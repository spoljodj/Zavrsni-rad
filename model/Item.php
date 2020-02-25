<?php 

class Item
{
    public static function readAll()
    {
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select item_id, 
        Name, Type, Cost, Description, Rarity from item');
        $izraz->execute();
        return $izraz->fetchAll();
    }
    public static function create()
    {
        $veza = DB::getInstanca();
        $izraz=$veza->prepare('insert into item 
        (Name,Type,Cost,Description,Rarity) values 
        (:name,:type,:cost,:description,:rarity)');
        $izraz->execute($_POST);
    }
    public static function delete()
    {
        try{
            $veza = DB::getInstanca();
            $izraz=$veza->prepare('delete from item where item_id=:item_id');
            $izraz->execute($_GET);
        }catch(PDOException $e){
            echo $e->getMessage();
            return false;
        }
        return true;
    }
}