class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    # binding.pry
    # unless params[:student].nil?
      @student = Student.new(first_name: params[:first_name], last_name: params[:last_name])
      @student.save
      redirect_to @student
    # else
    #   redirect_to new_student_path
    # end 
  end

end
