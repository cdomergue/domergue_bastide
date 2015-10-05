class AddBrewerieFromShot < ActiveRecord::Migration
  def change
    add_reference :shots, :brewerie, index: true
  end
end
