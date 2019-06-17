class ApplicationController < ActionController::Base

  def current_blog
    @blog = Blog.first
    @blog = Blog.new name: "WebScroll New Blog" if @blog.blank?
    return @blog
  end
  helper_method :current_blog
end
