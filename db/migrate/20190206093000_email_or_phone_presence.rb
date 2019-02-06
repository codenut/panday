class EmailOrPhonePresence < ActiveRecord::Migration[5.2]
  def change
    execute "ALTER TABLE people ADD CONSTRAINT email_or_phone_present CHECK
             (((email is NULL) AND (phone_number is NULL)) != True)"
  end
end
