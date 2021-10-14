Rails.application.routes.draw do
resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'homes#top'
# get 'index' => 'book#index'
# get 'new' => 'book#new'
# get 'edit' => 'book#edit'
# post 'book' => 'book#new'
end
