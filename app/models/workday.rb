class Workday < ActiveRecord::Base

  has_many :periods , :dependent => :destroy
  accepts_nested_attributes_for :periods , :allow_destroy => true
  belongs_to :user

end
