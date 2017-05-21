class LawyersController < ApplicationController
	
	def index
		@lawyers = Lawyer.all
	end

	def new
		@lawyer = Lawyer.new
	end

	def show
		@lawyer = Lawyer.find(params[:id])
	end

	def create
		@lawyer = Lawyer.new(lawyer_params)
		if @lawyer.save!
			redirect_to "/lawyers/"
		else
			render 'new'
		end
	end

	def edit
    	@lawyer = Lawyer.find(params[:id])
  	end

  	def update
    	@lawyer = Lawyer.find(params[:id])
    	@lawyer.first_name = params[:lawyer][:first_name]
    	@lawyer.last_name = params[:lawyer][:last_name]
    	@lawyer.name_of_firm = params[:lawyer][:name_of_firm]
      		if @lawyer.save
      			flash[:notice] = "Lawyer has been saved."
      			redirect_to lawyer_path
    		end
  end

  	def destroy
    	Lawyer.find(params[:id]).destroy
    	redirect_to "/lawyers/"
  end


	private
    
    def lawyer_params
      params.require(:lawyer).permit(:first_name, :last_name, :name_of_firm, :avatar)
    end

end

