<?php

class GeneratedController extends Controller
{
    private $viewDir = 'privatno' . 
    DIRECTORY_SEPARATOR . 'generated' .
    DIRECTORY_SEPARATOR;
    public function generated()
    {
        $this->view->render($this->viewDir . 'generated',[
            'shop'=>Generated::generateShop($_GET['type'])
           ]);
    }

    public function test()
    {
        
    }
}