class SessionsController < ApplicationController

	def create
		@lawyer = User.where(first_name: params[:first_name], last_name: params[:last_name], name_of_firm: params[:name_of_firm],).first
			if @lawyer && @lawyer.password == params[:password]
				session[:lawyer_id] = @lawyer.id
					redirect_to '/courses/'
			else
				throw "No user"
			end
	end
	
	def destroy
		session[:user_id] = nil
			redirect_to '/'
	end

end
		
