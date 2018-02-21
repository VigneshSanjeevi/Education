Rails.application.routes.draw do
  get 'schools/index'
post 'schools/index'

  get 'schools/new'
post 'schools/new'

  get 'schools/show'
post 'schools/show'

  get 'schools/edit'
post 'schools/edit'

get 'schools/buttons'
post 'schools/buttons'

  get 'schools/destroy'

	resource:schools
	root 'schools#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
