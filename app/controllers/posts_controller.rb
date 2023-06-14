# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_post, only: %i[show edit update destroy like unlike]

  def index
    @posts = if params[:filter] == 'my_posts'
               current_user.posts.order(:title).page(params[:page]).per(6)
             else
               Post.order(:title).page(params[:page]).per(6)
             end
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.build
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      flash.now[:alert] = 'Error creating post.'
      render :new
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: 'Post was successfully destroyed.'
  end

  def like
    @post.liked_by current_user
    respond_to do |format|
      format.html { redirect_to @post }
      format.js   { render layout: false }
    end
  end

  def unlike
    @post.unliked_by current_user
    respond_to do |format|
      format.html { redirect_to @post }
      format.js   { render layout: false }
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :description, :image)
  end
end
