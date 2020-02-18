class PostsController < ApplicationController

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result.page(params[:page]).per(5)
  end

  def show
    @post = Post.find(params[:id])
    @response = Response.new
    @responses = @post.responses.page(params[:page]).per(20)
  end

  def new
    @post = Post.new
    @category = Category.new
    @post.post_category_relations.build
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

      def post_params
        params.require(:post).permit( :user_id,
                                      :title,
                                      :content,
                                      { :category_ids=> [] }
                                    )
      end
end
