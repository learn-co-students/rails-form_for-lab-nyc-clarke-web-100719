# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s1 = Student.create(first_name: 'sponge', last_name: 'bob')
s2 = Student.create(first_name: 'jack', last_name: 'staffen')

sc1 = SchoolClass.create(title: "computer science", room_number: 104)
sc2 = SchoolClass.create(title: "bio", room_number: 205)