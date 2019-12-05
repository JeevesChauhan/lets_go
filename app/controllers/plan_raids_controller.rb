class PlanRaidsController < ApplicationController
  before_action :set_plan_raid, only: [:show, :edit, :update, :destroy]

  # GET /plan_raids
  # GET /plan_raids.json
  def index
    @plan_raids = PlanRaid.all
  end

  # GET /plan_raids/1
  # GET /plan_raids/1.json
  def show
  end

  # GET /plan_raids/new
  def new
    @plan_raid = PlanRaid.new
  end

  # GET /plan_raids/1/edit
  def edit
  end

  # POST /plan_raids
  # POST /plan_raids.json
  def create
    @plan_raid = PlanRaid.new(plan_raid_params)

    respond_to do |format|
      if @plan_raid.save
        format.html { redirect_to @plan_raid, notice: 'Plan raid was successfully created.' }
        format.json { render :show, status: :created, location: @plan_raid }
      else
        format.html { render :new }
        format.json { render json: @plan_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plan_raids/1
  # PATCH/PUT /plan_raids/1.json
  def update
    respond_to do |format|
      if @plan_raid.update(plan_raid_params)
        format.html { redirect_to @plan_raid, notice: 'Plan raid was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_raid }
      else
        format.html { render :edit }
        format.json { render json: @plan_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_raids/1
  # DELETE /plan_raids/1.json
  def destroy
    @plan_raid.destroy
    respond_to do |format|
      format.html { redirect_to plan_raids_url, notice: 'Plan raid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_raid
      @plan_raid = PlanRaid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_raid_params
      params.require(:plan_raid).permit(:user_id, :spot_raid_id, :start_time)
    end
end
