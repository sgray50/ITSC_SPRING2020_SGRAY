class Article < ApplicationRecord
    belongs_to :user
    
    has_many :comments, dependent: :destroy
    include ImageUploader[:image]
    validates :title, presence: true, length: { minimum: 5 }
    validates :title, presence: true, length: { minimum: 10 }
    validates :description, presence: true
end
