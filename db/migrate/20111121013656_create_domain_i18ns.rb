class CreateDomainI18ns < ActiveRecord::Migration
  def self.up
    create_table :domain_i18ns do |t|
      t.integer :domain_id
      t.integer :language_id
      t.string :name

    end
  end

  def self.down
    drop_table :domain_i18ns
  end
end
