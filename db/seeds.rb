Country.destroy_all
c1 = Country.create(:name => 'England', :currency => 'Pound', :region => 'United Kingdom')

City.destroy_all
a1 = City.create(:name => 'Paris', :language => 'French', :attraction => 'Eiffel Tower, Arc de Triomphe')
a2 = City.create(:name => 'London', :language => 'English', :attraction => 'Big Ben, Buckingham Palace')

List.destroy_all
l1 = List.create(:name => 'Europe to do')

Task.destroy_all
t1 = Task.create(:name => 'Book flights')

Itinerary.destroy_all
i1 = Itinerary.create(:itinerary_name => 'Europe' )
i2 = Itinerary.create(:itinerary_name => 'USA')

Day.destroy_all
d1 = Day.create(:date => '3/10/18', :entry => 'Flight leaving SYD at 2100', :destination => 'plane')
d2 = Day.create(:date => '23/1/21', :entry => 'Flight leaving SYD at 1030', :destination => 'plane')

User.destroy_all
u1 = User.create(:username => 'Blueforever', :email => 'cfc@live.ft', :password => 'chicken', :password_confirmation => 'chicken')

c1.cities << a2
l1.tasks << t1
i2.days << d1
i1.days << d2
