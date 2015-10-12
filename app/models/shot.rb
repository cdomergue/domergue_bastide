class Shot < ActiveRecord::Base
  has_many :notes

  def moyenne
    notes.map{|note| note.value}.sum / notes.size unless notes.empty?
  end

end
