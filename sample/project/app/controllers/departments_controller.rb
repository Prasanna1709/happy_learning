class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  def index
    @departments = Department.all
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to departments_path
    else
      render :new
    end
  end

  def set_department
    @department = Department.find_by_id(params[:id])
  end

  def show
  end

  def edit
  end

  def update
    if @department.update(department_params)
      redirect_to departments_path
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private
    def department_params
      params.require(:department).permit(:dept_unique_id, :department_name)
    end
end
