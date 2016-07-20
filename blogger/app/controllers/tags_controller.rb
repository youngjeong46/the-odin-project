class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def index
  	@tags = Tag.all
  end

  def show
  	@tag = Tag.find(params[:id])
  end

  def destroy
  	@tag = Tag.find(params[:id])
  	@tag.destroy

    flash.notice = "Tag '#{@tag.name}' Deleted!"

  	redirect_to tags_path(@tag)
  end

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to add a new user."
      redirect_to root_path
    end
  end
end
