class LandMarksController < ApplicationController
  before_action :set_land_mark, only: [:show, :edit, :update, :destroy]

  # GET /land_marks
  # GET /land_marks.json
  def index
    @land_marks = LandMark.all
  end

  # GET /land_marks/1
  # GET /land_marks/1.json
  def show
  end

  # GET /land_marks/new
  def new
    @land_mark = LandMark.new
  end

  # GET /land_marks/1/edit
  def edit
  end

  # POST /land_marks
  # POST /land_marks.json
  def create
    @land_mark = LandMark.new(land_mark_params)

    respond_to do |format|
      if @land_mark.save
        format.html { redirect_to @land_mark, notice: 'Land mark was successfully created.' }
        format.json { render :show, status: :created, location: @land_mark }
      else
        format.html { render :new }
        format.json { render json: @land_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /land_marks/1
  # PATCH/PUT /land_marks/1.json
  def update
    respond_to do |format|
      if @land_mark.update(land_mark_params)
        format.html { redirect_to @land_mark, notice: 'Land mark was successfully updated.' }
        format.json { render :show, status: :ok, location: @land_mark }
      else
        format.html { render :edit }
        format.json { render json: @land_mark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /land_marks/1
  # DELETE /land_marks/1.json
  def destroy
    @land_mark.destroy
    respond_to do |format|
      format.html { redirect_to land_marks_url, notice: 'Land mark was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land_mark
      @land_mark = LandMark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def land_mark_params
      params.require(:land_mark).permit(:name, :is_gym, :lat, :long)
    end
end
