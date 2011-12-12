class CreateWorkedOns < ActiveRecord::Migration
  def change
    create_table :worked_ons do |t|
      t.string :role
      t.date :start_date
      t.date :end_date

      t.references :employee
      t.references :project
      t.timestamps
    end
  end
end
