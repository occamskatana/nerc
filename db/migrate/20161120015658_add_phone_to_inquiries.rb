class AddPhoneToInquiries < ActiveRecord::Migration[5.0]
  def change
    add_column :inquiries, :phone_number, :string
  end
end
