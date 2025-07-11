class Winery < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :title, presence: true

  # ActiveHash
  belongs_to_active_hash :wine_region
  belongs_to_active_hash :winery_type
  belongs_to_active_hash :tasting_type, class_name: "TastingType", foreign_key: "tasting_type_id"

  # Associations for grape varieties
  has_many :grape_variety_wineries
  has_many :grape_varieties, through: :grape_variety_wineries

  # Associations for wine styles
  has_many :wine_style_wineries
  has_many :wine_styles, through: :wine_style_wineries

  # Associations for awards
  has_many :award_wineries
  has_many :awards, through: :award_wineries

  # Associations for experiences
  has_many :experience_wineries
  has_many :experiences, through: :experience_wineries

  # Associations for dining
  has_many :dining_wineries
  has_many :dinings, through: :dining_wineries

  #Associations for saved wineries
  has_many :saved_wineries
  has_many :saved_by_users, through: :saved_wineries, source: :user

  # Active Storage for multiple images
  has_many_attached :images
end