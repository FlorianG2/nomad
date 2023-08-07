class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :budget
  belongs_to :currency
  belongs_to :country


  validates :name, :starting_date, :user_id, presence: true
end
