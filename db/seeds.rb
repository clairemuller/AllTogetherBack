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
property1 = Property.create(name: 'home', user_id: user1.id)

category1 = Category.create(name: 'travel')
category2 = Category.create(name: 'clothes')
category3 = Category.create(name: 'books')
category4 = Category.create(name: 'mementos')
category5 = Category.create(name: 'random')
category6 = Category.create(name: 'dishes')
category7 = Category.create(name: 'cleaning supplies')
category8 = Category.create(name: 'holiday decorations')
category9 = Category.create(name: 'decorations')
category10 = Category.create(name: 'crafts')

room1 = Room.create(name: 'living room', property_id: property1.id)
room2 = Room.create(name: 'kitchen', property_id: property1.id)
room3 = Room.create(name: 'garage', property_id: property1.id)
room4 = Room.create(name: 'guest room', property_id: property1.id)
room5 = Room.create(name: 'master bedroom', property_id: property1.id)

location1 = Location.create(name: 'bookshelf', room_id: room1.id)
location2 = Location.create(name: 'hall closet', room_id: room1.id)
location3 = Location.create(name: 'junk drawer', room_id: room2.id)
location4 = Location.create(name: 'under sink', room_id: room2.id)
location5 = Location.create(name: 'holiday box', room_id: room3.id)
location6 = Location.create(name: 'guest closet', room_id: room4.id)
location7 = Location.create(name: 'storage shelf', room_id: room4.id)
location8 = Location.create(name: 'closet', room_id: room5.id)
location9 = Location.create(name: 'dresser', room_id: room5.id)
location10 = Location.create(name: 'under bed', room_id: room5.id)

item1 = Item.create(description: 'To Kill a Mockingbird', location_id: location1.id, category_id: category3.id)
item2 = Item.create(description: 'blue vase', note: 'from grandma', location_id: location1.id, category_id: category4.id)
item3 = Item.create(description: 'denim jacket', location_id: location2.id, category_id: category2.id)
item4 = Item.create(description: 'rain jacket', location_id: location2.id, category_id: category2.id)
item5 = Item.create(description: 'potholders', location_id: location3.id, category_id: category5.id)
item6 = Item.create(description: 'chip bag clips', location_id: location3.id, category_id: category5.id)
item7 = Item.create(description: 'floor cleaner', note: 'running low', location_id: location4.id, category_id: category7.id)
item8 = Item.create(description: 'trash bags', location_id: location4.id, category_id: category7.id)
item9 = Item.create(description: 'christmas wreath', location_id: location5.id, category_id: category8.id)
item10 = Item.create(description: 'christmas ornaments', location_id: location5.id, category_id: category8.id)
item11 = Item.create(description: 'halloween skeleton', location_id: location5.id, category_id: category8.id)
item12 = Item.create(description: 'grey winter coat', note: 'needs dry cleaning', location_id: location6.id, category_id: category2.id)
item13 = Item.create(description: 'posters', location_id: location6.id, category_id: category9.id)
item14 = Item.create(description: 'sewing supplies', location_id: location7.id, category_id: category10.id)
item15 = Item.create(description: 'thank you cards', location_id: location7.id, category_id: category5.id)
item16 = Item.create(description: 'leather jacket', location_id: location8.id, category_id: category2.id)
item17 = Item.create(description: 'passport', location_id: location8.id, category_id: category1.id)
item18 = Item.create(description: 'swimsuits', location_id: location9.id, category_id: category2.id)
item19 = Item.create(description: 'summer tops', location_id: location9.id, category_id: category2.id)
item20 = Item.create(description: 'secret money stash', location_id: location9.id, category_id: category5.id)
item21 = Item.create(description: 'space heater', location_id: location10.id, category_id: category5.id)
item22 = Item.create(description: 'winter sweaters', location_id: location10.id, category_id: category2.id)
item23 = Item.create(description: 'winter boots', location_id: location10.id, category_id: category2.id)
