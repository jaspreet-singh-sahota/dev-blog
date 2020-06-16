class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def search
    @result = User.find_by(name: params[:search])
    if @result
      respond_to do |format|
        format.js { render partial: 'articles/result'}
      end
    else
      respond_to do |format|
        flash.now[:alert] = 'Author or Article not found'
        format.js { render partial: 'articles/result' }
      end
    end
  end  

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      flash[:notice] = 'Article successfully created'
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end
  
end
