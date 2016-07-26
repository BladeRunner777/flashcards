Rails.application.routes.draw do
  # get 'cards_controller/index'
  # get 'welcome/index'
  resources :cards

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch 'cards/:id', controller: 'cards', action: :update
  delete 'cards/:id', controller: 'cards', action: :delete

  root 'welcome#index'
end
