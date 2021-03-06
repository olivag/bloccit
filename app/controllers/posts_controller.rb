class PostsController < ApplicationController
  
  # before_action :flash_attack, if: :devise_controller?
  # protected
  # def flash_attack
  #   devise_parameter_sanitizer.for(:sign_up) << :name
  # end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    @post.user = current_user
    authorize @post

    if @post.save
      flash[:notice] = "Post was saved."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post. Please try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    authorize @post
  end

  def update
    @post = Post.find(params[:id])
    authorize @post
    if @post.update_attributes(params.require(:post).permit(:title, :body))
      flash[:notice] = "Post was updated"
      redirect_to @post
    else
      flas[:error] = "There was an error saving the post.Please try again."
      render :edit
    end
  end
end










