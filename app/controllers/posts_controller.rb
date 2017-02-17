class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post Saved!"
    else
      flash[:alert] = "Post not Saved!"
      redirect_to @post
    end
  end

  # def create
  #   @post = Post.new(post_params)
  #   if @post.save
  #     redirect_to @post
  #   else
  #     flash[:danger] = @post.errors.full_message.to_sentence
  #     render 'new'
  #   end
  # end

  def show
    @post = Post.find(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:title, :location, :skills, :description, :start_date, :end_date, :category_id, :agency_id)
    end
end
