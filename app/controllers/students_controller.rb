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
    student = Student.new.tap do |s|
      s.first_name = params[:first_name]
      s.last_name = params[:last_name]
    end
    student.save

    redirect_to student_path(student)
  end

end
