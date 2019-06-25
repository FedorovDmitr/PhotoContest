class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many   :sub_comments, class_name: 'Comment', dependent: :destroy, as: :commentable
end
