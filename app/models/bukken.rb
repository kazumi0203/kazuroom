class Bukken < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_many :comments, dependent: :destroy
    belongs_to :user
    
end
