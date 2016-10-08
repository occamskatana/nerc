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
#

FactoryGirl.define do
  factory :inquiry do
    first_name "MyString"
    last_name "MyString"
    DOB "2016-10-08"
    street "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    insurance_carrier "MyString"
    member_id "MyString"
    policy_holder "MyString"
    policy_holder_name "MyString"
    policy_holder_dob "2016-10-08"
    insurance_phone_number "MyString"
  end
end
