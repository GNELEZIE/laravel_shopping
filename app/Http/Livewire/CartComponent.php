<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Cart;

class CartComponent extends Component
{
    public function increaseQauntity($rowId){
      
        $product = Cart::get($rowId);
        $qty = $product->qty + 1;
        Cart::update($rowId,$qty);
        session()->flash('success_message',' Produit ajouté avec success !!!');
    }

    public function decreaseQauntity($rowId){
      
        $product = Cart::get($rowId);
        $qty = $product->qty - 1;
        Cart::update($rowId,$qty);
        session()->flash('success_message',' Produit retiré avec success !!!');
    }


    public function destroy($rowId){
      
         Cart::remove($rowId);
         session()->flash('success_message',' Produit supprimé avec success !!!');
         
    }

    public function destroyAll(){
      
        Cart::destroy();
        session()->flash('success_message',' Tous les produits supprimés avec success !!!');
        
   }


    public function render()
    {
        return view('livewire.cart-component')->layout('layouts.base');
    }
}
