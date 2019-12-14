class StudentsController < ApplicationController
  
  def index
    @students = Student.all

    render :index
  end

  def show
    @student = Student.find(params[:id])

    render :show
  end

  def create
    student_params = params.require(:student).permit(:first_name, :last_name)
    Student.create(student_params)
    redirect_to students_path
  end
  
  def new
    @student = Student.new

    render :new
  end

end
