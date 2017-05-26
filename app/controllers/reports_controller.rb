class ReportsController < ApplicationController
	def index
		@reports = Report.all
	end

	def show
		@report = Advice.find(params[:advice_id])
	end

	def new
		@report = Report.new
	end

	def create
		@report = Report.new
		@report.text = Advice.find(params[:advice_id]).text
		@report.advice_id = params[:advice_id]

		#Don't need line 18 & 19 when you do private. 
		if @report.save!
			flash[:notice] = "Advice Has Been Reported."
			redirect_to "/advices/"
		else
			render "/courses/"
	end
end
end

# private
    
#     def reports_params
#       params.require(:report).permit(:advice_id, :text)
#     end

# end