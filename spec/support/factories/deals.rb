# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :deal do |f|
  f.title "Your best deal"
  f.description "Perfect Deal"
  f.fine_print "Maybe not perfect, but still ok"
  f.value "9.99"
  f.discounted_value "6.33"
end