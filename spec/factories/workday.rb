Factory.define :workday do |f|
  f.association :user, :factory => :user
  f.sequence(:day) {  |n| Date.today + (2*n).days }
end
