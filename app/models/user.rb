class User < ApplicationRecord

  has_many :posts, dependent: :destroy
  has_many :likes
  has_many :comments
  has_many :blacklisted_tokens, dependent: :destroy
  has_many :refresh_tokens, dependent: :destroy
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :name, presence: true, length: {maximum: 50}
  
  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      nil
    end
  end
end
 