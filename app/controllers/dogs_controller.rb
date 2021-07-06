class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show
        @dog = Dog.find_by(id: params[:id])
    end

    def most_employees
        @most_employees = Dog.sort_by_employee_count
    end

end
