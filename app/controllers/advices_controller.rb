class AdvicesController < ApplicationController

	def index
		@advices = Advice.all
		@t = Time.now.strftime("%D")
	end

	def new
		@advice = Advice.new
	end

	def show
		@advice = Advice.find(params[:id])
	end

	def create
		@advice = Advice.new(advice_params)
		if @advice.save
			flash[:notice] = "Thank you for your post. We hope your words will enlighten busy law students everywhere!"
			redirect_to "/advices/"
		else
			render 'new'
		end
	end

	def edit
    	@advice = Advice.find(params[:id])
  	end

  	def update
    	@advice = Advice.find(params[:id])
    	@advice.advice = params[:advice][:text]
    	@advice.education = params[:advice][:education]
    	@advice.firm = params[:advice][:firm]
      		if @advice.save!
      			flash[:notice] = "Advice Added"
      			redirect_to advices_path
    		end
  	end

  	def destroy
    	Advice.find(params[:id]).destroy
    	redirect_to "/advices/"
  	end


#   	load_and_authorize_resource

# load_and_authorize_resource :nested => :advice

	private
    
    def advice_params
      params.require(:advice).permit(:text, :author, :education, :firm)
    end

end

