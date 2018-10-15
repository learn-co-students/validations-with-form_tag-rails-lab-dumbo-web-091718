class Post < ActiveRecord::Base
  validates :title, :category, :content, presence: true
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validates :content, length: {minimum: 250}
end
