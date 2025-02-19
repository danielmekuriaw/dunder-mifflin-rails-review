class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find_by(id: params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            flash[:errors] = @employee.errors.full_messages
            render :new
        end
    end

    def edit
        @employee = Employee.find_by(id: params[:id]) 
    end

    def update
        @employee = Employee.find_by(id: params[:id])
        @employee.update(employee_params)
        @employee.save

        if @employee.valid?
           redirect_to employee_path(@employee)
        else
           render :edit
        end
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end

end
