# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :deal do |f|
  f.description "MyText"
  f.fine_print "MyText"
  f.value "9.99"
  f.discounted_value "9.99"
  f.starts_at "2011-02-10 09:14:38"
  f.ends_at "2011-02-10 09:14:38"
end