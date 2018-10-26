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
<<<<<<< HEAD
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
=======
    student = Student.new
    student.first_name = params[:first_name]
    student.last_name = params[:last_name]
    student.save
>>>>>>> b1f2bb12e73e3f9c3e0dc7cbb5c54014b099e7cd
  end

end
