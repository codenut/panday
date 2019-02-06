class Person < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  validates :phone_number, presence: :phone_required?, uniqueness: true

  def email_required?
    phone_number.blank?
  end

  def phone_required?
    email.blank?
  end
end
