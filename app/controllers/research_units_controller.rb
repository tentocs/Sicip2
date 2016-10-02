class ResearchUnitsController < ApplicationController
  before_action :set_research_unit, only: [:show, :edit, :update, :destroy]

  # GET /research_units
  # GET /research_units.json
  def index
    @research_units = ResearchUnit.all
  end

  # GET /research_units/1
  # GET /research_units/1.json
  def show
  end

  # GET /research_units/new
  def new
    @research_unit = ResearchUnit.new
  end

  # GET /research_units/1/edit
  def edit
  end

  # POST /research_units
  # POST /research_units.json
  def create
    @research_unit = ResearchUnit.new(research_unit_params)

    respond_to do |format|
      if @research_unit.save
        format.html { redirect_to @research_unit, notice: 'La Unidad de Investigación ha sido creada exitosamente.' }
        format.json { render :show, status: :created, location: @research_unit }
      else
        format.html { render :new }
        format.json { render json: @research_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /research_units/1
  # PATCH/PUT /research_units/1.json
  def update
    respond_to do |format|
      if @research_unit.update(research_unit_params)
        format.html { redirect_to @research_unit, notice: 'La Unidad de Investigación ha sido actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @research_unit }
      else
        format.html { render :edit }
        format.json { render json: @research_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /research_units/1
  # DELETE /research_units/1.json
  def destroy
    @research_unit.destroy
    respond_to do |format|
      format.html { redirect_to research_units_url, notice: 'La Unidad de Investigación ha sido eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_research_unit
      @research_unit = ResearchUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def research_unit_params
      params.require(:research_unit).permit(:description)
    end
end
