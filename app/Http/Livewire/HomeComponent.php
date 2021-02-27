<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Product;
use App\Models\Category;
use App\Models\HomeCategory;
use Livewire\WithPagination;


class HomeComponent extends Component
{



    public function render()

    {
        $products = Product::all();
        $category = HomeCategory::find(1);
        $cats = explode(',',$category->sel_categories);
        $categories = Category::whereIn('id',$cats)->get();
        $no_of_products = $category->no_of_products;
        return view('livewire.home-component',['products'=>$products,'categories'=>$categories,'no_of_products'=>$no_of_products])->layout('layouts.base');
    }
}
