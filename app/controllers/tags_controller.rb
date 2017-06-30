class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Article.find(params[:id])
    @tag.destroy
    flash.notice = "Article '#{@tag.name}' Deleted :( "

    redirect_to action: "index"
  end
end
