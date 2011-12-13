# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


ace = Employee.create! :name => 'Arnold Judas Rimmer'
dave = Employee.create! :name => 'Dave Lister'
cat = Employee.create! :name => 'Cat'
holly = Employee.create! :name => 'Holly'
kryton = Employee.create! :name => 'Kryten 2X4B-523P'

jet_star = Project.create!(:name => 'JetStar',
                           :overview => 'JetStar project.',
                           :geocode => "2124.12424",
                           :start_date =>"12-01-2011")


WorkedOn.create!(:employee => ace,
                 :project => jet_star)
WorkedOn.create!(:employee => dave,
                 :project => jet_star)
WorkedOn.create!(:employee => holly,
                 :project => jet_star)

jemena = Project.create!(:name => 'Jemena',
                           :overview => 'Jemena Reports',
                           :geocode => "2124.12424",
                           :start_date =>"12-01-2011")

WorkedOn.create!(:employee => cat,
                 :project =>jemena)
WorkedOn.create!(:employee => dave,
                 :project => jemena)
