# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :coupon do |f|
  f.deal_id 1
  f.buyer_id 1
  f.code "MyString"
end