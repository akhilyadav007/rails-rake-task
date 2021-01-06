class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create 
  	@article = Article.new(params.require(:article).permit(:title, :description))
    @article.save
  	redirect_to root_path
  end
  
  def edit
  	@article = Article.find(params[:id])
  end
  
  def update
    @article = Article.find(params[:id])
    @article.update(params.require(:article).permit(:title, :description))
    redirect_to @article
  end 

  def destroy
    @article = Article.find(params[:id])
    @article = Article.destroy
    redirect_to root_path
  end
end
