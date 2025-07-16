class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :winery

  validates :text, presence: true
  validates :rating, numericality: { in: 1..5 }, allow_nil: true
end
