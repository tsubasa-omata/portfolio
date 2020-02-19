class StaticPagesController < ApplicationController

  def home
    @q = Post.ransack(params[:q])
    @posts = @q.result.page(params[:page]).per(5)
  end
end
