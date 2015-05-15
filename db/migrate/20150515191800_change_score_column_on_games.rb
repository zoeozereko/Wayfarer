class ChangeScoreColumnOnGames < ActiveRecord::Migration
  def change
    change_column(:games, :score, :float, using: "cast(score as float)")
  end
end
