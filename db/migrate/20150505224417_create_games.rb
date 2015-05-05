class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.float :lat_guess
      t.float :lng_guess
      t.string :score

      t.timestamps null: false
    end
  end
end
