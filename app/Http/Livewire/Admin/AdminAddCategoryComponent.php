<?php

namespace App\Http\Livewire\Admin;
use Illuminate\Support\Str;
use App\Models\Category;
use Livewire\Component;


class AdminAddCategoryComponent extends Component
{
    public $name;
    public $slug;

    public function generateslug()
    {
      $this->slug = Str::slug($this->name);
    }

  public function storeCategory()
  {
      $category = new Category();
      $category->name = $this->name;
      $category->slug = $this->slug;
      $category->save();

      session()->flash('message','Categorie ajouté avec success !!!');

  }


    public function render()
    {
        return view('livewire.admin.admin-add-category-component')->layout('layouts.base');
    }
}
