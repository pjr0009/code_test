class Volunteer < ActiveRecord::Base
  validates :medical_id, uniqueness: true
end
