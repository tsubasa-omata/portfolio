class ResponsesController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def create
    @post = Post.find(params[:post_id])
    @response = @post.responses.build(response_params)
    @response.user = current_user
    if @post.save
      flash[:success] = "投稿完了"
      redirect_to @post
    else
      render @post
    end
  end

private 
    def response_params
      params.require(:response).permit(:content, :post_id, :user_id)
    end
end
