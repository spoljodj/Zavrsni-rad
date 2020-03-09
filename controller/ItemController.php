<?php

class ItemController extends AutorizacijaController
{

    private $viewDir = 'privatno' . 
    DIRECTORY_SEPARATOR . 'item' .
    DIRECTORY_SEPARATOR;

    public function searchItem()
    {
        $this->view->render($this->viewDir . 'index',[
            'podaci'=>Item::searchItem($_GET['scon'])
           ]);
    }

    public function index()
    {
         $this->view->render($this->viewDir . 'index',[
         'podaci'=>Item::readAll()
     ]);
    }


    public function newItem()
    {
        $this->view->render($this->viewDir . 'new',
            ['poruka'=>'Popunite sve tražene podatke']
        );
    }


    public function addnew()
    {
        
        Item::create();
        $this->index();
    }


    public function delete()
    {
        
        if(Item::delete()){
            header('location: /item/index');
        }
        
    }


    public function change()
    {
        $item = Item::read($_GET['item_id']);
        if(!$item){
            $this->index();
            exit;
        }

        $this->view->render($this->viewDir . 'change',
            ['item'=>$item,
                'poruka'=>'Promjenite željene podatke']
        );
     
    }


    public function changes()
    {
        Item::update();
        header('location: /item/index');
    }
}