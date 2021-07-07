class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new()
  end

  def create
    Student.create(p)
    redirect_to students_path
  end

  private

  def p
    params.require(:student).permit(:first_name, :last_name)
  end
end
