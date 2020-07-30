# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::Config.locale = 'fr'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Speciality.destroy_all


%w[Généraliste Pédiatre Cardiologue Gynécologue Ophtalmologue Allergologue].each { |speciality| Speciality.create(name: speciality) }
%w[Paris Marseille Lyon Bordeaux Lille Metz].each { |city| City.create(name: city) }



20.times do
  chosen_specialities = [Speciality.all.sample, Speciality.all.sample]
  chosen_city = City.all.sample

  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zipcode:
  Faker::Address.zip_code, city: chosen_city, specialities: chosen_specialities)
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: chosen_city)
end

200.times do |i|
  datetime = Faker::Time.between(from: DateTime.now - (100 - i), to: DateTime.now - 100, format: :default)

  chosen_doctor = Doctor.all.sample
  chosen_patient = Patient.all.sample

  appointment = Appointment.create(date: datetime, doctor: chosen_doctor, patient: chosen_patient, city: chosen_doctor.city)
end
