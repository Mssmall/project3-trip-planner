Country.destroy_all
c1 = Country.create(:name => 'England', :currency => 'Pound', :region => 'United Kingdom', :known_for => 'The Royal Family, Football')
c2 = Country.create(:name => 'France', :currency => 'Euro', :region => 'Europe', :known_for => 'Snails')
c3 = Country.create(:name => 'USA', :currency => 'US Dollar', :region => 'United States')
c4 = Country.create(:name => 'South Korea', :currency => 'Won', :region => 'Asia')

City.destroy_all
a1 = City.create(:name => 'Paris', :language => 'French', :attraction => 'Eiffel Tower, Arc de Triomphe')
a2 = City.create(:name => 'London', :language => 'English', :attraction => 'Big Ben, Buckingham Palace')
a3 = City.create(:name => 'New York', :language => 'English', :attraction => 'Empire State Building, Chrysler Building')
a4 = City.create(:name => 'Seoul', :language => 'Korean', :attraction => 'Gyeongbokgung, N Seoul Tower')

List.destroy_all
l1 = List.create(:name => 'Europe to do')
l2 = List.create(:name => "Asia to do")

Task.destroy_all
t1 = Task.create(:name => 'Book flights')
t2 = Task.create(:name => 'Research vaccinations')

Itinerary.destroy_all
i1 = Itinerary.create(:itinerary_name => 'Europe' )
i2 = Itinerary.create(:itinerary_name => 'USA')

Day.destroy_all
d1 = Day.create(:date => '3.10.18', :entry => 'Flight leaving SYD at 2100', :destination => 'plane')
d2 = Day.create(:date => '23.1.21', :entry => 'Flight leaving SYD at 1030', :destination => 'plane')
d3 = Day.create(:date => '24.1.21', :entry => 'Arrive in Dubai', :destination => 'Dubai')

Note.destroy_all
n1 = Note.create(:heading => 'Eurail', :date => '3/10/18', :note => 'Book eurail early and buy the pass.')
n2 = Note.create(:heading => 'Food NY', :date => '4/10/18', :note => 'Go to Momofuku on 1st and 10th')
n3 = Note.create(:heading => 'Food London', :date => '8/10/18', :note => 'Borough Markets - arrive early, big crowds')

User.destroy_all
u1 = User.create(:username => 'Blueforever', :email => 'cfc@live.ft', :password => 'chicken', :password_confirmation => 'chicken')
u2 = User.create(:username => 'theBlade', :email => 'jturnbull@ga.co', :password => 'chicken', :password_confirmation => 'chicken')

c1.cities << a2
c2.cities << a1
c3.cities << a3
c4.cities << a4
l1.tasks << t1
l2.tasks << t2
i2.days << d1
i1.days << d2
i1.days << d3

u1.itineraries << i2
u1.itineraries << i1
u1.lists << l1
u1.lists << l2
u1.notes << n1
u1.notes << n2
u1.notes << n3
