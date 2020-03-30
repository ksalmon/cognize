# frozen_string_literal: false

class Api::V1::ArticlesController < ApplicationController

  def index 
    @articles = Articles.all
    render json: @articles, each_serializer: Api::V1::ArticleSerializer
  end

  def show
    @article = Article.find(params[:id])
    render json: @article, serializer: Api::V1::ArticleSerializer
  end
end