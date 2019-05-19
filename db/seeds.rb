# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Property.destroy_all
Room.destroy_all
Location.destroy_all
Category.destroy_all
Item.destroy_all

category = Category.create(name: 'travel')
category2 = Category.create(name: 'clothes')
user = User.create(name: 'Claire Muller')
property = Property.create(name: 'summer home', user_id: user.id)
room = Room.create(name: 'living room', property_id: property.id)
room3 = Room.create(name: 'garage', property_id: property.id)
room4 = Room.create(name: 'master bedroom', property_id: property.id)
location = Location.create(name: 'box 3', room_id: room.id)
location3 = Location.create(name: 'memory box', room_id: room.id)
location4 = Location.create(name: 'closet', room_id: room4.id)
item = Item.create(description: 'passport', note: 'expired', location_id: location.id, category_id: category.id)
item2 = Item.create(description: 'blue winter coat', note: 'needs to be mended', location_id: location3.id, category_id: category2.id)

# user2 = User.create(name: 'Kristen')
# property2 = Property.create(name: 'winter property')
# room2 = Room.create(name: 'kitchen', property_id: property2.id)
# room4 = Room.create(name: 'garage', property_id: property2.id)
# location2 = Location.create(name: 'box 1', room_id: room2.id)
