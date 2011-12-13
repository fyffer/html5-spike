require 'spec_helper'

describe Employee do
  def project
    Project.create!(:name => 'JetStar',
                           :overview => 'JetStar project.',
                           :geocode => "2124.12424",
                           :start_date =>"12-01-2011")
  end

  def worked_on(project, employee)
    WorkedOn.create!(:employee_id => employee,
                     :project_id => project)
  end


  it 'should save given valid attributes' do
    Employee.create! :name => 'Bruce'
  end

  it 'should return the worked_ons' do
    employee = Employee.create! :name => 'Bruce'
    worked_on(project, employee)

    employee.worked_ons.length.should == 1
  end
end
