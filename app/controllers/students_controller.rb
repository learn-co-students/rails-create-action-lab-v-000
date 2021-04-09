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
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    redirect_to student_path(@student)
  end

  #"authenticity_token"=>"PboFGt5PZvjnB9hcE2U5pJ2ZblEbsM/iG9JPSIXJcfnBMuHPsLz707nkut+UWlm2svpuILlubwEwKgt8Roue5A==", 
  #"student"=>{"first_name"=>"testname", "last_name"=>"testlastname"}, 
  #"commit"=>"Submit Student", "controller"=>"students", "action"=>"create"}

end
