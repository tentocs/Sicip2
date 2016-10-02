class InvestigationAreasController < ApplicationController
  before_action :set_investigation_area, only: [:show, :edit, :update, :destroy]

  # GET /investigation_areas
  # GET /investigation_areas.json
  def index
    @investigation_areas = InvestigationArea.all
  end

  # GET /investigation_areas/1
  # GET /investigation_areas/1.json
  def show
  end

  # GET /investigation_areas/new
  def new
    @investigation_area = InvestigationArea.new
  end

  # GET /investigation_areas/1/edit
  def edit
  end

  # POST /investigation_areas
  # POST /investigation_areas.json
  def create
    @investigation_area = InvestigationArea.new(investigation_area_params)

    respond_to do |format|
      if @investigation_area.save
        format.html { redirect_to @investigation_area, notice: 'El área de investigación ha sido creada exitosamente.' }
        format.json { render :show, status: :created, location: @investigation_area }
      else
        format.html { render :new }
        format.json { render json: @investigation_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigation_areas/1
  # PATCH/PUT /investigation_areas/1.json
  def update
    respond_to do |format|
      if @investigation_area.update(investigation_area_params)
        format.html { redirect_to @investigation_area, notice: 'El área de Investigación ha sido actualizada correctamente.' }
        format.json { render :show, status: :ok, location: @investigation_area }
      else
        format.html { render :edit }
        format.json { render json: @investigation_area.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /investigation_areas/1
  # DELETE /investigation_areas/1.json
  def destroy
    @investigation_area.destroy
    respond_to do |format|
      format.html { redirect_to investigation_areas_url, notice: 'El área de investigación ha sido eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigation_area
      @investigation_area = InvestigationArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investigation_area_params
      params.require(:investigation_area).permit(:description)
    end
end
