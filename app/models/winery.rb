class Winery < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  # ActiveHash
  belongs_to :wine_region
  belongs_to :winery_type
  belongs_to :tasting_type

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
  
  # Active Storage for multiple images
  has_many_attached :images
end