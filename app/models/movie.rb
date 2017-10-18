class Movie < ApplicationRecord
  has_many :comments
  has_many :likes

  def liked_by?(user)
    return false if user.nil?
    self.likes.where(user_id: user.id).present?
  end
end
