json.array!(@members) do |member|
  json.extract! member, :id, :name, :surname, :dob, :email, :phone, :street, :housenumber, :city, :zip, :country, :membership_type, :membership_function, :membershipin_date, :membershipout, :membership_status
  json.url member_url(member, format: :json)
end
