class HomeController < ApplicationController
  layout "webscroll"

  def index
    @articles = Article.published.newest_first
  end
end
