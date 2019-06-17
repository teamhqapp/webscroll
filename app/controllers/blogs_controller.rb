class BlogsController  < AuthenticatedController
  before_action :set_blog, only: [:edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to edit_blog_path, notice: 'Blog was successfully updated.' }

      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:name, :about_url, :terms_url, :copyright_text)
    end
end
