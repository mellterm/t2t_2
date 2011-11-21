class CreateRepos < ActiveRecord::Migration
  def self.up
    create_table :repos do |t|
      t.string :name
      t.integer :owner_id

      t.timestamps
    end
    add_index :repos, :owner_id
  end

  def self.down
    remove_index :repos, :owner_id
    drop_table :repos
  end
end
