class Award < ApplicationRecord
  has_many :awards_wineries
  has_many :wineries, through: :awards_wineries
end