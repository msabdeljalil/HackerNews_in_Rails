require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create(username: "Jim", password: "password")
end

User.all.each do |user|
  Item.create(body: Faker::Company.bs, link: "www.google.com", user_id: user.id)
end

User.all.each do |user|
  5.times do
    Item.create(body: Faker::Company.bs, link: "www.google.com", user_id: user.id, parent_id: Item.all.sample.id)
  end
end
