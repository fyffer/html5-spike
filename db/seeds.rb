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

jet_star = Project.create!(:name => 'JetStar',
                           :overview => 'JetStar project.',
                           :geocode => "2124.12424",
                           :start_date =>"12-01-2011")


WorkedOn.create!(:employee_id => ace.id,
                 :project_id => jet_star.id)
WorkedOn.create!(:employee_id => dave.id,
                 :project_id => jet_star.id)
