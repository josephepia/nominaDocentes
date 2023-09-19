class ContractedTeachingCategoriesController < ApplicationController
  before_action :set_contracted_teaching_category, only: %i[ show edit update destroy ]

  # GET /contracted_teaching_categories or /contracted_teaching_categories.json
  def index
    @contracted_teaching_categories = ContractedTeachingCategory.all
  end

  # GET /contracted_teaching_categories/1 or /contracted_teaching_categories/1.json
  def show
  end

  # GET /contracted_teaching_categories/new
  def new
    @contracted_teaching_category = ContractedTeachingCategory.new
  end

  # GET /contracted_teaching_categories/1/edit
  def edit
  end

  # POST /contracted_teaching_categories or /contracted_teaching_categories.json
  def create
    @contracted_teaching_category = ContractedTeachingCategory.new(contracted_teaching_category_params)

    respond_to do |format|
      if @contracted_teaching_category.save
        format.html { redirect_to contracted_teaching_category_url(@contracted_teaching_category), notice: "Contracted teaching category was successfully created." }
        format.json { render :show, status: :created, location: @contracted_teaching_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @contracted_teaching_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contracted_teaching_categories/1 or /contracted_teaching_categories/1.json
  def update
    respond_to do |format|
      if @contracted_teaching_category.update(contracted_teaching_category_params)
        format.html { redirect_to contracted_teaching_category_url(@contracted_teaching_category), notice: "Contracted teaching category was successfully updated." }
        format.json { render :show, status: :ok, location: @contracted_teaching_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @contracted_teaching_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contracted_teaching_categories/1 or /contracted_teaching_categories/1.json
  def destroy
    @contracted_teaching_category.destroy

    respond_to do |format|
      format.html { redirect_to contracted_teaching_categories_url, notice: "Contracted teaching category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contracted_teaching_category
      @contracted_teaching_category = ContractedTeachingCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contracted_teaching_category_params
      params.require(:contracted_teaching_category).permit(:descripcion, :salario, :tiempoCompleto, :medioTiempo)
    end
end
