Rails.application.routes.draw do
 

   root 'welcome#index'
   resources :albums do
   	resources :photos do
   		collection do
   			get :serch_by_tag
   		end
   	end
   end
  

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
