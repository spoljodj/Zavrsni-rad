<?php

class App
{
    public static function start()
    {
        $ruta=Request::getRuta();
        $dijelovi=explode('/', $ruta);
        $klasa='';

        if(!isset($dijelovi[1]) || $dijelovi[1]===''){
            $klasa='Index';
            }else{
                $klasa=ucfirst($dijelovi[1]);
            }

        $klasa.='Controller';
        $funkcija='';
        if(!isset($dijelovi[2]) || $dijelovi[2]===''){
                $funkcija='index';
            }else{
                $funkcija=$dijelovi[2];
        }


        if(class_exists($klasa) && method_exists($klasa,$funkcija)){
            $instanca = new $klasa();
            $instanca->$funkcija();
        }else{
            header('HTTP/1.0 404 Not Found');
           // echo 'HGSS';
        }
    }
    public static function config($kljuc)
    {
        $konfiguracija = include BP . 'konfiguracija.php';
    
        return $konfiguracija[$kljuc];
    }
}