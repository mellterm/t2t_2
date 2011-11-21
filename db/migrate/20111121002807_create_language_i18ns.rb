class CreateLanguageI18ns < ActiveRecord::Migration
  def self.up
    create_table :language_i18ns do |t|
      t.integer :language_id
      t.integer :reflanguage_id
      t.string :name
    end
  end

  def self.down
    drop_table :language_i18ns
  end
end
