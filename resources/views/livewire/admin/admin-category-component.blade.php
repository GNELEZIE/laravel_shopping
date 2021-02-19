<div class="container mt-5 pt-5">
   <div class="row mt-5 pt-5" style="margin-top: 29px;">
    <div class="col-md-12">
    <a  type="button" class="btn btn-success mt-5 mb-3" href="{{ route('admin.addcategory') }}" style="margin-bottom:5px !important">Ajouter une categorie</a>
     
      <tr>   <table class="table table-striped">
          @if(Session::has('message'))

			 <div class="alert alert-success mt-3" role="alert">{{ Session::get('message') }}</div>
			 </tr>					
		 @endif
            <thead>
            <tr>
            <th scope="col">#</th>
            <th scope="col">Nom de la category</th>
            <th scope="col">Slug</th>
            <th scope="col text-center">Action</th>
            </tr>
        </thead>
        <tbody>
         @foreach($categories as $category)
              
        <tr>
        <th scope="row">{{$category->id}}</th>
                <td>{{$category->name}}</td>
                <td>{{$category->slug}}</td>
                <td>
                <a href="" class="btn btn-primary d-inline"><i class="far fa-eye"></i></a> 
                <a href="{{ route('admin.editcategory',['category_slug'=>$category->slug])}}" class="btn btn-success d-inline" ><i class="fas fa-edit"></i></span></a> 
                <form action="" method="post" class="d-inline supprimer" style="display: inline !important">
                <a href="#" wire:click.prevent="deleteCategory({{ $category->id}})" type="button"  class="btn btn-danger d-inline"><i class="fas fa-trash"></i></a> 
                </form>               
                
                
                </td>
            </tr>

         @endforeach
        
        </tbody>
        </table> 
         {{$categories->onEachSide(5)->links()}}
    </div>
   </div>
</div>
