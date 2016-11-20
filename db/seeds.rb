# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
#  phone_number
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


Admin.create!({
	full_name: "John Carter", 
	email: "johngallweycarter@gmail.com", 
	password: "msghguua1!"}) if Admin.count == 0

puts "Admin Account Ready" if Admin.count != 0

30.times do 

Inquiry.create!({
	first_name: Faker::Name.first_name, 
	last_name: Faker::Name.last_name, 
	DOB: Faker::Date.between(70.years.ago, 18.years.ago),
	phone_number: Faker::PhoneNumber.cell_phone,
	email: Faker::Internet.email,
	street: Faker::Address.street_name, 
	city: Faker::Address.city,
	state: Faker::Address.state,
	zip: Faker::Address.zip_code,
	insurance_carrier: Faker::Company.name,
	member_id: Faker::Business.credit_card_number,
	policy_holder: ["Father", "Mother", "Other"].sample,
	policy_holder_name: Faker::Name.name,
	policy_holder_dob: Faker::Date.between(70.years.ago, 50.years.ago),
	insurance_phone_number: Faker::PhoneNumber.cell_phone,
	contacted: 0
	})
puts "Now #{Inquiry.count} inquiries in database"

end if Inquiry.count < 30

100.times do
	string = ''
	5.times do string << Faker::Hacker.say_something_smart end 
	Note.create!({
		body: string,
		admin: Admin.all.sample,
		inquiry: Inquiry.all.sample
		})
end if Note.count <= 100