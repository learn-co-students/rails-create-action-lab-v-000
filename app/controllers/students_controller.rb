class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new # implicitly renders the views/students/new.html.erb view file, which presents the form to create a new student
  end

  def create # we will NOT render a create.html.erb view file. Instead, we WILL redirect to the show page of the @student instance just created in this method.
    @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to student_path(@student)
  end

end
