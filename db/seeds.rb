# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
san_diego = Location.create(metropolis: "San Diego", country: "US")
denver = Location.create(metropolis: "Denver", country: "US")
south_bay_la = Location.create(metropolis: "South Bay LA", country: "US")
long_beach = Location.create(metropolis: "Long Beach", country: "US")
bay_area = Location.create(metropolis: "Bay Area", country: "US")
central_ca = Location.create(metropolis: "Central Cali", country: "US")
columbia = Location.create(metropolis: "Columbia", country: "US")
portland = Location.create(metropolis: "Portland", country: "US")
vancouver = Location.create(metropolis: "Vancouver", country: "US")
phoenix = Location.create(metropolis: "Phoenix", country: "US")
houston = Location.create(metropolis: "Houston", country: "US")
austin = Location.create(metropolis: "Austin", country: "US")

# los_angeles = Location.create(city: "CenCal", state: "CA", country: "US")
# san_diego = Location.create(city: "Armpit Cali", state: "CA", country: "US")
# san_diego = Location.create(city: "Norcal", state: "CA", country: "US")

kit_carson = san_diego.courses.create(name: "Kit Carson", street: "3333 Bear Valley Pkwy", city: "Escondido", state: "CA", difficulty: 6, mixed_use_park: true)
brengle_terrace = san_diego.courses.create(name: "Brengle Terrace", street: "1200 Vale Terrace", city: "Vista", state: "CA", difficulty: 9, mixed_use_park: true)
# frontier = san_diego.courses.create(name: "Frontier", street: "1400 Mitchell", city: "Tustin", state: "CA", difficulty: 4, mixed_use_park: true)
# bj = User.first
# kit_comment = bj.comments.create("Beginner friendly course")

