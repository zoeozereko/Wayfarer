class Location < ActiveRecord::Base
  has_many :games

  def self.random
    order("RANDOM()").first
  end

end
