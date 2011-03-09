Factory.define :city do |f|
  f.title "New York"
  f.association :state, :factory => :state
end