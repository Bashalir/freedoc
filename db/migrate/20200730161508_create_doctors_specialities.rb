class CreateDoctorsSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors_specialities do |t|
      t.references :speciality, foreign_key: true
      t.references :doctor, foreign_key: true
    end
  end
end
