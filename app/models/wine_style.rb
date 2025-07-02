class WineStyle < ApplicationRecord
has_many :wine_style_wineries
has_many :wineries, through: :wine_style_wineries  
end
