class EmployeesController < ApplicationController
  before_action :set_employee, only:[:show,:edit,:update,:destroy]
  def show
  end

  def index
    @emp = Employee.all
  end

  def new
    @emp =Employee.new
  end

  def edit
  end

  def create
    @emp=Employee.new(set_params)
    @emp.save
    redirect_to employees_path
  end

  def update
    @emp.update(set_params)
    redirect_to employees_path
  end

  def destroy

    @emp.destroy

  end
  private
  def set_employee
    @emp=Employee.find(params[:id])
  end
  def set_params
    params.require(:employee).permit(:name,:address)
  end
end