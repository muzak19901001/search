class Project < ApplicationRecord
  validates :first_name, presence: true, length:{ maximum:30}
  validates :last_name, presence: true, length:{ maximum:30}
  validates :age, presence: true, length:{ maximum:30}
end
