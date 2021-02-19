<div class="container mt-5 pt-5">
   <div class="row mt-5 pt-5" style="margin-top: 29px;">
    <div class="col-md-12">
    <a  type="button" class="btn btn-success mt-5 mb-3" href="" style="margin-bottom:5px !important">Ajouter une categorie</a>
     
      <tr>   <table class="table table-striped">
          @if(Session::has('message'))

			 <div class="alert alert-success mt-3" role="alert">{{ Session::get('message') }}</div>
			 </tr>					
		 @endif
            <thead>
            <tr>
            <th scope="col">#</th>
            <th scope="col">Imgae</th>
            <th scope="col">Nom</th>
            <th scope="col">Stock</th>
            <th scope="col">Prix</th>
            <th scope="col">Categories</th>
            <th scope="col">Date</th>
            <th scope="col text-center">Action</th>
            </tr>
        </thead>
        <tbody>
         @foreach($products as $product)
              
        <tr>
        <th scope="row">{{$product->id}}</th>
                <td><img src="{{ asset('assets/images/products')}}/{{$product->image}}" width="60px" /></td>
                <td>{{$product->name}}</td>
                 <td>{{$product->stock_status }}</td>
                  <td>{{$product->regular_price}}</td>
                   <td>{{$product->category->name}}</td>
                    <td>{{$product->created_at}}</td>

{{--  {{ route('admin.editproduct',['product_slug'=>$product->slug])}}  --}}
                <td>
                <a href="" class="btn btn-primary d-inline"><i class="far fa-eye"></i></a> 
                <a href="" class="btn btn-success d-inline" ><i class="fas fa-edit"></i></span></a> 
                <form action="" method="post" class="d-inline supprimer" style="display: inline !important">
                <a href="#" wire:click.prevent="d " type="button"  class="btn btn-danger d-inline"><i class="fas fa-trash"></i></a> 
                </form>               
                
                
                </td>
            </tr>

         @endforeach
        
        </tbody>
        </table> 
         {{$products->onEachSide(5)->links()}}
    </div>
   </div>
</div>
