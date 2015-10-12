class RemoveNoteFromShot < ActiveRecord::Migration
  def change
    remove_column :shots, :note, :integer
  end
end
