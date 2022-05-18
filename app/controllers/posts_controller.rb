class PostsController < ApplicationController
  def index  # indexアクションを定義した
    @posts = Post.all  # 1番目のレコードを@postに代入
    if params[:content].length >0
      Post.create(content: params[:content])
    end
  end

  def new
  end

  # def create
  #   Post.create(content: params[:content])
  # end
end
