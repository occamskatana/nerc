class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.string :first_name
      t.string :last_name
      t.date :DOB
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :insurance_carrier
      t.string :member_id
      t.string :policy_holder
      t.string :policy_holder_name
      t.date :policy_holder_dob
      t.string :insurance_phone_number

      t.timestamps
    end
  end
end
