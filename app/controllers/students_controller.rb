class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    redirect_to @student if  @student.save
  end

  def student_params
    params.permit(:first_name, :last_name)
  end

end
