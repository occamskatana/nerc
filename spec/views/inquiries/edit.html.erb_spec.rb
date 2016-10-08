require 'rails_helper'

RSpec.describe "inquiries/edit", type: :view do
  before(:each) do
    @inquiry = assign(:inquiry, Inquiry.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :street => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :insurance_carrier => "MyString",
      :member_id => "MyString",
      :policy_holder => "MyString",
      :policy_holder_name => "MyString",
      :insurance_phone_number => "MyString"
    ))
  end

  it "renders the edit inquiry form" do
    render

    assert_select "form[action=?][method=?]", inquiry_path(@inquiry), "post" do

      assert_select "input#inquiry_first_name[name=?]", "inquiry[first_name]"

      assert_select "input#inquiry_last_name[name=?]", "inquiry[last_name]"

      assert_select "input#inquiry_street[name=?]", "inquiry[street]"

      assert_select "input#inquiry_city[name=?]", "inquiry[city]"

      assert_select "input#inquiry_state[name=?]", "inquiry[state]"

      assert_select "input#inquiry_zip[name=?]", "inquiry[zip]"

      assert_select "input#inquiry_insurance_carrier[name=?]", "inquiry[insurance_carrier]"

      assert_select "input#inquiry_member_id[name=?]", "inquiry[member_id]"

      assert_select "input#inquiry_policy_holder[name=?]", "inquiry[policy_holder]"

      assert_select "input#inquiry_policy_holder_name[name=?]", "inquiry[policy_holder_name]"

      assert_select "input#inquiry_insurance_phone_number[name=?]", "inquiry[insurance_phone_number]"
    end
  end
end
