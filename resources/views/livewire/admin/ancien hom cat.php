<main id="main" class="main-site left-sidebar">

    <div class="container">

        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="/" class="link">home</a></li>
                <li class="item-link"><span>Manager categories</span></li>
            </ul>
        </div>
        <div class="row">
            <div class="col-lg-9 col-sm-9 col-md-9 col-xs-12 col-md-offset-2">
                <div class=" main-content-area">
                    <div class="wrap-login-item ">

                        <div class="login-form form-item form-stl">
                        @if(Session::has('message'))

                        <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>

                        @endif



                            <form name="frm-login" wire:submit.prevent="updateHomeCategory">

                                <fieldset class="wrap-input" >
                                 <div class="row">
                                   <div class="form-group">
                                    <label for="cat">Choisir une categorie</label>
                                    <div class="col-md-12" wire:ignore>
                                      <select name="categories[]" id="cat" class="sel_categories form-control"  wire:model="selected_categories" multiple>
                                        @foreach($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                  @endforeach
                                      </select>
                                    </div>
                                   </div>
                                 </div>
                                </fieldset>

                                <fieldset class="wrap-input">
                                    <label for="text">No of product</label>
                                    <input type="text" id="text" placeholder="Entrer le slug" wire:model="numberofproducts">
                                </fieldset>





                                <input type="submit" class="btn btn-submit" value="Ajouter un produit">
                               <a href="{{ route('admin.products') }}" class="btn btn-submit"   name="login">Voir les produits</a>
                            </form>






                        </div>
                    </div>
                </div><!--end main products area-->
            </div>
        </div><!--end row-->

    </div><!--end container-->

</main>
@push('scripts')
  <script>
      $(document).ready(function(){
        $('.sel_categories').select2();
        $('.sel_categories').on('change',function(e){
            var data = $('sel_categories').select2("val");
            @this.set('selected_categories',data);

        });
      });
  </script>


@endpush
