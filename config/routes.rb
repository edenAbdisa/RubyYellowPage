Rails.application.routes.draw do
 
  get 'contact_orgs/index'
  get 'contact_orgs/search' => 'contact_orgs#search', :as => 'search_page'

  resource:contact_org
  get '/contact_org/all' ,to:'contact_orgs#all'
   patch 'contact_org/:id', to: 'contact_orgs#update'
  root 'contact_orgs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end