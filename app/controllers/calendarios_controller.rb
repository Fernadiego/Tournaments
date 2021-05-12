class CalendariosController < ApplicationController
  before_action :set_calendario, only: %i[ show edit update destroy ]

  # GET /calendarios or /calendarios.json
  def index
    @calendarios = Calendario.all
  end

  # GET /calendarios/1 or /calendarios/1.json
  def show
  end

  # GET /calendarios/new
  def new
    @calendario = Calendario.new
  end

  # GET /calendarios/1/edit
  def edit
  end

  # POST /calendarios or /calendarios.json
  def create
    @calendario = Calendario.new(calendario_params)

    respond_to do |format|
      if @calendario.save
        format.html { redirect_to @calendario, notice: "Calendario was successfully created." }
        format.json { render :show, status: :created, location: @calendario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @calendario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendarios/1 or /calendarios/1.json
  def update
    respond_to do |format|
      if @calendario.update(calendario_params)
        format.html { redirect_to @calendario, notice: "Calendario was successfully updated." }
        format.json { render :show, status: :ok, location: @calendario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @calendario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendarios/1 or /calendarios/1.json
  def destroy
    @calendario.destroy
    respond_to do |format|
      format.html { redirect_to calendarios_url, notice: "Calendario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendario
      @calendario = Calendario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calendario_params
      params.require(:calendario).permit(:id, :id_tournament, :id_match, :round, :local, :visitor, :l_goals, :v_goals)
    end
end
