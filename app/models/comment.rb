class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :user
  validates :comment,
            presence: true
  validates :user,
            presence: true
  validates :post,
            presence: true
end
