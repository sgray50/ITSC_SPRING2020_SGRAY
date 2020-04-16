class Article < ApplicationRecord
    belongs_to :user
    
    has_many :comments, dependent: :destroy
    
    validates :title, presence: true, length: { minimum: 5 }
    validates :title, presence: true, length: { minimum: 10 }
end
