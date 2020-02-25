<?php

class ShopController extends AutorizacijaController
{
    public function index()
    {
        $this->view->render('privatno' . 
        DIRECTORY_SEPARATOR . 'shop' .
        DIRECTORY_SEPARATOR . 'index');
    }
}