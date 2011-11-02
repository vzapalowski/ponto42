class Workday < ActiveRecord::Base

  belongs_to :user
  has_many :periods
  accepts_nested_attributes_for :periods , :allow_destroy => true
end
