class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def show
		@course = Course.find(params[:id])
	end

	def create
		@course = Course.new(course_params)
		if @course.save!
			redirect_to "/"
		else
			render 'new'
		end
	end

	def edit
    	@course = Course.find(params[:id])
  	end

  	def update
    	@course = Course.find(params[:id])
    	@course.course_name = params[:lawyer][:course_name]
      		if @course.save
      			flash[:notice] = "Lawyer has been added."
      			redirect_to course_path
    		end
  end

  	def destroy
    	Course.find(params[:id]).destroy
    	redirect_to "/courses/"
  end


	private
    
    def course_params
      params.require(:course).permit(:course_name)
    end

end



