class PostsController < ApplicationController
	before_action :find_author, only:[:index, :new, :create]
	before_action :find_post, only:[:show, :edit, :update, :destroy]
  
  def index
  end

  def new
  	@post = Post.new
    @tags = Tag.all
  end

  def create
  	@post = @author.post.new(post_params)
  	if @post.save
  		flash[:success]="Post Saved Successfully"
      redirect_to posts_path
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
    @tags = Tag.all
  end

  def update
  	@post.update(post_params)
    if @post.save
  		redirect_to post_path(@post), notice: "Post Updated Successfully"
  	else
  		render :edit
  	end
  end

  def destroy
  	if @post.destroy
  		redirect_to author_posts_path(@posts.author)
  	else
  		render :show
  	end
  end

  private
	  def post_params
	  	params.require(:post).permit(:name, :content, :author)
	  end

	  def find_author
	  	@author = Author.find_by_id params[:author_id]
	  end

	  def find_post
	  	@post = Post.find_by_id params[:id]
	  end

end
