class Location < ActiveRecord::Base
  has_many :games, dependent: :destroy
  
  def self.random
    order("RANDOM()").first
  end

end
