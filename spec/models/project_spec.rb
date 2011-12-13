require 'spec_helper'

describe Project do
  def worked_ons
    ace = Employee.create! :name => 'Arnold Judas Rimmer'
    dave = Employee.create! :name => 'Dave Lister'

    project = Project.create!(:name => 'JetStar',
                    :overview => 'JetStar project.',
                    :geocode => "2124.12424",
                    :start_date =>"12-01-2011")
    WorkedOn.create!(:employee => ace,
                     :project => project)
    WorkedOn.create!(:employee => dave,
                     :project => project)
    project
  end

  it 'should save given valid attributes' do
    Project.create!(:name => 'JetStar',
                    :overview => 'JetStar project.',
                    :geocode => "2124.12424",
                    :start_date =>"12-01-2011")
  end

  it 'should return all worked_ons' do
    project = worked_ons()

    WorkedOn.all.length.should == 2
  end
end
