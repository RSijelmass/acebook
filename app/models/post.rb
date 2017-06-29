class Post < ApplicationRecord
  has_many :comments
  has_many :flags
  belongs_to :user

end
