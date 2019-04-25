class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :monday_hrs
      t.string :tuesday_hrs
      t.string :wednesday_hrs
      t.string :thursday_hrs
      t.string :friday_hrs
      t.string :saturday_hrs
      t.string :sunday_hrs

      t.timestamps
    end
  end
end
