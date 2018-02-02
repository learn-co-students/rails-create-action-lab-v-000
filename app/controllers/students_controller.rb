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
    # A new student can be created successfully either of the two ways below:

    # @student = Student.create({first_name: params[:first_name], last_name: params[:last_name]})  --- This is best.

    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

end
