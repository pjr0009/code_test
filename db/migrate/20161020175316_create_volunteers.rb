class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :phone_number, null: false
      t.string :insurance_carrier, null: false
      t.string :medical_id, :unique => true
      t.timestamps null: false
    end
  end
end

