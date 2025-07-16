class CommentsController < ApplicationController
 before_action :authenticate_user!
  before_action :set_winery
  before_action :set_comment, only: [:edit, :update, :destroy]
  before_action :authorize_user!, only: [:edit, :update, :destroy]


  def create
    @comment = @winery.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @winery, notice: "コメントを投稿しました。"
    else
      redirect_to @winery, alert: "コメントの投稿に失敗しました。"
    end
  end

  def edit
    
  end

  def update
    if @comment.update(comment_params)
      redirect_to @winery, notice: "コメントを更新しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = @winery.comments.find(params[:id])
    if @comment.user == current_user
      @comment.destroy
      redirect_to @winery, notice: "コメントを削除しました。"
    else
      redirect_to @winery, alert: "削除の権限がありません。"
    end
  end

  private

  def set_winery
    @winery = Winery.find(params[:winery_id])
  end

  def set_comment
    @comment = @winery.comments.find(params[:id])
  end

  def authorize_user!
    unless @comment.user == current_user
      redirect_to @winery, alert: "編集・削除の権限がありません。"
    end
  end

  def comment_params
    params.require(:comment).permit(:text, :rating)
  end
end
