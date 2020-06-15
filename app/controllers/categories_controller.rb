class CategoriesController < ApplicationController
  before_action :set_categoriess, only: [:show, :edit, :update, :destroy]

  # GET /categoriesses
  # GET /categoriesses.json
  def index
    @categoriesses = Categoriess.all
  end

  # GET /categoriesses/1
  # GET /categoriesses/1.json
  def show
  end

  # GET /categoriesses/new
  def new
    @categoriess = Categoriess.new
  end

  # GET /categoriesses/1/edit
  def edit
  end

  # POST /categoriesses
  # POST /categoriesses.json
  def create
    @categoriess = Categoriess.new(categoriess_params)

    respond_to do |format|
      if @categoriess.save
        format.html { redirect_to @categoriess, notice: 'Categoriess was successfully created.' }
        format.json { render :show, status: :created, location: @categoriess }
      else
        format.html { render :new }
        format.json { render json: @categoriess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoriesses/1
  # PATCH/PUT /categoriesses/1.json
  def update
    respond_to do |format|
      if @categoriess.update(categoriess_params)
        format.html { redirect_to @categoriess, notice: 'Categoriess was successfully updated.' }
        format.json { render :show, status: :ok, location: @categoriess }
      else
        format.html { render :edit }
        format.json { render json: @categoriess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoriesses/1
  # DELETE /categoriesses/1.json
  def destroy
    @categoriess.destroy
    respond_to do |format|
      format.html { redirect_to categoriesses_url, notice: 'Categoriess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoriess
      @categoriess = Categoriess.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoriess_params
      params.fetch(:categoriess, {})
    end
end
