Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

	root 'home#index'
  resources :home do
  	collection do 
			get '/portfolios' => 'home#portfolios'
			get '/about' => 'home#about'
			get '/team' => 'home#team'
			get '/contact_us' => 'home#contact_us'
		end
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
