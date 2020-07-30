# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::Config.locale = 'fr'

speciality = %w[Généraliste Pédiatre Cardiologue Gynécologue Ophtalmologue Allergologue]

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all


20.times do 
  chosen_speciality = speciality.shuffle[0]
 
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: chosen_speciality, zipcode:
  Faker::Address.zip_code)
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

end

200.times do |i|
  datetime = Faker::Time.between(from: DateTime.now - (100 - i), to: DateTime.now - 100, format: :default)

  chosen_doctor = Doctor.all.shuffle[0]
  chosen_patient = Patient.all.shuffle[0]

  appointment = Appointment.create(date: datetime, doctor: chosen_doctor, patient: chosen_patient)
end