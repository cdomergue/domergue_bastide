  class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :value
      t.references :shot, index: true

      t.timestamps
    end
  end
end
