class SpotRaidsController < ApplicationController
  before_action :set_spot_raid, only: [:show, :update, :edit, :destroy]

  # GET /spot_raids
  # GET /spot_raids.json
  def index

    # Searching the database for only raids spotted:
      # On the same day
      # Still have time remaining
      todayDate = Date.today
      todayTime = Time.new(2000, 1, 1, Time.now.strftime("%k"), Time.now.strftime("%M"), Time.now.strftime("%S"))
    @spot_raids = SpotRaid.where("created_at >= ? and remaining_time >= ?", todayDate, todayTime)
  end

  # GET /spot_raids/1
  # GET /spot_raids/1.json
  def show
  end

  # GET /spot_raids/new
  def new
    @spot_raid = current_user.spot_raids.build(land_mark_id: params[:land_mark_id])
  end

  # GET /spot_raids/1/edit
  def edit
  end

  # POST /spot_raids
  # POST /spot_raids.json
  def create
    @spot_raid = current_user.spot_raids.build(spot_raid_params)

    respond_to do |format|
      if @spot_raid.save
        format.html { redirect_to @spot_raid, notice: 'Spot raid was successfully created.' }
        format.json { render :show, status: :created, location: @spot_raid }
      else
        format.html { render :new }
        format.json { render json: @spot_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spot_raids/1
  # PATCH/PUT /spot_raids/1.json
  def update
    respond_to do |format|
      if @spot_raid.update(spot_raid_params)
        format.html { redirect_to @spot_raid, notice: 'Spot raid was successfully updated.' }
        format.json { render :show, status: :ok, location: @spot_raid }
      else
        format.html { render :edit }
        format.json { render json: @spot_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spot_raids/1
  # DELETE /spot_raids/1.json
  def destroy
    @spot_raid.destroy
    respond_to do |format|
      format.html { redirect_to spot_raids_url, notice: 'Spot raid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spot_raid
      @spot_raid = SpotRaid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spot_raid_params
      params.require(:spot_raid).permit(:user_id, :land_mark_id, :pokemon_id, :tier, :remaining_time)
    end
end
