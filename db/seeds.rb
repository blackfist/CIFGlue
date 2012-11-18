# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


PrivacyTag.create!(:content => "Red", :color => "Red")
PrivacyTag.create!(:content => "Amber", :color => "Yellow")
PrivacyTag.create!(:content => "Green", :color => "White")
Category.create!(name:"Uncategorized", impact:"Botnet")
