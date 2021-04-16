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
    stu = Student.new
    stu.first_name = params[:first_name]
    stu.last_name = params[:last_name]
    stu.save
    redirect_to student_path(stu)
  end

end
