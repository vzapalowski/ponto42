class Workday < ActiveRecord::Base

  belongs_to :user
  has_many :periods
  accepts_nested_attributes_for :periods , :allow_destroy => true

  def worked_hours
    sum = Date.today.midnight
    self.periods.each do |period|
      sum += period.end - period.begin
    end
    return sum
  end
end
