<?php

class IndexController extends Controller
{

    public function prijava()
    {
        $this->view->render('prijava',[
            'poruka'=>'Unesite pristupne podatke',
            'email'=>''
        ]);
    }
    
    public function era()
    {
        $this->view->render('era');
    }

    public function autorizacija()
    {
        if(!isset($_POST['email']) || 
        !isset($_POST['lozinka'])){
            $this->view->render('prijava',[
                'poruka'=>'Nisu postavljeni pristupni podaci',
                'email' =>''
            ]);
            return;
        }

        if(trim($_POST['email'])==='' || 
        trim($_POST['lozinka'])===''){
            $this->view->render('prijava',[
                'poruka'=>'Pristupni podaci obavezno',
                'email'=>$_POST['email']
            ]);
            return;
        }
    $veza = DB::getInstanca();
    $izraz = $veza->prepare('select * from admin 
                      where usermail=:usermail;');
     $izraz->execute(['usermail'=>$_POST['email']]);
     $rezultat=$izraz->fetch();
        if($rezultat==null){
            $this->view->render('prijava',[
                'poruka'=>'Ne postojeći korisnik',
                'email'=>$_POST['email']
            ]);
            return;
        }
        if(!password_verify($_POST['lozinka'],$rezultat->userpassword)){
            $this->view->render('prijava',[
                'poruka'=>'Neispravna kombinacija email i lozinka',
                'email'=>$_POST['email']
            ]);
            return;
        }
        unset($rezultat->userpassword);
        $_SESSION['admin']=$rezultat;
        $npc = new NadzornaplocaController();
        $npc->index();
    }                
    public function odjava()
    {
        unset($_SESSION['admin']);
        session_destroy();
        $this->index();
    }


    public function index()
    {
     $poruka='hello iz kontrolera';
     $kod=22;

    
     $this->view->render('pocetna',[
         'p'=>$poruka,
         'k'=>$kod]
     );


    }
    public function test()
    {
     echo password_hash('e',PASSWORD_BCRYPT);
      
    } 
}