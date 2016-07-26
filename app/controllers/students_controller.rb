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
    #When the form is submitted a new record is created in the database
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
  #  After the user fills out the form they are redirected to the show page
  #that renders the student record that they created

  # Route      student GET  /student/:id(.:format)  students#show
    redirect_to student_path(@student)
  end

end
