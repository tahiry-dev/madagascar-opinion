class User < ApplicationRecord

    has_one_attached :photo
    has_many_attached :coverimages

    has_many :active_relationships, class_name: "Following", foreign_key:"followerid", dependent: :destroy
    has_many :passive_relationships, class_name: "Following", foreign_key:"followedid", dependent: :destroy

    has_many :following, through: :active_relationships, source: :followed
    has_many :followers, through: :passive_relationships, source: :follower

    has_many :opinions
end
