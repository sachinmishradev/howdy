class ArticlesController < ApplicationController
  before_action :set_article , only: [:edit,:update,:show,:destroy]
  def index
    @article = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Article was successfully created"
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      flash[:success] = "Article was successfully  updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    flash[:danger] = "Article deleted successfully"
    redirect_to articles_path
  end



  private
    def set_article
        @article = Article.find(params[:id])
    end

    def  article_params
      params.require(:article).permit(:title,:description)
    end

end
