<?php

class AutorizacijaController extends Controller
{

    public function __construct()
    {
        parent::__construct();
        if(!isset($_SESSION['admin'])){
            $this->view->render('prijava',[
                'poruka'=>'Morate se prijaviti',
                'email'=>''
            ]);
            exit;
        }
    }

}