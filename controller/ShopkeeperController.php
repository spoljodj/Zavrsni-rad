<?php

class ShopkeeperController extends AutorizacijaController
{
    public function index()
    {
        $this->view->render('privatno' . 
        DIRECTORY_SEPARATOR . 'shopkeeper' .
        DIRECTORY_SEPARATOR . 'index');
    }
}