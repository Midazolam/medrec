require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { admitNote: @patient.admitNote, allergies: @patient.allergies, consultant: @patient.consultant, dob: @patient.dob, dx: @patient.dx, ex1: @patient.ex1, ex2: @patient.ex2, ex3: @patient.ex3, ex4: @patient.ex4, firstName: @patient.firstName, mrn: @patient.mrn, rad1: @patient.rad1, rad2: @patient.rad2, rad3: @patient.rad3, rad4: @patient.rad4, surName: @patient.surName, ward: @patient.ward } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { admitNote: @patient.admitNote, allergies: @patient.allergies, consultant: @patient.consultant, dob: @patient.dob, dx: @patient.dx, ex1: @patient.ex1, ex2: @patient.ex2, ex3: @patient.ex3, ex4: @patient.ex4, firstName: @patient.firstName, mrn: @patient.mrn, rad1: @patient.rad1, rad2: @patient.rad2, rad3: @patient.rad3, rad4: @patient.rad4, surName: @patient.surName, ward: @patient.ward } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
