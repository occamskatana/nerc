require 'rails_helper'

RSpec.describe "inquiries/show", type: :view do
  before(:each) do
    @inquiry = assign(:inquiry, Inquiry.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :street => "Street",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :insurance_carrier => "Insurance Carrier",
      :member_id => "Member",
      :policy_holder => "Policy Holder",
      :policy_holder_name => "Policy Holder Name",
      :insurance_phone_number => "Insurance Phone Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Insurance Carrier/)
    expect(rendered).to match(/Member/)
    expect(rendered).to match(/Policy Holder/)
    expect(rendered).to match(/Policy Holder Name/)
    expect(rendered).to match(/Insurance Phone Number/)
  end
end
