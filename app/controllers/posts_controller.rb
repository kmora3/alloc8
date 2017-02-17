class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
     redirect_to @post
   else
     flash[:danger] = @post.errors.full_message.to_sentence
     render 'new'
    end
  end

  def show

  end

  private
    def post_params
      params.require(:post).permit(:title, :location, :skills, :description, :start_date, :end_date, :category_id, :agency_id)
    end
end
