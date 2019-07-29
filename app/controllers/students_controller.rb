# class StudentsController < ApplicationController
  
#   def index
#     @students = Student.all
#   end

#   def show
#     @student = Student.find_by(params[:id])
#   end

#   def new
#   end

#   def create 
#       @student = Student.create
#       @student.first_name = params [:first_name]
#       @student.last_name = params [:last_name] 
#       @student.save 
#       redirect_to student_path(@student) 
     
#   end

# end


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
    @student = Student.create(
      {
        first_name: params[:first_name],
        last_name: params[:last_name]
      }
    )
    redirect_to student_path(@student)
  end
end
