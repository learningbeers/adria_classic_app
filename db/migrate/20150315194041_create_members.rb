class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :surname
      t.date :dob
      t.string :email
      t.string :phone
      t.string :street
      t.string :housenumber
      t.string :city
      t.string :zip
      t.string :country
      t.string :membership_type
      t.string :membership_function
      t.date :membershipin_date
      t.date :membershipout
      t.string :membership_status

      t.timestamps
    end
  end
end
