class Doctor < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
  has_many :specialties, through: :spec_docs
  belongs_to :city
end
