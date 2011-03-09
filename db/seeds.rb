State.create(:title => 'Alaska', :code => 'AK')
State.create(:title => 'Alabama', :code => 'AL')
State.create(:title => 'Arkansas', :code => 'AR')
State.create(:title => 'Arizona', :code => 'AZ')
State.create(:title => 'California', :code => 'CA')
State.create(:title => 'Colorado', :code => 'CO')
State.create(:title => 'Connecticut', :code => 'CT')
State.create(:title => 'District of Columbia', :code => 'DC')
State.create(:title => 'Delaware', :code => 'DE')
State.create(:title => 'Florida', :code => 'FL')
State.create(:title => 'Georgia', :code => 'GA')
State.create(:title => 'Hawaii', :code => 'HI')
State.create(:title => 'Iowa', :code => 'IA')
State.create(:title => 'Idaho', :code => 'ID')
State.create(:title => 'Illinois', :code => 'IL')
State.create(:title => 'Indiana', :code => 'IN')
State.create(:title => 'Kansas', :code => 'KS')
State.create(:title => 'Kentucky', :code => 'KY')
State.create(:title => 'Louisiana', :code => 'LA')
State.create(:title => 'Massachusetts', :code => 'MA')
State.create(:title => 'Maryland', :code => 'MD')
State.create(:title => 'Maine', :code => 'ME')
State.create(:title => 'Michigan', :code => 'MI')
State.create(:title => 'Minnesota', :code => 'MN')
State.create(:title => 'Missouri', :code => 'MO')
State.create(:title => 'Mississippi', :code => 'MS')
State.create(:title => 'Montana', :code => 'MT')
State.create(:title => 'North Carolina', :code => 'NC')
State.create(:title => 'North Dakota', :code => 'ND')
State.create(:title => 'Nebraska', :code => 'NE')
State.create(:title => 'New Hampshire', :code => 'NH')
State.create(:title => 'New Jersey', :code => 'NJ')
State.create(:title => 'New Mexico', :code => 'NM')
State.create(:title => 'Nevada', :code => 'NV')
State.create(:title => 'New York', :code => 'NY')
State.create(:title => 'Ohio', :code => 'OH')
State.create(:title => 'Oklahoma', :code => 'OK')
State.create(:title => 'Oregon', :code => 'OR')
State.create(:title => 'Pennsylvania', :code => 'PA')
State.create(:title => 'Rhode Island', :code => 'RI')
State.create(:title => 'South Carolina', :code => 'SC')
State.create(:title => 'South Dakota', :code => 'SD')
State.create(:title => 'Tennessee', :code => 'TN')
State.create(:title => 'Texas', :code => 'TX')
State.create(:title => 'Utah', :code => 'UT')
State.create(:title => 'Virginia', :code => 'VA')
State.create(:title => 'Vermont', :code => 'VT')
State.create(:title => 'Washington', :code => 'WA')
State.create(:title => 'Wisconsin', :code => 'WI')
State.create(:title => 'West Virginia', :code => 'WV')
State.create(:title => 'Wyoming', :code => 'WY')

def state_id_by_code(code)
  State.where(:code => code).first.id
end

City.create(:title => "New York", :state_id => state_id_by_code("NY"))
City.create(:title => "Los Angeles", :state_id => state_id_by_code("CA"))
City.create(:title => "Chicago", :state_id => state_id_by_code("IL"))
City.create(:title => "Houston", :state_id => state_id_by_code("TX"))
City.create(:title => "Phoenix", :state_id => state_id_by_code("AZ"))
City.create(:title => "Philadelphia", :state_id => state_id_by_code("PA"))
City.create(:title => "San Antonio", :state_id => state_id_by_code("TX"))
City.create(:title => "San Diego", :state_id => state_id_by_code("CA"))
City.create(:title => "Dallas", :state_id => state_id_by_code("TX"))
City.create(:title => "San Jose", :state_id => state_id_by_code("CA"))
City.create(:title => "Detroit", :state_id => state_id_by_code("MI"))
City.create(:title => "Jacksonville", :state_id => state_id_by_code("FL"))
City.create(:title => "Indianapolis", :state_id => state_id_by_code("IN"))
City.create(:title => "San Francisco", :state_id => state_id_by_code("CA"))
City.create(:title => "Columbus", :state_id => state_id_by_code("OH"))
City.create(:title => "Austin", :state_id => state_id_by_code("TX"))
City.create(:title => "Memphis", :state_id => state_id_by_code("TN"))
City.create(:title => "Fort Worth", :state_id => state_id_by_code("TX"))
City.create(:title => "Baltimore", :state_id => state_id_by_code("MD"))
City.create(:title => "Charlotte", :state_id => state_id_by_code("NC"))
City.create(:title => "El Paso", :state_id => state_id_by_code("TX"))
City.create(:title => "Boston", :state_id => state_id_by_code("MA"))
City.create(:title => "Seattle", :state_id => state_id_by_code("WA"))
City.create(:title => "Washington", :state_id => state_id_by_code("DC"))
City.create(:title => "Milwaukee", :state_id => state_id_by_code("WI"))
