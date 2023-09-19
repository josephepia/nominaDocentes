class PatentTypesController < ApplicationController
  before_action :set_patent_type, only: %i[ show edit update destroy ]

  # GET /patent_types or /patent_types.json
  def index
    @patent_types = PatentType.all
  end

  # GET /patent_types/1 or /patent_types/1.json
  def show
  end

  # GET /patent_types/new
  def new
    @patent_type = PatentType.new
  end

  # GET /patent_types/1/edit
  def edit
  end

  # POST /patent_types or /patent_types.json
  def create
    @patent_type = PatentType.new(patent_type_params)

    respond_to do |format|
      if @patent_type.save
        format.html { redirect_to patent_type_url(@patent_type), notice: "Patent type was successfully created." }
        format.json { render :show, status: :created, location: @patent_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patent_types/1 or /patent_types/1.json
  def update
    respond_to do |format|
      if @patent_type.update(patent_type_params)
        format.html { redirect_to patent_type_url(@patent_type), notice: "Patent type was successfully updated." }
        format.json { render :show, status: :ok, location: @patent_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patent_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patent_types/1 or /patent_types/1.json
  def destroy
    @patent_type.destroy

    respond_to do |format|
      format.html { redirect_to patent_types_url, notice: "Patent type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patent_type
      @patent_type = PatentType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patent_type_params
      params.require(:patent_type).permit(:descripcion, :puntaje)
    end
end
