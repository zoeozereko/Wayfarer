class Game < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  def points
    if elapsed_time == 0
      score * 1
    else
      score * elapsed_time
    end
  end

end
