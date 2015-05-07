class AddLocationReferencesToGame < ActiveRecord::Migration
  def change
    add_reference :games, :location, index: true, foreign_key: true
  end
end
