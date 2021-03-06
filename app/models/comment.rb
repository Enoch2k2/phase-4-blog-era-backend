class Comment < ApplicationRecord
  # Associations
    belongs_to :user
    belongs_to :blog

  # Validations
    validates_presence_of :content
    validates :likes, numericality: { greater_than_or_equal_to: 0 }
    validates :dislikes, numericality: { greater_than_or_equal_to: 0 }
end
