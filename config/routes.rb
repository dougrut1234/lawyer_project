Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "courses#index", as: "home"
  post "/courses/:course_id/questions/new" => "questions#create"

	resources :lawyers

	resources :courses do

		resources :questions

	end
	

end
