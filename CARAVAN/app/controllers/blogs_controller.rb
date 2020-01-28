class BlogsController < ApplicationController
  def index
    # 記事を全件取得
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
    # 新たにインスタンス変数を設定、そしてブログモデルからニューできるように代入
  end

  def create
    blog = Blog.new(blog_params)
    # パラメーターもらって投稿ってこと？ここがよくわからない
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
      params.require(:blog).permit(:title, :category, :body)
  end
end
