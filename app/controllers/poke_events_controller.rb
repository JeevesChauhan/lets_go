class PokeEventsController < ApplicationController
  before_action :set_poke_event, only: [:show, :update, :edit, :destroy]
    before_action :authenticate_user!, except: [:show]

  # GET /poke_events
  # GET /poke_events.json
  def index
    @poke_events = PokeEvent.where("created_at >= ? and land_mark_id = ?", (30.minutes.ago), params[:land_mark_id])
  end

  # GET /poke_events/1
  # GET /poke_events/1.json
  def show
  end

  # GET /poke_events/new
  def new
    @poke_event = current_user.poke_events.build(land_mark_id: params[:land_mark_id])
  end

  # GET /poke_events/1/edit
  def edit
  end

  # POST /poke_events
  # POST /poke_events.json
  def create
    @poke_event = current_user.poke_events.build(poke_event_params)

    respond_to do |format|
      if @poke_event.save
        format.html { redirect_to @poke_event, notice: 'Poke event was successfully created.' }
        format.json { render :show, status: :created, location: @poke_event }
      else
        format.html { render :new }
        format.json { render json: @poke_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poke_events/1
  # PATCH/PUT /poke_events/1.json
  def update
    respond_to do |format|
      if @poke_event.update(poke_event_params)
        format.html { redirect_to @poke_event, notice: 'Poke event was successfully updated.' }
        format.json { render :show, status: :ok, location: @poke_event }
      else
        format.html { render :edit }
        format.json { render json: @poke_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poke_events/1
  # DELETE /poke_events/1.json
  def destroy
    @poke_event.destroy
    respond_to do |format|
      format.html { redirect_to poke_events_url, notice: 'Poke event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poke_event
      @poke_event = PokeEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poke_event_params
      params.require(:poke_event).permit(:user_id, :land_mark_id, :title, :description)
    end
end
