class Todo < ApplicationRecord
    # def expiration_date_cannot_be_in_the_past
    #     if Completion_Date.present? && todo.Completion_Date < Date.today
    #       errors.add(:Completion_Date, "can't be in the past")
    #     end
    #   end    
    
    validates :title, presence: true, length: {minimum: 3, maximum: 50}

validates :description, presence: true, length: {minimum: 10, maximum: 300}
validates :status, presence: true , inclusion: { in: %w(yet-to-start in-progress completed archieve)}
validates :group, presence: true 
validates :priority, presence: true ,numericality: { only_integer: true }
# validates :Completion_date, presence:true ,expiration_date_cannot_be_in_the_past:true =>"error"
# validate :expiration_date_cannot_be_in_the_past 
    

end 