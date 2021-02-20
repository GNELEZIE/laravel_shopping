<main id="main" class="main-site left-sidebar">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">home</a></li>
					<li class="item-link"><span>Modifier un produit </span></li>
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



								<form name="frm-login" wire:submit.prevent="updateProduct">
									<fieldset class="wrap-title">
										<h3 class="form-title">Ajouter Un produit </h3>		


									</fieldset>
									<fieldset class="wrap-input">
										<label for="name">Nom:</label>
										<input type="text" id="name"   placeholder="Entrer le nom du produit" wire:model="name" wire:keyup="generateslug">
									</fieldset>


									<fieldset class="wrap-input">
										<label for="slug">Produit slug:</label>
										<input type="text" id="frm-login-pass" placeholder=" le slug produit" wire:model="slug">
									</fieldset>

                                   
                                    
                                    <fieldset class="wrap-input">
										<label for="short_description">Courte description :</label>
										<textarea  id="short_description" class="form-control" placeholder="Entrer le slug" wire:model="short_description"></textarea>
									</fieldset>
                                    
                                    <fieldset class="wrap-input">
										<label for="description">Description:</label>
										<textarea  id="description"  class="form-control" rows="5" placeholder="Entrer le slug" wire:model="description"></textarea>
									</fieldset>
                                    
                                    <fieldset class="wrap-input">
										<label for="regular_price"> Pegular price:</label>
										<input type="text" id="frm-login-pass"placeholder="Entrer le slug" wire:model="regular_price">
									</fieldset>
                                    
                                    <fieldset class="wrap-input">
										<label for="sale_price">Sale price:</label>
										<input type="text" id="sale_price" placeholder="Entrer le slug" wire:model="sale_price">
									</fieldset>


                                     <fieldset class="wrap-input">
										<label for="SKU">SKU:</label>
										<input type="text" id="SKU" placeholder="Entrer le slug" wire:model="SKU">
									</fieldset>

                                     <fieldset class="wrap-input" class="form-control">
										<label for="stock_status">Stock:</label>
										<select class="form-control">
                                         <option value="instock">Instock</option>
                                        <option value="outofstock">Outofstock</option>
                                        </select>
									</fieldset>

                                    <fieldset class="wrap-input" class="form-control">
										<label for="stock_status">Featured:</label>
										<select class="form-control"  id="stock_status" wire:model="featured">
                                         <option value="0">No</option>
                                        <option value="1">Yes</option>
                                        </select>
									</fieldset>



                                     <fieldset class="wrap-input">
										<label for="description">Quantity:</label>
										<input type="text" id="quantity" placeholder="Entrer la quantité" wire:model="quantity">
									</fieldset>

                                     <fieldset class="wrap-input">
										<label for="image">Image produit:</label>
										<input type="file" id="image" class="input-file form-control"   wire:model="newimage">
									    @if($newimage)
                                            <img src="{{ $newimage->temporaryUrl() }}" width="120px" />

                                        @else
                                            <img src="{{ asset('assets/images/products')}}/{{ $image }}" width="120px" />
                                        @endif
                                    
                                    </fieldset>

                                    <fieldset class="wrap-input">
										<label for="category_id">Categorie:</label>
										<select class="input-md form-control" id="category_id" wire:model="category_id">
                                         <option value="">Les categories</option>

                                        @foreach($categories as $category)
                                              <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach

                                      
                                        </select>
									</fieldset>

                                     

								
									<input type="submit" class="btn btn-submit" value="Modifier le produit">
								   <a href="{{ route('admin.products') }}" class="btn btn-submit"   name="login">Voir les produits</a>
								</form>






							</div>												
						</div>
					</div><!--end main products area-->		
				</div>
			</div><!--end row-->

		</div><!--end container-->

	</main>