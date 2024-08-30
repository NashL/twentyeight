class Patient < ApplicationRecord
  belongs_to :state

  validates :full_name, :email, :date_of_birth, :state, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
