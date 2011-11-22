Factory.define :user do |f|
  f.sequence(:email) {  |n| Forgery(:internet).unique_email_address(n) }
  f.password {  Forgery(:basic).password(:at_least => 6) }
  f.password_confirmation {  |u| u.password }
end
