<?php 

class Shopkeeper
{
    public static function searchShopkeeper($scon)
    {
        $scon='%'.$scon.'%';
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select * from shopkeeper where concat(First_name,\'\',Last_name,\'\',Race,\'\',Bussiness,\'\') like :scon');
        $izraz->execute(['scon' => $scon]);
        return $izraz->fetchAll();
    }

    public static function readAll()
    {
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select shopkeeper_id, 
        First_name,Last_name,Race,Bussiness,Age,Description from shopkeeper');
        $izraz->execute();
        return $izraz->fetchAll();
    }


    public static function create()
    {
        $veza = DB::getInstanca();
        $izraz=$veza->prepare('insert into shopkeeper 
        (First_name,Last_name,Race,Bussiness,Age,Description) values 
        (:fname,:lname,:race,:bussiness,:age,:description)');
        $izraz->execute($_POST);
    }


    public static function delete()
    {
        try{
            $veza = DB::getInstanca();
            $izraz=$veza->prepare('delete from shopkeeper where shopkeeper_id=:shopkeeper_id');
            $izraz->execute($_GET);
        }catch(PDOException $e){
            echo $e->getMessage();
            return false;
        }
        return true;
    }


    public static function read($shopkeeper_id)
    {
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select shopkeeper_id, 
        First_name,Last_name,Race,Bussiness,Age,Description from shopkeeper
        where shopkeeper_id=:shopkeeper_id');
        $izraz->execute(['shopkeeper_id'=>$shopkeeper_id]);
        return $izraz->fetch();
    }


    public static function update(){
        $veza = DB::getInstanca();
        $izraz=$veza->prepare('update shopkeeper 
        set First_name=:fname,Last_name=:lname,Race=:race,
        Bussiness=:bussiness,Age=:age,Description=:description where shopkeeper_id=:shopkeeper_id');
        $izraz->execute($_POST);
    }
}