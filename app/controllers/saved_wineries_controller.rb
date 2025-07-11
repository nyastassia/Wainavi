class SavedWineriesController < ApplicationController
  before_action :authenticate_user!

  def create
    winery = Winery.find(params[:winery_id])
    current_user.saved_wineries.find_or_create_by(winery: winery)
    redirect_back fallback_location: root_path, notice: "保存しました。"
  end

  def destroy
    saved = current_user.saved_wineries.find_by(winery_id: params[:winery_id])
    saved&.destroy
    redirect_back fallback_location: root_path, notice: "削除しました。"
  end
end
