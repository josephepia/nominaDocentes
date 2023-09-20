class DegreeTypesController < ApplicationController
  before_action :set_degree_type, only: %i[ show edit update destroy ]

  # GET /degree_types or /degree_types.json
  def index
    @degree_types = DegreeType.all
  end

  # GET /degree_types/1 or /degree_types/1.json
  def show
  end

  # GET /degree_types/new
  def new
    @degree_type = DegreeType.new
  end

  # GET /degree_types/1/edit
  def edit
  end

  # POST /degree_types or /degree_types.json
  def create
    @degree_type = DegreeType.new(degree_type_params)

    respond_to do |format|
      if @degree_type.save
        format.html { redirect_to degree_type_url(@degree_type), notice: "Degree type was successfully created." }
        format.json { render :show, status: :created, location: @degree_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @degree_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /degree_types/1 or /degree_types/1.json
  def update
    respond_to do |format|
      if @degree_type.update(degree_type_params)
        format.html { redirect_to degree_type_url(@degree_type), notice: "Degree type was successfully updated." }
        format.json { render :show, status: :ok, location: @degree_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @degree_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /degree_types/1 or /degree_types/1.json
  def destroy
    @degree_type.destroy

    respond_to do |format|
      format.html { redirect_to degree_types_url, notice: "Degree type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_degree_type
      @degree_type = DegreeType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def degree_type_params
      params.require(:degree_type).permit(:descripcion, :puntaje, :nivel, :bono, :posgrado)
    end
end
