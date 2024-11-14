class Article < ApplicationRecord
    has_many :comments, dependent: :destroy 

    belongs_to :category, optional: false 
    belongs_to :author, optional:false


    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validates :author, presence: true
end
