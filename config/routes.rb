Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :patients do
    resources :vaccinations, only: :create
  end

  root 'patients#index'
end
