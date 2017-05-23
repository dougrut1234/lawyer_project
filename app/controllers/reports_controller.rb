class ReportsController < ApplicationController
	def index
		@reports = Report.all
	end

	def show
		@report = Advice.find(params[:advice_id])
		@advices = Advice.all 
	end

	def new
		@report = Report.new
	end

	def create
		@report = Report.new
		@report.advice_id = params[:advice_id]

		#Don't need line 18 & 19 when you do private. 
		if @report.save
			flash[:notice] = "Advice Has Been Reported."
			redirect_to "/courses/"
		else
			render "new"
	end
end

private
    
    def report_params
      params.require(:report).permit(:advice_id)
    end

end