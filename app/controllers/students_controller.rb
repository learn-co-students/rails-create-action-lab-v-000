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
    student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(student)

    # raise Student.last.inspect
    # Note: student AND @student both work, but I THINK the former is the convention.
  end

end
