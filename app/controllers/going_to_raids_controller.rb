class GoingToRaidsController < ApplicationController
  before_action :set_going_to_raid, only: [:show, :update, :edit, :destroy]

  # GET /going_to_raids
  # GET /going_to_raids.json
  def index
    @going_to_raids = GoingToRaid.where("created_at >= ?", Date.today)
  end

  # GET /going_to_raids/1
  # GET /going_to_raids/1.json
  def show
  end

  # GET /going_to_raids/new
  def new
    @going_to_raid = current_user.going_to_raids.build(plan_raid_id: params[:plan_raid_id])
  end

  # GET /going_to_raids/1/edit
  def edit
  end

  # POST /going_to_raids
  # POST /going_to_raids.json
  def create
    @going_to_raid = current_user.going_to_raids.build(going_to_raid_params)

    respond_to do |format|
      if @going_to_raid.save
        format.html { redirect_to @going_to_raid, notice: 'Going to raid was successfully created.' }
        format.json { render :show, status: :created, location: @going_to_raid }
      else
        format.html { render :new }
        format.json { render json: @going_to_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /going_to_raids/1
  # PATCH/PUT /going_to_raids/1.json
  def update
    respond_to do |format|
      if @going_to_raid.update(going_to_raid_params)
        format.html { redirect_to @going_to_raid, notice: 'Going to raid was successfully updated.' }
        format.json { render :show, status: :ok, location: @going_to_raid }
      else
        format.html { render :edit }
        format.json { render json: @going_to_raid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /going_to_raids/1
  # DELETE /going_to_raids/1.json
  def destroy
    @going_to_raid.destroy
    respond_to do |format|
      format.html { redirect_to going_to_raids_url, notice: 'Going to raid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_going_to_raid
      @going_to_raid = GoingToRaid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def going_to_raid_params
      params.require(:going_to_raid).permit(:user_id, :plan_raid_id)
    end
end
