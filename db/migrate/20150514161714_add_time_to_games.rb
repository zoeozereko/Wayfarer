class AddTimeToGames < ActiveRecord::Migration
  def change
    add_column :games, :time, :integer
  end
end
