class StudentsController < ApplicationController
  before_action :set_student , only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_path
    else
      render :new
    end
  end


  def set_student
   @student = Student.find_by_id(params[:id])
  end

  def show
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to students_path
    else
      render :edit
    end
  end

  def destroy
    @student.destroy
    redirect_to students_path
  end

  private
    def student_params
      params.require(:student).permit(:name, :email, :roll_number, :dob, :contact)
    end
end
