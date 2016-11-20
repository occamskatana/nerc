class AddContactedToInquiries < ActiveRecord::Migration[5.0]
  def change
    add_column :inquiries, :contacted, :integer
  end
end
