class Post < ActiveRecord::Base
  CAT_OPTIONS = ["Fiction", "Non-Fiction"]
  validates :title, presence: true
  validates :content, length: {minimum: 100, message: "Content is too short"}
  validates :category, :inclusion => CAT_OPTIONS
end
