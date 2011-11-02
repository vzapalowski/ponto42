class ChangeWorkdayTypeFromPeriods < ActiveRecord::Migration
  def self.up
    remove_column :Periods , :workday
    add_column :Periods , :workday_id , :integer
  end

  def self.down
    add_column :Periods , :workday , :integer
    remove_column :Periods , :workday_id
  end

end
