class Author < ActiveRecord::Base
  validates :name, presence: {message: "Name can not be blank"}
  validates :email, uniqueness: {message: "This email is already in use"}
  validates :phone_number, length: {minimum: 10, message: "Phone number is too short"}


end
