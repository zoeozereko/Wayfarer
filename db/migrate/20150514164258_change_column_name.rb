class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :games, :time, :elapsed_time
  end
end
