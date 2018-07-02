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
  @student = Student.new(params[:first_name][:last_name])
  @student.save
end

end
