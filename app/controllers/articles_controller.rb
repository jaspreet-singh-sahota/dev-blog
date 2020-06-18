class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]
  before_action :search_params, only: [:search]

  def index
    @articles = Article.all
  end

  def show; end

  def new
    @article = Article.new
  end

  def search
    if @result
      respond_to do |format|
        format.js { render partial: 'articles/result' }
      end
    else
      respond_to do |format|
        flash.now[:alert] = 'Search field is blank'
        format.js { render partial: 'articles/result' }
      end
    end
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:notice] = 'Article successfully created'
      redirect_to @article
    else
      render :new
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end

  def search_params
    @result = Article.where('title like ?', "%#{params[:search]}%") if params[:search] != ''
  end
end
