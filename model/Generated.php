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
}