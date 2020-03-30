# frozen_string_literal: false

class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :avatar, :github, :created_at, :updated_at
end

