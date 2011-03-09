Factory.define :business do |b|
  b.title "Perfect Co"
  b.locations {|locations| [locations.association(:location)]}
end