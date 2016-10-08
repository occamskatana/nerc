require 'rails_helper'

RSpec.describe "inquiries/index", type: :view do
  before(:each) do
    assign(:inquiries, [
      Inquiry.create!(
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
      ),
      Inquiry.create!(
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
      )
    ])
  end

  it "renders a list of inquiries" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Insurance Carrier".to_s, :count => 2
    assert_select "tr>td", :text => "Member".to_s, :count => 2
    assert_select "tr>td", :text => "Policy Holder".to_s, :count => 2
    assert_select "tr>td", :text => "Policy Holder Name".to_s, :count => 2
    assert_select "tr>td", :text => "Insurance Phone Number".to_s, :count => 2
  end
end
