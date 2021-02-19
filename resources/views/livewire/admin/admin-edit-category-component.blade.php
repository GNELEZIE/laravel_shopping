<main id="main" class="main-site left-sidebar">

		<div class="container">

			<div class="wrap-breadcrumb">
				<ul>
					<li class="item-link"><a href="/" class="link">home</a></li>
					<li class="item-link"><span>login</span></li>
				</ul>
			</div>
			<div class="row">
				<div class="col-lg-6 col-sm-6 col-md-6 col-xs-12 col-md-offset-3">
					<div class=" main-content-area">
						<div class="wrap-login-item ">
						     						
							<div class="login-form form-item form-stl">
							@if(Session::has('message'))

							<div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
								
							@endif
								<form name="frm-login" wire:submit.prevent="updateCategory">
									<fieldset class="wrap-title">
										<h3 class="form-title">Modifier Une categorie</h3>										
									</fieldset>
									<fieldset class="wrap-input">
										<label for="frm-login-uname">Nom:</label>
										<input type="text" id="frm-login-uname"   placeholder="Entrer le nom de la catégory" wire:model="name" wire:keyup="generateslug">
									</fieldset>
									<fieldset class="wrap-input">
										<label for="frm-login-pass">Slug:</label>
										<input type="text" id="frm-login-pass"    placeholder="Entrer le slug" wire:model="slug">
									</fieldset>
								
									<input type="submit" class="btn btn-submit" value="Modifier" name="login">
								   <a href="{{ route('admin.categories') }}" class="btn btn-submit"   name="login">Voir les categories</a>
								</form>
							</div>												
						</div>
					</div><!--end main products area-->		
				</div>
			</div><!--end row-->

		</div><!--end container-->

	</main>