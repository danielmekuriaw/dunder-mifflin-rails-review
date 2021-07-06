class Employee < ApplicationRecord
    belongs_to :dog

    validates :title, presence: true, uniqueness: { message: "needs to be unique" }
    validates :alias, presence: true, uniqueness: { message: "needs to be unique" }
    
end
