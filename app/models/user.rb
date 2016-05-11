class User < ActiveRecord::Base
  has_many :posts,  dependent: :destroy
  has_many :categories,  dependent: :destroy
  has_many :comments,  dependent: :destroy
  has_secure_password
  validates :first_name,
            presence: true
  validates :last_name,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
                with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
            }
  def to_s
    "#{first_name} #{last_name}"
  end
end