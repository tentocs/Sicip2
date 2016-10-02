class InvestigationProjectsController < ApplicationController
  before_action :set_investigation_project, only: [:show, :edit, :update, :destroy]

  # GET /investigation_projects
  # GET /investigation_projects.json
  def index
    @investigation_projects = InvestigationProject.all
  end

  # GET /investigation_projects/1
  # GET /investigation_projects/1.json
  def show
  end

  # GET /investigation_projects/new
  def new
    @investigation_project = InvestigationProject.new
  end

  # GET /investigation_projects/1/edit
  def edit
  end

  # POST /investigation_projects
  # POST /investigation_projects.json
  def create
    @investigation_project = InvestigationProject.new(investigation_project_params)

    respond_to do |format|
      if @investigation_project.save
        format.html { redirect_to @investigation_project, notice: 'Investigation project was successfully created.' }
        format.json { render :show, status: :created, location: @investigation_project }
      else
        format.html { render :new }
        format.json { render json: @investigation_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investigation_projects/1
  # PATCH/PUT /investigation_projects/1.json
  def update
    respond_to do |format|
      if @investigation_project.update(investigation_project_params)
        format.html { redirect_to @investigation_project, notice: 'Investigation project was successfully updated.' }
        format.json { render :show, status: :ok, location: @investigation_project }
      else
        format.html { render :edit }
        format.json { render json: @investigation_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigation_projects/1
  # DELETE /investigation_projects/1.json
  def destroy
    @investigation_project.destroy
    respond_to do |format|
      format.html { redirect_to investigation_projects_url, notice: 'Investigation project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investigation_project
      @investigation_project = InvestigationProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investigation_project_params
      params.require(:investigation_project).permit(:investigator_id, :project_id, :investigator_type)
    end
end
