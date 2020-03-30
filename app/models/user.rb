# frozen_string_literal: false

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/,
    message: 'Improper email format' }
  validates :username, presence: true, uniqueness: true, format: { without: /\s/,
    message: 'Improper username format' }
end