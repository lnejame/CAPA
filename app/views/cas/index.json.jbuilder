json.array!(@cas) do |ca|
  json.extract! ca, :id, :ca_number, :subject, :originator, :responsible, :date_opened, :date_due, :closed_date, :priority, :description, :customer, :part, :containment_action, :root_Cause, :rc_category, :corrective_action, :preventive_action, :validation
  json.url ca_url(ca, format: :json)
end
