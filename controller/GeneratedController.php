<?php

class GeneratedController extends Controller
{
    private $viewDir = 'privatno' . 
    DIRECTORY_SEPARATOR . 'generated' .
    DIRECTORY_SEPARATOR;
    public function generated()
    {
        $shops=Generated::generateShop($_GET['type']);
        shuffle($shops);
        $shop=$shops[0];
       /*$shop=[];
       for($i=0;$i<3;$i++){
           $shop[]=$shopovi[$i];
       }
       */
      $shopkeepers=Generated::generateShopkeeper($_GET['type']);
      shuffle($shopkeepers);
      $shopkeeper=$shopkeepers[0];

switch ($_GET['type']){
    case 'Blacksmith':
        switch($_GET['size']){
            case 'Small': 
                $commonweapons=Generated::generateCommonWeapon();
                $uncommonweapons=Generated::generateUncommonWeapon();
                $commonarmors=Generated::generateCommonArmor();
                $uncommonarmors=Generated::generateUncommonArmor();
                shuffle($commonweapons);
                shuffle($uncommonweapons);
                shuffle($commonarmors);
                shuffle($uncommonarmors);
                $items=[];
               
               for($i=0;$i<rand(1,5);$i++){
                   $items[]=$commonweapons[$i];
               }
               for($i=0;$i<rand(1,5);$i++){
                $items[]=$commonarmors[$i];
            }
            for($i=0;$i<rand(1,2);$i++){
                $items[]=$uncommonweapons[$i];
            }
            for($i=0;$i<rand(1,2);$i++){
                $items[]=$uncommonarmors[$i];
            }
            
            break;

            case 'Medium':
                $commonweapons=Generated::generateCommonWeapon();
                $uncommonweapons=Generated::generateUncommonWeapon();
                $commonarmors=Generated::generateCommonArmor();
                $uncommonarmors=Generated::generateUncommonArmor();
                shuffle($commonweapons);
                shuffle($uncommonweapons);
                shuffle($commonarmors);
                shuffle($uncommonarmors);
                $items=[];
                for($i=0;$i<rand(1,2);$i++){
                    $items[]=$commonweapons[$i];
                }
                for($i=0;$i<rand(1,2);$i++){
                 $items[]=$commonarmors[$i];
             }
             for($i=0;$i<rand(1,5);$i++){
                 $items[]=$uncommonweapons[$i];
             }
             for($i=0;$i<rand(1,5);$i++){
                 $items[]=$uncommonarmors[$i];
             }
            break;

            case 'Large':
                $uncommonweapons=Generated::generateUncommonWeapon();
                $rareweapons=Generated::generateRareWeapon();
                $uncommonarmors=Generated::generateUncommonArmor();
                $rarearmors=Generated::generateRareArmor();
                shuffle($uncommonweapons);
                shuffle($rareweapons);
                shuffle($uncommonarmors);
                shuffle($rarearmors);
                $items=[];
                for($i=0;$i<rand(2,4);$i++){
                    $items[]=$uncommonweapons[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$rareweapons[$i];
                }
                for($i=0;$i<rand(2,4);$i++){
                    $items[]=$uncommonarmors[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$rarearmors[$i];
                }
            break;
            
            case 'Grand':
                $rareweapons=Generated::generateRareWeapon();
                $veryrareweapons=Generated::generateVeryrareWeapon();
                $rarearmors=Generated::generateRareArmor();
                $veryrarearmors=Generated::generateVeryrareArmor();
                shuffle($rareweapons);
                shuffle($veryrareweapons);
                shuffle($rarearmors);
                shuffle($veryrarearmors);
                $items=[];
                for($i=0;$i<rand(2,4);$i++){
                    $items[]=$rareweapons[$i];
                }
                for($i=0;$i<rand(0,2);$i++){
                    $items[]=$veryrareweapons[$i];
                }
                for($i=0;$i<rand(2,4);$i++){
                    $items[]=$rarearmors[$i];
                }
                for($i=0;$i<rand(0,2);$i++){
                    $items[]=$veryrarearmors[$i];
                }
            break;
        }
    break;

    case 'Merchant':
        switch($_GET['size']){
            case 'Small':
                $commonpotions=Generated::generateCommonPotion(); 
                $commonweapons=Generated::generateCommonWeapon();
                $commonarmors=Generated::generateCommonArmor();
                $commonwondrous=Generated::generateCommonWondrousItem();
                $commonscrolls=Generated::generateCommonSpellscroll();
                shuffle($commonpotions);
                shuffle($commonweapons);
                shuffle($commonarmors);
                shuffle($commonwondrous);
                shuffle($commonscrolls);
                $items=[];
                for($i=0;$i<rand(2,5);$i++){
                    $items[]=$commonweapons[$i];
                }
                for($i=0;$i<rand(2,5);$i++){
                    $items[]=$commonarmors[$i];
                }
                for($i=0;$i<rand(2,5);$i++){
                    $items[]=$commonwondrous[$i];
                }
                for($i=0;$i<rand(2,5);$i++){
                    $items[]=$commonscrolls[$i];
                }
                for($i=0;$i<rand(2,5);$i++){
                    $items[]=$commonpotions[$i];
                }
            break;

            case 'Medium':
                $commonpotions=Generated::generateCommonPotion(); 
                $commonweapons=Generated::generateCommonWeapon();
                $commonarmors=Generated::generateCommonArmor();
                $commonwondrous=Generated::generateCommonWondrousItem();
                $commonscrolls=Generated::generateCommonSpellscroll();
                $uncommonweapons=Generated::generateUncommonWeapon();
                $uncommonarmors=Generated::generateUncommonArmor();
                $uncommonwondrous=Generated::generateUncommonWondrousItem();
                $uncommonscrolls=Generated::generateUncommonSpellscroll();
                $uncommonpotions=Generated::generateUncommonPotion();
                shuffle($commonpotions);
                shuffle($commonweapons);
                shuffle($commonarmors);
                shuffle($commonwondrous);
                shuffle($commonscrolls);
                shuffle($uncommonweapons);
                shuffle($uncommonarmors);
                shuffle($uncommonwondrous);
                shuffle($uncommonscrolls);
                shuffle($uncommonpotions);
                $items=[];
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$commonweapons[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$commonarmors[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$commonwondrous[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$commonscrolls[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$commonpotions[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$uncommonweapons[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$uncommonarmors[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$uncommonwondrous[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$uncommonscrolls[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$uncommonpotions[$i];
                }
            break;

            case 'Large':
                $uncommonpotions=Generated::generateUncommonPotion();
                $uncommonweapons=Generated::generateUncommonWeapon();
                $uncommonarmors=Generated::generateUncommonArmor();
                $uncommonwondrous=Generated::generateUncommonWondrousItem();
                $uncommonscrolls=Generated::generateUncommonSpellscroll();
                $rareweapons=Generated::generateRareWeapon();
                $rarearmors=Generated::generateRareArmor();
                $rarewondrous=Generated::generateRareWondrousItem();
                $rarescrolls=Generated::generateRareSpellscroll();
                $rarepotions=Generated::generateRarePotion();
                shuffle($uncommonpotions);
                shuffle($rarepotions);
                shuffle($rareweapons);
                shuffle($rarearmors);
                shuffle($rarewondrous);
                shuffle($rarescrolls);
                shuffle($uncommonweapons);
                shuffle($uncommonarmors);
                shuffle($uncommonwondrous);
                shuffle($uncommonscrolls);
                $items=[];
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$rareweapons[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$uncommonpotions[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$rarepotions[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$rarearmors[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$rarewondrous[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$rarescrolls[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$uncommonweapons[$i];
                }
                for($i=0;$i<rand(1,3);$i++){
                    $items[]=$uncommonarmors[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$uncommonwondrous[$i];
                }
                for($i=0;$i<rand(0,3);$i++){
                    $items[]=$uncommonscrolls[$i];
                }              
            break;
            
            case 'Grand':
                $uncommonpotions=Generated::generateUncommonPotion();
                $rarepotions=Generated::generateRarePotion();
                $uncommonweapons=Generated::generateUncommonWeapon();
                $uncommonarmors=Generated::generateUncommonArmor();
                $uncommonwondrous=Generated::generateUncommonWondrousItem();
                $uncommonscrolls=Generated::generateUncommonSpellscroll();
                $rareweapons=Generated::generateRareWeapon();
                $rarearmors=Generated::generateRareArmor();
                $rarewondrous=Generated::generateRareWondrousItem();
                $rarescrolls=Generated::generateRareSpellscroll();
                shuffle($uncommonpotions);
                shuffle($rarepotions);
                shuffle($rareweapons);
                shuffle($rarearmors);
                shuffle($rarewondrous);
                shuffle($rarescrolls);
                shuffle($uncommonweapons);
                shuffle($uncommonarmors);
                shuffle($uncommonwondrous);
                shuffle($uncommonscrolls);
                $items=[];
                for($i=0;$i<rand(1,4);$i++){
                    $items[]=$rareweapons[$i];
                }
                for($i=0;$i<rand(1,4);$i++){
                    $items[]=$rarearmors[$i];
                }
                for($i=0;$i<rand(1,4);$i++){
                    $items[]=$rarewondrous[$i];
                }
                for($i=0;$i<rand(1,4);$i++){
                    $items[]=$rarepotions[$i];
                }
                for($i=0;$i<rand(1,4);$i++){
                    $items[]=$rarescrolls[$i];
                }
                for($i=0;$i<rand(3,5);$i++){
                    $items[]=$uncommonweapons[$i];
                }
                for($i=0;$i<rand(3,5);$i++){
                    $items[]=$uncommonarmors[$i];
                }
                for($i=0;$i<rand(3,5);$i++){
                    $items[]=$uncommonpotions[$i];
                }
                for($i=0;$i<rand(3,5);$i++){
                    $items[]=$uncommonwondrous[$i];
                }
                for($i=0;$i<rand(3,5);$i++){
                    $items[]=$uncommonscrolls[$i];
                }   
                              
            break;
        }
    break;
    
    case 'Magic':
        switch($_GET['size']){
            case 'Small': 
                $commonpotions=Generated::generateCommonPotion();
                $commonwondrous=Generated::generateCommonWondrousItem();
                $commonscrolls=Generated::generateCommonSpellscroll();
                $uncommonwondrous=Generated::generateUncommonWondrousItem();
                $uncommonscrolls=Generated::generateUncommonSpellscroll();
                $uncommonpotions=Generated::generateUncommonPotion();
                shuffle($commonpotions);
                shuffle($commonwondrous);
                shuffle($commonscrolls);
                shuffle($uncommonwondrous);
                shuffle($uncommonscrolls);
                shuffle($uncommonpotions);
                $items=[];
                for ($i=0; $i<rand(0,3); $i++) { 
                    $items[]=$commonpotions[$i];
                }
                for ($i=0; $i<rand(2,4); $i++) { 
                    $items[]=$commonwondrous[$i];
                }
                for ($i=0; $i<rand(2,4); $i++) { 
                    $items[]=$commonscrolls[$i];
                }
                for ($i=0; $i<rand(0,2); $i++) { 
                    $items[]=$uncommonwondrous[$i];
                }
                for ($i=0; $i<rand(0,3); $i++) { 
                    $items[]=$uncommonscrolls[$i];
                }
                for ($i=0; $i<rand(0,3); $i++) { 
                    $items[]=$uncommonpotions[$i];
                }
              
            break;

            case 'Medium':
                $commonpotions=Generated::generateCommonPotion();
                $commonwondrous=Generated::generateCommonWondrousItem();
                $commonscrolls=Generated::generateCommonSpellscroll();
                $uncommonwondrous=Generated::generateUncommonWondrousItem();
                $uncommonscrolls=Generated::generateUncommonSpellscroll();
                $uncommonpotions=Generated::generateUncommonPotion();
                $rarepotions=Generated::generateRarePotion();
                $rarewondrous=Generated::generateRareWondrousItem();
                $rarescrolls=Generated::generateRareSpellscroll();
                shuffle($commonpotions);
                shuffle($commonwondrous);
                shuffle($commonscrolls);
                shuffle($uncommonwondrous);
                shuffle($uncommonscrolls);
                shuffle($uncommonpotions);
                shuffle($rarepotions);
                shuffle($rarescrolls);
                shuffle($rarewondrous);
                $items=[];
                for ($i=0; $i<rand(0,3); $i++) { 
                    $items[]=$commonpotions[$i];
                }
                for ($i=0; $i<rand(0,3); $i++) { 
                    $items[]=$commonwondrous[$i];
                }
                for ($i=0; $i<rand(0,3); $i++) { 
                    $items[]=$commonscrolls[$i];
                }
                for ($i=0; $i<rand(3,6); $i++) { 
                    $items[]=$uncommonwondrous[$i];
                }
                for ($i=0; $i<rand(3,6); $i++) { 
                    $items[]=$uncommonscrolls[$i];
                }
                for ($i=0; $i<rand(0,3); $i++) { 
                    $items[]=$uncommonpotions[$i];
                }
                for ($i=0; $i<rand(0,2); $i++) { 
                    $items[]=$rarepotions[$i];
                }
                for ($i=0; $i<rand(0,2); $i++) { 
                    $items[]=$rarescrolls[$i];
                }
                for ($i=0; $i<rand(0,2); $i++) { 
                    $items[]=$rarewondrous[$i];
                }                
               
            break;

            case 'Large':
                $rarepotions=Generated::generateRarePotion();
                $rarewondrous=Generated::generateRareWondrousItem();
                $rarescrolls=Generated::generateRareSpellscroll();
                $uncommonwondrous=Generated::generateUncommonWondrousItem();
                $uncommonscrolls=Generated::generateUncommonSpellscroll();
                $uncommonpotions=Generated::generateUncommonPotion();
                shuffle($rarepotions);
                shuffle($rarewondrous);
                shuffle($rarescrolls);
                shuffle($uncommonwondrous);
                shuffle($uncommonscrolls);
                shuffle($uncommonpotions);
                $items=[];
                for ($i=0; $i<rand(0,5); $i++) { 
                    $items[]=$rarepotions[$i];
                }
                for ($i=0; $i<rand(0,5); $i++) { 
                    $items[]=$rarewondrous[$i];
                }
                for ($i=0; $i<rand(0,5); $i++) { 
                    $items[]=$rarescrolls[$i];
                }
                for ($i=0; $i<rand(0,8); $i++) { 
                    $items[]=$uncommonwondrous[$i];
                }
                for ($i=0; $i<rand(0,8); $i++) { 
                    $items[]=$uncommonscrolls[$i];
                }
                for ($i=0; $i<rand(0,8); $i++) { 
                    $items[]=$uncommonpotions[$i];
                }
                
            break;
            
            case 'Grand':
                $rarepotions=Generated::generateRarePotion();
                $rarewondrous=Generated::generateRareWondrousItem();
                $rarescrolls=Generated::generateRareSpellscroll();
                $veryrarewondrous=Generated::generateVeryrareWondrousItem();
                $veryrarescrolls=Generated::generateVeryrareSpellscroll();
                $veryrarepotions=Generated::generateVeryrarePotion();
                shuffle($rarepotions);
                shuffle($rarewondrous);
                shuffle($rarescrolls);
                shuffle($veryrarewondrous);
                shuffle($veryrarescrolls);
                shuffle($veryrarepotions);
                $items=[];
                for ($i=0; $i<rand(0,5); $i++) { 
                    $items[]=$rarepotions[$i];
                }
                for ($i=0; $i<rand(0,5); $i++) { 
                    $items[]=$rarewondrous[$i];
                }
                for ($i=0; $i<rand(0,5); $i++) { 
                    $items[]=$rarescrolls[$i];
                }
                for ($i=0; $i<rand(0,2); $i++) { 
                    $items[]=$veryrarewondrous[$i];
                }
                for ($i=0; $i<rand(0,2); $i++) { 
                    $items[]=$veryrarescrolls[$i];
                }
                for ($i=0; $i<rand(0,2); $i++) { 
                    $items[]=$veryrarepotions[$i];
                }
               
            break;
        }
    break;

    case 'Alchemist':
        switch($_GET['size']){
            case 'Small': 
                $commonpotions=Generated::generateCommonPotion();
                $uncommonpotions=Generated::generateUncommonPotion();
                shuffle($commonpotions);
                shuffle($uncommonpotions);
                $items=[];
                for ($i=0; $i<rand(2,6) ; $i++) { 
                    $items[]=$commonpotions[$i];
                }
                for ($i=0; $i<rand(0,3) ; $i++) { 
                    $items[]=$uncommonpotions[$i];
                }
            break;

            case 'Medium':
                $commonpotions=Generated::generateCommonPotion();
                $uncommonpotions=Generated::generateUncommonPotion();
                $rarepotions=Generated::generateRarePotion();
                shuffle($rarepotions);
                shuffle($uncommonpotions);
                shuffle($commonpotions);
                $items=[];
                for($i=0;$i<rand(2,5);$i++){
                    $items[]=$commonpotions[$i];
                }
                for ($i=0; $i<rand(1,6);$i++) { 
                    $items[]=$uncommonpotions[$i];
                }
                for ($i=0; $i < rand(0,2) ; $i++) { 
                    $items[]=$rarepotions[$i];
                }
                
            break;

            case 'Large':
                $uncommonpotions=Generated::generateUncommonPotion();
                $rarepotions=Generated::generateRarePotion();
                shuffle($uncommonpotions);
                shuffle($rarepotions);
                $items=[];
                for ($i=0; $i <rand(4,9) ; $i++) { 
                    $items[]=$uncommonpotions[$i];
                }
                for ($i=0; $i <rand(2,6) ; $i++) { 
                    $items[]=$rarepotions[$i];
                }
                
            break;
            
            case 'Grand':
                $uncommonpotions=Generated::generateUncommonPotion();
                $rarepotions=Generated::generateRarePotion();
                $veryrarepotions=Generated::generateVeryrarePotion();
                shuffle($veryrarepotions);
                shuffle($uncommonpotions);
                shuffle($rarepotions);
                $items=[];
                for ($i=0; $i <rand(3,7) ; $i++) { 
                    $items[]=$uncommonpotions[$i];
                }
                for ($i=0; $i < rand(3,8); $i++) { 
                    $items[]=$rarepotions[$i];
                }
                for ($i=0; $i < rand(0,4) ; $i++) { 
                    $items[]=$veryrarepotions[$i];
                }
            break;
        }
    break;
};
      
        $this->view->render($this->viewDir . 'generated',[
            'shop'=>$shop,
            //'shops'=>$shops,
            'shopkeeper'=>$shopkeeper,
            'items'=>$items
           ]);
    }

   
}