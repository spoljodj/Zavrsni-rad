<?php 

class Item
{
    /*
    public static function searchItem($scon)
    {
        $scon='%'.$scon.'%';
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select * from item where concat(Name,\'\',Itype,\'\',Rarity,\'\') like :scon');
        $izraz->execute(['scon' => $scon]);
        return $izraz->fetchAll();
    }
    */
    public static function readAll()
    {
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select item_id, 
        Name, Itype, Cost, Description, Rarity from item');
        $izraz->execute();
        return $izraz->fetchAll();
    }


    public static function create()
    {
        $veza = DB::getInstanca();
        $izraz=$veza->prepare('insert into item 
        (Name,Itype,Cost,Description,Rarity) values 
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


    public static function read($item_id)
    {
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('select item_id, 
        Name, Itype, Cost, Description, Rarity from item
        where item_id=:item_id');
        $izraz->execute(['item_id'=>$item_id]);
        return $izraz->fetch();
    }


    public static function update(){
        $veza = DB::getInstanca();
        $izraz=$veza->prepare('update item 
        set Name=:name,Itype=:type,
        Cost=:cost,Description=:description,Rarity=:rarity where item_id=:item_id');
        $izraz->execute($_POST);
    }

    public static function totalpage($scon)
    {
        $scon='%'.$scon.'%';
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('        
        select count(item_id) from item where concat(Name,\'\',Itype,\'\',Rarity,\'\') like :scon ');
        $izraz->bindParam('scon',$scon);
        $izraz->execute();
        $totalresults=$izraz->fetchColumn();
        return ceil($totalresults / App::config('resultsperpage'));
    }

    public static function searchItem($scon,$page)
    {
        $rps = App::config('resultsperpage');

        $od = $page * $rps - $rps;


        $scon='%'.$scon.'%';
        $veza = DB::getInstanca();
        $izraz = $veza->prepare('
        
        select * from item where concat(Name,\'\',Itype,\'\',Rarity,\'\') like :scon limit :od,9
        
        ');
        $izraz->bindParam('scon',$scon);
        $izraz->bindValue('od',$od, PDO::PARAM_INT);
        $izraz->execute();

        return $izraz->fetchAll();
    }
    
}