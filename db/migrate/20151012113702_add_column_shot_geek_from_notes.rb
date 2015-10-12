class AddColumnShotGeekFromNotes < ActiveRecord::Migration
  def change
    add_reference :notes, :shot_geek
  end
end
