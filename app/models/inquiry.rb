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

class Inquiry < ApplicationRecord
	validates :first_name, presence: true, length: {minimum: 2, maximum: 200}
	validates :last_name, presence: true, length: {minimum: 2, maximum: 200}
	validates :DOB, presence: true
	validates :street, presence: true 
	validates :state, presence: true 
	validates :zip, presence: true 
	
end
