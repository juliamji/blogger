class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  before_filter :require_login, only: [:destroy]

  def destroy
    @tag = Article.find(params[:id])
    @tag.destroy
    flash.notice = "Article '#{@tag.name}' Deleted :( "

    redirect_to action: "index"
  end
end
