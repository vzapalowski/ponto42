class CreatePeriods < ActiveRecord::Migration
  def self.up
    create_table :periods do |t|
      t.time :begin
      t.time :end
      t.integer :workday

      t.timestamps
    end
  end

  def self.down
    drop_table :periods
  end
end
