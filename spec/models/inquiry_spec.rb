# == Schema Information
#
# Table name: inquiries
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  DOB                    :date
#  street                 :string
#  city                   :string
#  state                  :string
#  zip                    :string
#  insurance_carrier      :string
#  member_id              :string
#  policy_holder          :string
#  policy_holder_name     :string
#  policy_holder_dob      :date
#  insurance_phone_number :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string
#

require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  let(:new){Inquiry.created_at!(first_name: "John", last_name: "Carter", DOB: "2016-10-08", email: "sex@sex.com", street: "24 Greenway st", city: "Hamden", state: "Connecticut", zip: "06517", insurance_carrier: "", member_id: "", policy_holder: "", policy_holder_name: "", policy_holder_dob: "2016-10-08", insurance_phone_number: "5618708191")}

  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
  it {should validate_presence_of(:email)}
  it {should validate_length_of(:email).is_at_least(3)}
  it {should allow_value("rawr@rawr.com").for(:email)}
  it {should_not allow_value("aaaaaa").for(:email)}
  it {should validate_uniqueness_of(:email)}
  it {should validate_presence_of(:DOB)}
  it {should validate_presence_of(:street)}
  it {should validate_presence_of(:city)}
  it {should validate_presence_of(:state)}
  it {should validate_presence_of(:zip)}



end
