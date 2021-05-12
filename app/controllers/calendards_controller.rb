class CalendardsController < ApplicationController
  before_action :set_calendard, only: %i[ show edit update destroy ]

  # GET /calendards or /calendards.json
  def index
    @calendards = Calendard.all
  end

  # GET /calendards/1 or /calendards/1.json
  def show
  end

  # GET /calendards/new
  def new
    @calendard = Calendard.new
  end

  # GET /calendards/1/edit
  def edit
  end

  # POST /calendards or /calendards.json
  def create
    @calendard = Calendard.new(calendard_params)

    respond_to do |format|
      if @calendard.save
        format.html { redirect_to @calendard, notice: "Calendard was successfully created." }
        format.json { render :show, status: :created, location: @calendard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calendard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendards/1 or /calendards/1.json
  def update
    respond_to do |format|
      if @calendard.update(calendard_params)
        format.html { redirect_to @calendard, notice: "Calendard was successfully updated." }
        format.json { render :show, status: :ok, location: @calendard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calendard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendards/1 or /calendards/1.json
  def destroy
    @calendard.destroy
    respond_to do |format|
      format.html { redirect_to calendards_url, notice: "Calendard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendard
      @calendard = Calendard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calendard_params
      params.require(:calendard).permit(:id_tournament, :id_match, :round, :local, :visitor, :l_goals, :v_goals)
    end
end
