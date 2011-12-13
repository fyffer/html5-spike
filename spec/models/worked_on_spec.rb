require 'spec_helper'

describe WorkedOn do

  def employee
    Employee.create! :name => 'Tim'
  end

  def project
    Project.create!(:name => 'JetStar',
                    :overview => 'JetStar project.',
                    :geocode => "2124.12424",
                    :start_date =>"12-01-2011")
  end

  it 'should save given valid attributes' do
    WorkedOn.create!(:employee => employee,
                     :project => project)
  end

  it 'should return the employee information' do
    tim = employee
    worked_on = WorkedOn.create!(:employee => tim,
                                 :project => project)
    worked_on.employee.should eql(tim)
  end

  it 'should return the project information' do
    skunk_works = project
    worked_on = WorkedOn.create!(:employee => employee,
                                 :project => skunk_works)
    worked_on.project.should eql(skunk_works)
  end
end
