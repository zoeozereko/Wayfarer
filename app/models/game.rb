class Game < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  def points
    if elapsed_time == 0
      score.to_i * 1
    else
      score.to_i * elapsed_time
    end
  end

end
