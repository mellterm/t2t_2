class CreateSourceUnits < ActiveRecord::Migration
  def self.up
    create_table :source_units do |t|
      t.string :content
      t.integer :language_id

      t.timestamps
    end
    add_index :source_units, :content
  end

  def self.down
    remove_index :source_units, :content
    drop_table :source_units
  end
end
