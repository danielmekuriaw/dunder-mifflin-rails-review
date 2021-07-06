class Dog < ApplicationRecord
    has_many :employee

    def self.sort_by_employee_count
        self.all.sort_by{
            |dog| dog.employee.count
        }
    end
    #def employee_size
    #    self.employee.all
    #end
end
