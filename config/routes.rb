Rails.application.routes.draw do
  #get 'deivse/users'

  devise_for :users
  devise_for :admins
  get 'schools/index'
post 'schools/index'
get 'schools/edit_schools'
  #get 'schools/new'
post 'schools/new'
patch 'schools/update'
get 'schools/update'

  #get 'schools/show'
post 'schools/show'

 # get 'schools/edit'
post 'schools/edit'

#get 'schools/buttons'
post 'schools/buttons'

 get 'schools/destroy'
  
  #map.destroy, '/school/destroy/:id' :controller => :school, :action => :destroy

	resource:schools
  root 'schools#index'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
