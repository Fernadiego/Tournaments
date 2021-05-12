class GenerateFixtureController < ApplicationController
  before_action :set_match, only: %i[ show edit update destroy ]

  def index
    #@matchs = ['River-Boca', 'Racing-Independiente']

    # @matchs = Fixture.all


    vector = [2,1,2,1,3,4,0,0]
    @fixture = Fixture.new(vector)

    respond_to do |format|
      if @fixture.save
        format.html { redirect_to @fixture, notice: "Fixture was successfully created." }
        format.json { render :show, status: :created, location: @fixture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
# Fixture.new(id:fetch_value(78), id_tournament: 1, id_match: 2, round: 1, local: 3, visitor: 4, l_goals: 0, v_goals:0).save

@matchs = 
Fixture.joins("INNER JOIN teams ON teams.id = fixtures.local")
        # Fixture.joins("INNER JOIN team ON team.id = fixture.local
        #   INNER JOIN team ON teams.id = fixture.visitor
        #   INNER JOIN match ON fixture.id_tournament = match.id_tournament AND fixture.id_match = match.id
        #    AND fixture.id_tournament = '1'")

    

    #Author.joins("INNER JOIN posts ON posts.author_id = authors.id AND posts.published = 't'"

    #@tournaments = Tournament.all
  end

    # GET /positions/1 or /positions/1.json
    def show

      # render js: "alert('Hello Rails');"

      #       #Llamado a rutina de generacion de ficture
      # #leer table equipos
      # teams = ['River', 'Boca', 'Racing', 'Independiente']
      # newFix = Fixture.new(teams)
      # newFix.print_rounds(newFix)
    end
    # POST 
  def create
    # @match = match_params
    #Necesito pasar los parametros idtorneo 
    



      # @fixture = Fixture.new(fixture_params)
  
      # respond_to do |format|
      #   if @fixture.save
      #     format.html { redirect_to @fixture, notice: "Fixture was successfully created." }
      #     format.json { render :show, status: :created, location: @fixture }
      #   else
      #     format.html { render :new, status: :unprocessable_entity }
      #     format.json { render json: @fixture.errors, status: :unprocessable_entity }
      #   end
      # end

    end
end
