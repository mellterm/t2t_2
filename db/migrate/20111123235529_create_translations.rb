class CreateTranslations < ActiveRecord::Migration
  def self.up
    create_table :translations do |t|
      t.integer :sourceUnit_id,   :null => false
      t.integer :targetUnit_id,   :null => false  
      t.integer :repo_id,         :null => false
      t.boolean :isPublic,    :default => true

      t.timestamps
    end
    add_index :translations, :sourceUnit_id
    add_index :translations, :targetUnit_id
  end

  def self.down
    remove_index :translations, :sourceUnit_id
    remove_index :translations, :targetUnit_id
    drop_table :translations
  end
end
