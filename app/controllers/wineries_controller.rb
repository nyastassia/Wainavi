class WineriesController < ApplicationController
  def index
  end

  private

  def winery_params
    params.require(:winery).permit(
      :title, :open_days_and_time, :wine_region_id,
      :tasting_id, :winery_type_id, :description,
      :address, :website, :phone, :map, :rating,
      grape_variety_ids: [], wine_style_ids: [],
      award_ids: [], experience_ids: [], dining_ids: [],
      images: [] # optional image uploads with ActiveStorage
    )
  end
end