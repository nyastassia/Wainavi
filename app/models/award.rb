class Award < ApplicationRecord
  has_many :awards_wineries
  has_many :wineries, through: :awards_wineries
  has_many :award_wineries, dependent: :destroy
end