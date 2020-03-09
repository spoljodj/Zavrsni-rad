<?php

class ShopController extends AutorizacijaController
{

    private $viewDir = 'privatno' . 
    DIRECTORY_SEPARATOR . 'shop' .
    DIRECTORY_SEPARATOR;

    public function searchShop()
    {
        $this->view->render($this->viewDir . 'index',[
            'podaci'=>Shop::searchShop($_GET['scon'])
           ]);
    }

    public function index()
    {
         $this->view->render($this->viewDir . 'index',[
         'podaci'=>Shop::readAll()
     ]);
    }


    public function newShop()
    {
        $this->view->render($this->viewDir . 'new',
            ['poruka'=>'Popunite sve tražene podatke']
        );
    }


    public function addnew()
    {
        
        Shop::create();
        $this->index();
    }


    public function delete()
    {
        
        if(Shop::delete()){
            header('location: /shop/index');
        }
        
    }


    public function change()
    {
        $shop = Shop::read($_GET['shop_id']);
        if(!$shop){
            $this->index();
            exit;
        }

        $this->view->render($this->viewDir . 'change',
            ['shop'=>$shop,
                'poruka'=>'Promjenite željene podatke']
        );
     
    }


    public function changes()
    {
        Shop::update();
        header('location: /shop/index');
    }
}