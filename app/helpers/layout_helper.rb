module LayoutHelper
  def title(title)
    content_for :page_title, title
  end
end
