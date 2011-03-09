Factory.define :location do |l|
  l.phone "012345678"
  l.address "1234 Dummy st."
  l.zip_code "93421"
  l.association :city, :factory => :city
  l.association :state, :factory => :state
end