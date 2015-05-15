class Location < ActiveRecord::Base
  has_many :games, dependent: :destroy
  has_many :users, through: :games

  def self.random
    order("RANDOM()").first
  end

  def top_scorer
    users.order("score ASC").first
  end

  def top_game
    games.order("score ASC").first
  end


end
