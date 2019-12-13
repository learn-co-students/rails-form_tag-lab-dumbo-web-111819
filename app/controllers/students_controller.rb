class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new 
  
  end 
  
  # def edit 

  def create 
    # byebug
    # THIS WORKED!!!!!!!
    # Had issue for a really long time with permitting params - and then was writing 
    # students plural instead of singular
    student_params = params.require(:student).permit(:first_name, :last_name)
    @student = Student.create(student_params) 
    render :show
  end 

end
