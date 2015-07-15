class AuthorsController < ApplicationController
  before_action :find_author, only: [:show, :edit, :update, :destroy]

  def index
  	@authors = Author.all
  end

  def new
  	@author = Author.new
  end

  def create
  	@author = Author.new(author_params)
  	if @author.save
  		flash[:success] = "Successfully Added Author"
  		redirect_to authors_path
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	if @author.update(author_params)
  		redirect_to author_path(@author), notice: "Successfully Updated Author"
  	else
  		render :edit
  	end
  end

  def destroy
  	if @author.destroy
  		redirect_to authors_path, alert: "Author Deleted"
  	else
  		render :show
  	end
  end

  private
  	def author_params
  		params.require(:author).permit(:name, :image)
  	end

  	def find_author
  		@author = Author.find_by_id params[:id]
  	end

end
