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

user1 = User.create(name: 'Claire Muller')

category1 = Category.create(name: 'travel')
category2 = Category.create(name: 'clothes')
category3 = Category.create(name: 'books')
category4 = Category.create(name: 'mementos')

property1 = Property.create(name: 'summer home', user_id: user1.id)

room1 = Room.create(name: 'living room', property_id: property1.id)
room2 = Room.create(name: 'kitchen', property_id: property1.id)
room3 = Room.create(name: 'garage', property_id: property1.id)
room4 = Room.create(name: 'guest room', property_id: property1.id)
room5 = Room.create(name: 'master bedroom', property_id: property1.id)

location1 = Location.create(name: 'bookshelf', room_id: room1.id)
location2 = Location.create(name: 'memory box', room_id: room1.id)
location3 = Location.create(name: 'box 2', room_id: room1.id)
location4 = Location.create(name: 'closet', room_id: room4.id)
location5 = Location.create(name: 'closet', room_id: room5.id)

item1 = Item.create(description: 'passport', note: 'expired', location_id: location3.id, category_id: category1.id)
item2 = Item.create(description: 'blue winter coat', note: 'needs to be mended', location_id: location4.id, category_id: category2.id)
item3 = Item.create(description: 'To Kill a Mockingbird', note: '', location_id: location1.id, category_id: category3.id)
item4 = Item.create(description: 'prints from Europe', note: 'need to frame', location_id: location2.id, category_id: category4.id)
item5 = Item.create(description: 'leopard jacket', note: '', location_id: location5.id, category_id: category2.id)














# end
