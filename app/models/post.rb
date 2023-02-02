class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    #Could also use %w ^
    validates :content, length: { minimum: 100 }
end
