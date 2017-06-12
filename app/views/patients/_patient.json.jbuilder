json.extract! patient, :id, :firstName, :surName, :mrn, :dob, :dx, :allergies, :consultant, :ward, :admitNote, :rad1, :rad2, :rad3, :rad4, :ex1, :ex2, :ex3, :ex4, :created_at, :updated_at
json.url patient_url(patient, format: :json)
