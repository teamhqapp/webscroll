class Articles::PublishController <  AuthenticatedController
  def update
    @article = Article.find params[:id]
    @article.published_at = Time.now
    @article.save
    redirect_to article_path @article
  end
end
