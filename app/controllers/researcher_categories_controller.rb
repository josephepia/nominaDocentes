class ResearcherCategoriesController < ApplicationController
  before_action :set_researcher_category, only: %i[ show edit update destroy ]

  # GET /researcher_categories or /researcher_categories.json
  def index
    @researcher_categories = ResearcherCategory.all
  end

  # GET /researcher_categories/1 or /researcher_categories/1.json
  def show
  end

  # GET /researcher_categories/new
  def new
    @researcher_category = ResearcherCategory.new
  end

  # GET /researcher_categories/1/edit
  def edit
  end

  # POST /researcher_categories or /researcher_categories.json
  def create
    @researcher_category = ResearcherCategory.new(researcher_category_params)

    respond_to do |format|
      if @researcher_category.save
        format.html { redirect_to researcher_category_url(@researcher_category), notice: "Researcher category was successfully created." }
        format.json { render :show, status: :created, location: @researcher_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @researcher_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /researcher_categories/1 or /researcher_categories/1.json
  def update
    respond_to do |format|
      if @researcher_category.update(researcher_category_params)
        format.html { redirect_to researcher_category_url(@researcher_category), notice: "Researcher category was successfully updated." }
        format.json { render :show, status: :ok, location: @researcher_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @researcher_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /researcher_categories/1 or /researcher_categories/1.json
  def destroy
    @researcher_category.destroy

    respond_to do |format|
      format.html { redirect_to researcher_categories_url, notice: "Researcher category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_researcher_category
      @researcher_category = ResearcherCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def researcher_category_params
      params.require(:researcher_category).permit(:descripcion, :puntaje)
    end
end
