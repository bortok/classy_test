class CreateEtypes < ActiveRecord::Migration
  def self.up
    create_table :etypes do |t|
      t.string   :code,               :null => false
      t.string   :group,              :null => false
      t.integer  :order

      t.timestamps
    end
  end

  def self.down
    drop_table :etypes
  end
end
