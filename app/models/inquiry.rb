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

class Inquiry < ApplicationRecord

	before_save {self.email = email.downcase}

	validates :first_name, presence: true, length: {minimum: 2, maximum: 200}
	validates :last_name, presence: true, length: {minimum: 2, maximum: 200}
	validates :DOB, presence: true
	validates :street, presence: true 
	validates :state, presence: true
	validates :city, presence: true 
	validates :zip, presence: true 
	validates :email, presence: true
	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-zs]+\z/i
	validates :email, format: EMAIL_REGEX
	validates :email, length: {minimum: 3, maximum: 50}


	
	
end
