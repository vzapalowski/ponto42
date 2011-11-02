class CreateWorkdays < ActiveRecord::Migration
  def self.up
    create_table :workdays do |t|
      t.date :day
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :workdays
  end
end
