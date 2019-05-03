# frozen_string_literal: true

ERROR_MSG = 'E-mail adress does not seem to be valid'

class Contact < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true,
                    uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/,
                              message: ERROR_MSG }
end
