# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :location do |f|
  f.phone "MyString"
  f.address "MyString"
  f.zip_code "MyString"
  f.city_id 1
  f.state_id 1
  f.business_id 1
end