Rails.application.routes.draw do
  devise_for :users
  root 'page#codes'


  get 'page/codes'
  get 'secrets', to: 'code#secrets'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
