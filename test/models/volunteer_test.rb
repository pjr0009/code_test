require 'test_helper'

class VolunteerTest < ActiveSupport::TestCase
  test "should ensure uniqueness of medical_id" do
    uuid = SecureRandom.uuid
    volunteer = Volunteer.new({first_name: "Phillip", :last_name => "Robertson", :phone_number => "2566170926", :medical_id => uuid, :insurance_carrier => "blue cross"})
    assert volunteer.save
    volunteer2 = Volunteer.new({first_name: "Phil", :last_name => "Robert", :phone_number => "2566170927", :medical_id => uuid, :insurance_carrier => "blue crossing"})
    assert_not volunteer2.save
  end
end
