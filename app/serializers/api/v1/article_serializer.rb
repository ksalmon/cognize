# frozen_string_literal: false

class Api::V1::ArticleSerializer < ActiveModel::Serializer
  attributes :id, :headline, :default_image, :description, :source, :url, :published_at
end

