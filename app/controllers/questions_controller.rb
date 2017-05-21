class QuestionsController < ApplicationController

	def index
		@questions = Question.all
	end

	def new
		@question = Question.new
		@course = Course.find(params[:course_id])
		@question.course_id = params[:course_id]
	end

	def show
		@question = Question.find(params[:id])
	end

	def create
		@course = Course.find(params[:course_id])
		@question = Question.new(question_params)
		if @question.save!
			redirect_to course_questions_path
		else
			render '/courses/'
		end
	end

	def edit
    	@question = Question.find(params[:id])
  	end

  	def update
    	@question = Question.find(params[:id])
    	@question.question = params[:question][:question]
      		if @question.save
      			flash[:notice] = "Your question has been added"
      			redirect_to "courses/course_id"
    		end
  	end

  	def destroy
    	Question.find(params[:id]).destroy
    	redirect_to "/courses/course_id"
  	end


	private
    
    def question_params
      params.require(:question).permit(:question, :answer)
    end

end
