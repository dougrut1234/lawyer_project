Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout", sign_up: "sign-up"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/home/" => "courses#index", as: "home"
  post "/courses/:course_id/questions/new" => "questions#create"
  get "/reportadvices/:advice_id/advices/" => "reports#create", as: "report_advice"

  	root to: "home#index"
  	
	resources :lawyers

	resources :advices

	resources :reports

	resources :courses do

		resources :questions

	end
	

end
