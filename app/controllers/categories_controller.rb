class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]  
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @categories = Category.all
    @feature_article = Article.highest_vote.first
  end

  def show
    @category_articles = @category.articles.ordered_by_most_recent
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_category
      @category = Category.find_by(id: params[:id])
    end

    def category_params
      params.fetch(:category, {})
    end
end
