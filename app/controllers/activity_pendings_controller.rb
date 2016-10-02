class ActivityPendingsController < ApplicationController
  before_action :set_activity_pending, only: [:show, :edit, :update, :destroy]

  # GET /activity_pendings
  # GET /activity_pendings.json
  def index
    @activity_pendings = ActivityPending.all
  end

  # GET /activity_pendings/1
  # GET /activity_pendings/1.json
  def show
  end

  # GET /activity_pendings/new
  def new
    @activity_pending = ActivityPending.new
  end

  # GET /activity_pendings/1/edit
  def edit
  end

  # POST /activity_pendings
  # POST /activity_pendings.json
  def create
    @activity_pending = ActivityPending.new(activity_pending_params)

    respond_to do |format|
      if @activity_pending.save
        format.html { redirect_to @activity_pending, notice: 'Activity pending was successfully created.' }
        format.json { render :show, status: :created, location: @activity_pending }
      else
        format.html { render :new }
        format.json { render json: @activity_pending.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_pendings/1
  # PATCH/PUT /activity_pendings/1.json
  def update
    respond_to do |format|
      if @activity_pending.update(activity_pending_params)
        format.html { redirect_to @activity_pending, notice: 'Activity pending was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_pending }
      else
        format.html { render :edit }
        format.json { render json: @activity_pending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_pendings/1
  # DELETE /activity_pendings/1.json
  def destroy
    @activity_pending.destroy
    respond_to do |format|
      format.html { redirect_to activity_pendings_url, notice: 'Activity pending was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_pending
      @activity_pending = ActivityPending.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_pending_params
      params.require(:activity_pending).permit(:project_id, :report1, :report2, :report3, :final_report)
    end
end
