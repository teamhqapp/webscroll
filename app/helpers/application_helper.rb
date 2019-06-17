module ApplicationHelper

  def blog_name
    blog = Blog.first
    if blog == nil || blog.name.blank?
      "WebScroll"
    else
      blog.name
    end
  end
end
