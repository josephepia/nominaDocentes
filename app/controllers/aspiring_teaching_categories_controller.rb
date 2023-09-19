class AspiringTeachingCategoriesController < ApplicationController
  before_action :set_aspiring_teaching_category, only: %i[ show edit update destroy ]

  # GET /aspiring_teaching_categories or /aspiring_teaching_categories.json
  def index
    @aspiring_teaching_categories = AspiringTeachingCategory.all
  end

  # GET /aspiring_teaching_categories/1 or /aspiring_teaching_categories/1.json
  def show
  end

  # GET /aspiring_teaching_categories/new
  def new
    @aspiring_teaching_category = AspiringTeachingCategory.new
  end

  # GET /aspiring_teaching_categories/1/edit
  def edit
  end

  # POST /aspiring_teaching_categories or /aspiring_teaching_categories.json
  def create
    @aspiring_teaching_category = AspiringTeachingCategory.new(aspiring_teaching_category_params)

    respond_to do |format|
      if @aspiring_teaching_category.save
        format.html { redirect_to aspiring_teaching_category_url(@aspiring_teaching_category), notice: "Aspiring teaching category was successfully created." }
        format.json { render :show, status: :created, location: @aspiring_teaching_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aspiring_teaching_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aspiring_teaching_categories/1 or /aspiring_teaching_categories/1.json
  def update
    respond_to do |format|
      if @aspiring_teaching_category.update(aspiring_teaching_category_params)
        format.html { redirect_to aspiring_teaching_category_url(@aspiring_teaching_category), notice: "Aspiring teaching category was successfully updated." }
        format.json { render :show, status: :ok, location: @aspiring_teaching_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aspiring_teaching_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aspiring_teaching_categories/1 or /aspiring_teaching_categories/1.json
  def destroy
    @aspiring_teaching_category.destroy

    respond_to do |format|
      format.html { redirect_to aspiring_teaching_categories_url, notice: "Aspiring teaching category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aspiring_teaching_category
      @aspiring_teaching_category = AspiringTeachingCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aspiring_teaching_category_params
      params.require(:aspiring_teaching_category).permit(:descripcion, :puntaje)
    end
end
