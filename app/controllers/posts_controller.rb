class PostsController < ApplicationController
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params.require(:post).permit(:memo, :title, :start_day, :end_day, :all_day))
    if @post.save
      flash[:notice] = "スケジュールを登録しました"
      redirect_to posts_path
    else
      render "new"
    end    
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(params.require(:post).permit(:memo, :title, :start_day, :end_day, :all_day))
      flash[:notice] = "編集しました"
      redirect_to posts_path
    else
      render "edit"
    end
  end
    
    def destroy
      @post = Post.find(params[:id])
      @post.destroy
      flash[:notice] = "削除しました"
      redirect_to posts_path
    end
  
end
