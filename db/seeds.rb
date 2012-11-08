# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
User.create(:name => 'Ting Keng Boon',
  :nric => 'S8503535E',
  :password => '123456',
  :email => 'luv2000ken@hotmail.com',
  :image_url =>   '/images/wd4d.jpg')
