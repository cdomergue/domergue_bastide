class Shot < ActiveRecord::Base

  def note= note
    if note.to_i < 0
      super 0
    elsif note.to_i > 10
      super 10
    else
      super note
    end

  end

end
