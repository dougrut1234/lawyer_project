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
		@t = Time.now.strftime("%D")
		if @advice.save!
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
    	@advice.advice = params[:advice][:advice]
    	@advice.education = params[:advice][:education]
    	@advice.firm = params[:advice][:firm]
      		if @advice.save
      			flash[:notice] = "Advice Added"
      			redirect_to "/advices/"
    		end
  	end

  	def destroy
    	Advice.find(params[:id]).destroy
    	redirect_to "/advices/"
  	end


	private
    
    def advice_params
      params.require(:advice).permit(:advice, :author, :education, :firm)
    end

end

