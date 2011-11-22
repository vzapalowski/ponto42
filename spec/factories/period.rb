Factory.define :period do |f|
  f.association :workday, :factory => :workday
  f.begin DateTime.now
  f.end DateTime.now + 3.hours
end
