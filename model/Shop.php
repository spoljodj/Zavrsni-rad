<?php 

class Shop
{
    public static function searchShop($scon)
    {
        $scon='%'.$scon.'%';
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select * from shop where concat(S_name,\'\',Type,\'\',S_size,\'\') like :scon');
        $izraz->execute(['scon' => $scon]);
        return $izraz->fetchAll();
    }
    public static function readAll()
    {
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select shop_id, 
        S_name, Type, S_size, S_description from shop');
        $izraz->execute();
        return $izraz->fetchAll();
    }


    public static function create()
    {
        $veza = DB::getInstanca();
        $izraz=$veza->prepare('insert into shop 
        (S_name, Type, S_size, S_description) values 
        (:name,:type,:size,:description)');
        $izraz->execute($_POST);
    }


    public static function delete()
    {
        try{
            $veza = DB::getInstanca();
            $izraz=$veza->prepare('delete from shop where shop_id=:shop_id');
            $izraz->execute($_GET);
        }catch(PDOException $e){
            echo $e->getMessage();
            return false;
        }
        return true;
    }


    public static function read($shop_id)
    {
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select shop_id, 
        S_name, Type, S_size, S_description from shop
        where shop_id=:shop_id');
        $izraz->execute(['shop_id'=>$shop_id]);
        return $izraz->fetch();
    }


    public static function update(){
        $veza = DB::getInstanca();
        $izraz=$veza->prepare('update shop 
        set S_name=:name,Type=:type,
        S_size=:size,S_description=:description where shop_id=:shop_id');
        $izraz->execute($_POST);
    }
}