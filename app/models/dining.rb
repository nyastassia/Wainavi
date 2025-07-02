class Dining < ApplicationRecord
  has_many :dining_wineries
  has_many :wineries, through: :dining_wineries
end
