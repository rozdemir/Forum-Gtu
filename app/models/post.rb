class Post < ActiveRecord::Base
  has_many :comments,  dependent: :destroy
  belongs_to :user
  belongs_to :category

  validates :title,
            presence: true
  validates :content,
            presence: true
  validates :user,
            presence: true
  validates :category,
            presence: true
  def to_s
    title
  end
end