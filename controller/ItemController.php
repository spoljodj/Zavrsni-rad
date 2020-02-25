<?php

class ItemController extends AutorizacijaController
{

    private $viewDir = 'privatno' . 
    DIRECTORY_SEPARATOR . 'item' .
    DIRECTORY_SEPARATOR;

    public function index()
    {
         $this->view->render($this->viewDir . 'index',[
         'podaci'=>Item::readAll()
     ]);
    }
    public function new()
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
}