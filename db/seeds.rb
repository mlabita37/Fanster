# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Fan.create({
  name:'Mike Labita',
  age: 31,
  city: 'Brooklyn',
  state: 'NY',
  country: 'USA',
  email: 'mlabita37@gmail.com'
})
