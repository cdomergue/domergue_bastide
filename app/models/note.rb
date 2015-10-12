class Note < ActiveRecord::Base
  belongs_to :shot
  belongs_to :shot_geek
end
