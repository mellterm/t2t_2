class FixTranslations < ActiveRecord::Migration
  def self.up
    change_table :translations do |t|
      t.rename :sourceUnit_id, :source_unit_id
      t.rename :targetUnit_id, :target_unit_id
    end
  end

  def self.down
    change_table :translations do |t|
      t.rename :source_unit_id, :sourceUnit_id
      t.rename :target_unit_id, :targetUnit_id
  end
end
end
