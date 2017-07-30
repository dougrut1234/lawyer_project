Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout", sign_up: "sign-up"}

  devise_scope :user do
  get '/' => "courses#index", :as => :login
	end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get "/" => "courses#index", as: "home"
  post "/courses/:course_id/questions/new" => "questions#create"
  get "/reportadvices/:advice_id/advices/" => "reports#create", as: "report_advice"



  	root to: "home#index"
  	
	resources :lawyers, only: [:show, :index]

	resources :advices, only: [:index, :new, :show, :create]

	resources :reports 

	resources :courses , only: [:show, :index] do

		resources :questions

	end
	

end
