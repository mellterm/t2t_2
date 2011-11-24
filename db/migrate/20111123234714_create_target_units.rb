class CreateTargetUnits < ActiveRecord::Migration
  def self.up
    create_table :target_units do |t|
      t.string :content
      t.integer :language_id

      t.timestamps
    end
    add_index :target_units, :content
  end

  def self.down
    remove_index :target_units, :content
    drop_table :target_units
  end
end
