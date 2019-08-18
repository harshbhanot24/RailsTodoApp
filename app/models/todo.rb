class Todo < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3, maximum: 50}

validates :description, presence: true, length: {minimum: 10, maximum: 300}
validates :status, presence: true , inclusion: { in: %w(yet-to-start in-progress completed archieve)}
validates :group, presence: true , inclusion: { in: %w(home office others) }
validates :priority, presence: true ,numericality: { only_integer: true }
end
