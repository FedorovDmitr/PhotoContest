class Photo < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  has_many  :likes, dependent: :destroy
  has_many  :comments, as: :commentable, dependent: :destroy
end
