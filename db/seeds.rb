Country.destroy_all
c1 = Country.create(:name => 'England', :currency => 'Pound', :known_for => '', :link => '', :recommendation => '', :region => 'United Kingdom')

City.destroy_all
a1 = City.create(:name => 'Paris', :language => 'French', :attraction => 'Eiffel Tower, Arc de Triomphe', :link => '', :recommendation => '')

# User.destroy_all
# u1 = User.create(:username => 'Blueforever', :email => 'cfc@live.ft', :password => 'chicken', :password_confirmation => 'chicken')
