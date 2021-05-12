    class Fixture < ApplicationRecord
        attr_reader :teams, :home_rounds, :away_rounds
      
        def initialize(teams)
          @teams = teams
          @home_rounds = []
          @away_rounds = []
        end
      
        def rounds
          number_of_rounds.times do
            matches_home = []
            matches_away = []
      
            number_of_matches.times do |index|
              team_1 = teams[index]
              team_2 = teams[number_of_rounds - index]
      
              matches_home << [team_1, team_2]
              matches_away << [team_2, team_1]
            end
      
            home_rounds << matches_home
            away_rounds << matches_away
      
            rotate_teams!
          end
      
          return home_rounds + away_rounds
        end
      
        private
      
        def rotate_teams!
          last = teams.pop
          teams.insert(1, last)
        end
      
        def number_of_rounds
          @rounds ||= (teams.length - 2) + 1
        end
      
        def number_of_matches
          @matches ||= (teams.length / 2)
        end
      end
      
      def print_rounds(rounds)
        i = 1
        rounds.each do |round|
          puts "Round: #{i}"
          round.each do |match|
            puts "Match: #{match[0]} - #{match[1]}"
          end
          i += 1
        end
    end
