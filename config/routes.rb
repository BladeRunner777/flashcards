Rails.application.routes.draw do
  get 'cards_controller/index'

  # get 'welcome/index'
  resources:cards_controller
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
end
