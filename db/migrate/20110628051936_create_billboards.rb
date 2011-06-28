class CreateBillboards < ActiveRecord::Migration
  def self.up
    create_table :billboards do |t|
      t.string   :title,              :null => false
      t.references :etype,   :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :billboards
  end
end
