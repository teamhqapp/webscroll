class PostController < ApplicationController
  layout "webscroll"
  
  def show
    @article = Article.published.find_by_slug params[:slug]
  end
end
