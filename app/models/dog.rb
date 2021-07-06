class Dog < ApplicationRecord
    has_many :employee

    

    #def self.most_employees
     #   self.order(:employee.all.size :desc)
    #end
end
