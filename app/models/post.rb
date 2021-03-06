class Post < ApplicationRecord

  belongs_to :user
  has_many :photos, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :likes, -> {order(:created_at => :desc)}

  has_many :comments, dependent: :destroy
  has_many :comments, -> {order(:created_at => :desc)}

  def is_belongs_to? user
    Post.find_by(user_id: user.id, id: id)
  end

  def is_liked user
    Like.find_by(user_id: user.id, post_id: id)
  end
end