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
    s = Student.new
    s.first_name = params[:first_name]
    s.last_name = params[:last_name]
    s.save
    redirect_to student_path(s)
  end

end
