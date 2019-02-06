# frozen_string_literal: true

class DeviseCreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :phone_number,       null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      t.timestamps null: false
    end

    add_index :people, :email,                unique: true
    add_index :people, :phone_number,         unique: true
    add_index :people, :reset_password_token, unique: true
    add_index :people, :confirmation_token,   unique: true
  end
end
