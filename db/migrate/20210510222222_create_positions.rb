class CreatePositions < ActiveRecord::Migration[6.1]
  def change
    create_table :positions do |t|
      t.integer :id_tournament
      t.integer :id_team
      t.integer :points
      t.integer :played
      t.integer :won
      t.integer :tied
      t.integer :lost
      t.integer :goals_converted
      t.integer :goals_received
      t.integer :goals_diference

      t.timestamps
    end
  end
end
