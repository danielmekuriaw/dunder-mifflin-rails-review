class EmployeesController < ApplicationController
    def index
        byebug
        @employees = Employee.all
    end

    def show
        @employee = Employee.find_by(id: params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        employee = Employee.create(employee_params)
        employee.save

        redirect_to employee_path(employee)
    end

    def edit
        @employee = Employee.find_by(id: params[:id]) 
    end

    def update
        employee = Employee.find_by(id: params[:id])
        employee.update(employee_params)
        employee.save

        redirect_to employee_path(employee)
    end

    private

    def employee_params
        params.require(:employees).permit(:first_name, :last_name, :alias, :title, :office, :dog, :img_url)
    end

end
