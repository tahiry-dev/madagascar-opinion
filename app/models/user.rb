class User < ApplicationRecord
  has_one_attached :photo
  has_one_attached :coverimage

  has_many :active_relationships, class_name: 'Following', foreign_key: 'follower_id', dependent: :destroy
  has_many :passive_relationships, class_name: 'Following', foreign_key: 'followed_id', dependent: :destroy

  has_many :followings, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  has_many :opinions, foreign_key: 'author_id', dependent: :destroy

  validates :username, presence: true
  validates :fullname, presence: true

  default_scope -> { order(created_at: :desc) }

  def follow(other_user)
    followings << other_user
  end

  def unfollow(other_user)
    followings.delete(other_user)
  end

  def following?(other_user)
    followings.include?(other_user)
  end
end
