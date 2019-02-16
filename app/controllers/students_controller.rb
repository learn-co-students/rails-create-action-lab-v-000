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
    @students = Student.new
    @students.first_name = params[:first_name]
    @students.last_name = params[:last_name]
    @students.save
    redirect_to student_path(@students) 
  end

end
