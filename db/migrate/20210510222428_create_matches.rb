class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.integer :id_tournament
      t.integer :date

      t.timestamps
    end
  end
end
