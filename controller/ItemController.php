<?php

class ItemController extends AutorizacijaController
{

    private $viewDir = 'privatno' . 
    DIRECTORY_SEPARATOR . 'item' .
    DIRECTORY_SEPARATOR;

    public function searchItem()
    {
        
        if(!isset($_GET['page']) || $_GET['page']=='0'){
            $page=1;
        }else{
            $page=$_GET['page'];
        }

        $podaci = Item::searchItem($_GET['scon'],
        $page);

        if(count($podaci)===0){
            $page--;
            $podaci = Item::searchItem($_GET['scon'],
            $page);
        }

        $this->renderIndex($podaci,$page,$_GET['scon'],
        Item::totalpage($_GET['scon']));
    }

    private function renderIndex($podaci,$page,$scon,$maxpage){
        $this->view->render($this->viewDir . 'index',[
            'podaci'=>$podaci,
            'page' => $page,
            'scon' => $scon,
            'maxpage' => $maxpage,
           ]);
    }


    public function index()
    {
        $this->renderIndex(Item::searchItem('','1'),'1','',
        item::totalpage(''));
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