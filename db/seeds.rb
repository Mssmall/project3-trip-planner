Country.destroy_all
c1 = Country.create(:name => 'England', :currency => 'Pound', :region => 'United Kingdom', :known_for => 'The Royal Family, Football')
c2 = Country.create(:name => 'France', :currency => 'Euro', :region => 'Europe', :known_for => 'Snails')
c3 = Country.create(:name => 'USA', :currency => 'US Dollar', :region => 'North America', :known_for => 'American football, baseball, Hollywood')
c4 = Country.create(:name => 'South Korea', :currency => 'South Korean Won', :region => 'Asia', :known_for => 'Kpop, Hallyu')
c5 = Country.create(:name => 'Germany', :currency => 'Euro', :region => 'Europe', :known_for => 'Berlin Wall, Oktoberfest')
c6 = Country.create(:name => 'Sweden', :currency => 'Swedish Kronor', :region => 'Europe', :known_for => 'Ikea, Volvo')
c7 = Country.create(:name => 'Canada', :currency => 'Canadian Dollar', :region => 'North America', :known_for => 'Maple leaf, hockey, natural beauty')
c8 = Country.create(:name => 'Brazil', :currency => 'Brazilian Real', :region => 'South America', :known_for => 'Football, Rio')
c9 = Country.create(:name => 'China', :currency => 'Yen', :region => 'Asia', :known_for => 'Forbidden City, noodles, pandas')
c10 = Country.create(:name => 'Switzerland', :currency => 'Swiss Franc', :region => 'Europe', :known_for => 'the Alps, chocolate, the Sound of Music')


City.destroy_all
a1 = City.create(:name => 'London', :language => 'English', :attraction => 'Big Ben, Buckingham Palace')
a2 = City.create(:name => 'Paris', :language => 'French', :attraction => 'Eiffel Tower, Arc de Triomphe')
a3 = City.create(:name => 'New York', :language => 'English', :attraction => 'Empire State Building, Chrysler Building')
a4 = City.create(:name => 'Seoul', :language => 'Korean', :attraction => 'Gyeongbokgung, N Seoul Tower')
a5 = City.create(:name => 'Berlin', :language => 'German', :attraction => 'Brandenburg Gate, Reichstag')
a6 = City.create(:name => 'Stockholm', :language => 'Swedish', :attraction => 'Gamla Stan, Skansen, Vasa')
a7 = City.create(:name => 'Vancouver', :language => 'English', :attraction => 'Queen Elizabeth Park, Vancouver Island')
a8 = City.create(:name => 'Rio de Janiero', :language => 'Portuguese, Spanish', :attraction => 'Copacobana Beach, Christ the Redeemer')
a9 = City.create(:name => 'Beijing', :language => 'Mandarin', :attraction => 'Forbidden City, Tiananmen Square, the Great Wall of China')
a10 = City.create(:name => 'Geneva', :language => 'French', :attraction => 'UN headquarters, Red Cross headquarters, Mont Blanc')

List.destroy_all
l1 = List.create(:name => 'Europe to do')
l2 = List.create(:name => "Asia to do")
l3 = List.create(:name => "Packing List")
l4 = List.create(:name => "USA to do")
l5 = List.create(:name => "Banana")


Task.destroy_all
t1 = Task.create(:name => 'Book flights')
t2 = Task.create(:name => 'Book London accommodation')
t3 = Task.create(:name => 'Book Iceland adventure tours')
t4 = Task.create(:name => 'Book Eurail pass')
t5 = Task.create(:name => 'Pack underwear')
t6 = Task.create(:name => 'Pack socks')
t7 = Task.create(:name => 'Peel the banana')
t8 = Task.create(:name => 'Eat the banana')
t9 = Task.create(:name => 'Throw the banana peel')


Itinerary.destroy_all
i1 = Itinerary.create(:itinerary_name => 'Europe' )
i2 = Itinerary.create(:itinerary_name => 'USA')

Day.destroy_all
d1 = Day.create(:date => '3.10.18', :entry => 'Flight leaving SYD at 2100', :destination => 'plane')
d2 = Day.create(:date => '23.1.21', :entry => 'Flight leaving SYD at 1030', :destination => 'plane')
d3 = Day.create(:date => '24.1.21', :entry => 'Arrive in Dubai', :destination => 'Dubai')
d4 = Day.create(:date => '25.1.21', :entry => 'Arrive in London', :destination => 'London')
d5 = Day.create(:date => '4.10.18', :entry => 'Arrive in LA', :destination => 'LA')
d6 = Day.create(:date => '5.10.18', :entry => 'Visit Hollywood Boulevard, do a Hollywood Hills tour', :destination => 'LA')
d7 = Day.create(:date => '6.10.18', :entry => 'Visit Venice Beach, meet up with Contiki tour in evening', :destination => 'LA')
d8 = Day.create(:date => '7.10.18', :entry => 'Drive to Vegas, checkin and go straight to the casino', :destination => 'Las Vegas')


Note.destroy_all
n1 = Note.create(:heading => 'Eurail', :date => '3/10/18', :note => 'Book eurail early and buy the pass.')
n2 = Note.create(:heading => 'Food NY', :date => '4/10/18', :note => 'Go to Momofuku on 1st and 10th')
n3 = Note.create(:heading => 'Food London', :date => '8/10/18', :note => 'Borough Markets - arrive early.')
n4 = Note.create(:heading => 'Potential Iceland tours', :date => '8/10/18', :note => 'Snorkelling, ice cave tours, glacier tours')
n5 = Note.create(:heading => 'Potential flights', :date => '30/11/18', :note => 'Qantas: 1000, $1500. Emirates: 2130, $1400')
n6 = Note.create(:heading => 'GA', :date => '25/1/18', :note => 'Yay we are done')

User.destroy_all
u1 = User.create(:username => 'Blueforever', :email => 'cfc@live.ft', :password => 'chicken', :password_confirmation => 'chicken')
u2 = User.create(:username => 'theBlade', :email => 'jturnbull@ga.co', :password => 'chicken', :password_confirmation => 'chicken')

c1.cities << a1
c2.cities << a2
c3.cities << a3
c4.cities << a4
c5.cities << a5
c6.cities << a6
c7.cities << a7
c8.cities << a8
c9.cities << a9
c10.cities << a10
l1.tasks << t1
l1.tasks << t3
l1.tasks << t4
l2.tasks << t2
l3.tasks << t5
l3.tasks << t6
l5.tasks << t7
l5.tasks << t8
l5.tasks << t9
i2.days << d1
i1.days << d2
i1.days << d3
i1.days << d4
i2.days << d5
i2.days << d6
i2.days << d7
i2.days << d8

u1.itineraries << i2
u1.itineraries << i1
u1.lists << l1
u1.lists << l2
u1.lists << l3
u1.lists << l4
u1.lists << l5
u1.notes << n1
u1.notes << n2
u1.notes << n3
u1.notes << n4
u1.notes << n5
u1.notes << n6
