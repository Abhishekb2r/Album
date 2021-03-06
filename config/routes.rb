Rails.application.routes.draw do
  resources :albums
  root'albums#index'
  devise_for :users
  

  resources :albums do
    member do
      delete :delete_image_attachment
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
