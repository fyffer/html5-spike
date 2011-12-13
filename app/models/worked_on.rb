class WorkedOn < ActiveRecord::Base
  has_one :project
  has_one :employee
end
