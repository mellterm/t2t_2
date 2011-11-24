class CreateTranslationDomains < ActiveRecord::Migration
  def self.up
    create_table :translation_domains do |t|
      t.integer :translation_id
      t.integer :domain_id

      t.timestamps
    end
  end

  def self.down
    drop_table :translation_domains
  end
end
