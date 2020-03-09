<?php

class ShopkeeperController extends AutorizacijaController
{

    private $viewDir = 'privatno' . 
    DIRECTORY_SEPARATOR . 'shopkeeper' .
    DIRECTORY_SEPARATOR;

    public function searchShopkeeper()
    {
        $this->view->render($this->viewDir . 'index',[
            'podaci'=>SHopkeeper::searchShopkeeper($_GET['scon'])
           ]);
    }


    public function index()
    {
         $this->view->render($this->viewDir . 'index',[
         'podaci'=>Shopkeeper::readAll()
     ]);
    }


    public function newShopkeeper()
    {
        $this->view->render($this->viewDir . 'new',
            ['poruka'=>'Popunite sve tražene podatke']
        );
    }


    public function addnew()
    {
        
        Shopkeeper::create();
        $this->index();
    }


    public function delete()
    {
        
        if(Shopkeeper::delete()){
            header('location: /shopkeeper/index');
        }
        
    }


    public function change()
    {
        $shopkeeper = Shopkeeper::read($_GET['shopkeeper_id']);
        if(!$shopkeeper){
            $this->index();
            exit;
        }

        $this->view->render($this->viewDir . 'change',
            ['shopkeeper'=>$shopkeeper,
                'poruka'=>'Promjenite željene podatke']
        );
     
    }


    public function changes()
    {
        Shopkeeper::update();
        header('location: /shopkeeper/index');
    }
}