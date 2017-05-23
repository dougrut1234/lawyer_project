Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout", sign_up: "sign-up"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/home/" => "courses#index", as: "home"
  post "/courses/:course_id/questions/new" => "questions#create"


  	root to: "home#index"
  	
	resources :lawyers

	resources :advices

	resources :courses do

		resources :questions

	end
	

end
