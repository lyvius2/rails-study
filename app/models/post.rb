class Post < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :liked_users, through: :likes, source: :user
    has_and_belongs_to_many :tags
    has_many :comments
    
    mount_uploader :image, PostImageUploader
end
