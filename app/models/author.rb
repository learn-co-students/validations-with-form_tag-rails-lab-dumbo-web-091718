class Author < ActiveRecord::Base
  validates :name, :phone_number, presence: true
  validates :email, uniqueness: true
  validates :phone_number, length: {is: 10}



  # 1. Add validations to `Author` such that...
  #   1. `name` is not blank
  #   1. `email` is unique
  #   1. `phone_number` is exactly 10 digits long
end
