Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :bukkens do
resources :comments, only: [:create]
end
resources :sindans
root 'bukkens#index'
get 'maps/index'
resources :maps, only: [:index]
get 'diags/a' => 'diags#a'
get 'diags/b' => 'diags#b'
get 'diags/c' => 'diags#c'
get 'diags/d' => 'diags#d'
get 'diags/e' => 'diags#e'
get 'diags/f' => 'diags#f'
get 'diags/g' => 'diags#g'
get 'diags/h' => 'diags#h'
get 'diags/i' => 'diags#i'
get 'diags/j' => 'diags#j'
get 'diags/k' => 'diags#k'
get 'diags/l' => 'diags#l'
get 'diags/m' => 'diags#m'
get 'diags/n' => 'diags#n'
get 'diags/o' => 'diags#o'

patch 'bukkens/:id' => 'bukkens#update'
get 'bukkens/:id/edit' => 'bukkens#edit', as:'edit_tweet'
delete 'bukkens/:id' => 'bukkens#destroy'

end
