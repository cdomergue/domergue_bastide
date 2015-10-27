class Shot < ActiveRecord::Base
  has_many :notes
  has_many :shot_geeks, through: :notes
  accepts_nested_attributes_for :notes, :allow_destroy => true
  def moyenne
    notes.map{|note| note.value}.sum / notes.size unless notes.empty?
  end

end
