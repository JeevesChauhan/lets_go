class PlanRaidsController < ApplicationController
  before_action :set_plan_raid, only: [:show, :edit, :update, :destroy]

  # GET /plan_raids
  # GET /plan_raids.json
  def index
    # Searching the database for plan raids that:
      # Are on the same day
      # Hasn't passed the start time
    @plan_raids = PlanRaid.where("created_at >= ? and start_time >= ?", Date.today, Time.new(2000, 1, 1, Time.now.strftime("%k"), Time.now.strftime("%M"), Time.now.strftime("%S")))
  end

  # GET /plan_raids/1
  # GET /plan_raids/1.json
  def show
  end

  # GET /plan_raids/new
  def new
    @plan_raid = current_user.plan_raids.build(spot_raid_id: params[:spot_raid_id])
  end

  # GET /plan_raids/1/edit
  def edit
  end

  # POST /plan_raids
  # POST /plan_raids.json
  def create
    @plan_raid = current_user.plan_raids.build(plan_raid_params)

    respond_to do |format|
      if @plan_raid.save
        format.html { redirect_to :controller => 'going_to_raids', :action => 'new', :plan_raid_id => @plan_raid, notice: 'Created'}
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
