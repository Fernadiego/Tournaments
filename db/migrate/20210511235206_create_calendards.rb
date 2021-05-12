class CreateCalendards < ActiveRecord::Migration[6.1]
  def change
    create_table :calendards do |t|
      t.integer :id_tournament
      t.integer :id_match
      t.integer :round
      t.integer :local
      t.integer :visitor
      t.integer :l_goals
      t.integer :v_goals

      t.timestamps
    end
  end
end
