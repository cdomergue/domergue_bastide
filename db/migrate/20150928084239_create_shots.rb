class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.string :name
      t.text :description
      t.integer :note

      t.timestamps
    end
  end
end
