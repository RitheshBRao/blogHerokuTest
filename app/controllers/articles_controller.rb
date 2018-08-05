class ArticlesController < ApplicationController
	def index
      @articles = Article.all
    end

	def new

	end

	def create
		#redirect_to new_article_path
	  @article = Article.new(article_params)
	 
	  @article.save
	  redirect_to @article
	end

	def show
      @article = Article.find(params[:id])
    end

	private
    def article_params
      params.require(:article).permit(:title, :text)
    end


end
