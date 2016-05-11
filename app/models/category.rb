class Category < ActiveRecord::Base
  belongs_to :user
  has_many :posts,  dependent: :destroy

  validates :name,
            presence: true
  validates :description,
            presence: true
  validates :user,
            presence: true
  def to_s
    name
  end
end
