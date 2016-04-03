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
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
    # redirect_to new_student_path(student: params[:student])
  end

  def valid_parameters?
    !params[:student][:first_name].empty? && !params[:student][:last_name].empty?
  end

end
