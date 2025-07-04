class WineriesController < ApplicationController
  # Index action: displays a list of wineries with optional filters applied
  
  def index
   # Start with all wineries
    @wineries = Winery.all

    # Load filter options for dropdowns (used in the view)
     @grape_varieties = GrapeVariety.all
     @wine_styles = WineStyle.all
     @awards = Award.all
     @experiences = Experience.all
     @dinings = Dining.all
     @regions = WineRegion.all
     @tastings = TastingType.all
     @winery_types = WineryType.all
    
    # Apply filters only if corresponding params are present
    # many-to-many filters
    @wineries = @wineries.joins(:grape_varieties).where(grape_varieties: { id: params[:grape_variety] }) if params[:grape_variety].present?
    @wineries = @wineries.joins(:wine_styles).where(wine_styles: { id: params[:wine_style] }) if params[:wine_style].present?
    @wineries = @wineries.joins(:awards).where(awards: { id: params[:award] }) if params[:award].present?
    @wineries = @wineries.joins(:experiences).where(experiences: { id: params[:experience] }) if params[:experience].present?
    @wineries = @wineries.joins(:dinings).where(dinings: { id: params[:dining] }) if params[:dining].present?

    # active_hash filters (simple fields)
    @wineries = @wineries.where(wine_region_id: params[:wine_region]) if params[:wine_region].present?
    @wineries = @wineries.where(tasting_type_id: params[:tasting_type]) if params[:tasting_type].present?
    @wineries = @wineries.where(winery_type_id: params[:winery_type]) if params[:winery_type].present?
    
    # Apply pagination *after* all filters
    @wineries = @wineries.page(params[:page]).per(10)
  end
 
  # Show action: displays the detailed page for a specific winery
  def show
    @winery = Winery.find(params[:id])
  end


  private

  # Strong parameters for winery creation/updating
  # Allows nested attributes (like arrays for grape_variety_ids)
  def winery_params
    params.require(:winery).permit(
      :title, :open_days_and_time, :wine_region_id,
      :tasting_type_id, :winery_type_id, :description,
      :address, :website, :phone, :map, :rating,
      grape_variety_ids: [], wine_style_ids: [],
      award_ids: [], experience_ids: [], dining_ids: [],
      images: [] # optional image uploads with ActiveStorage
    )
  end
end