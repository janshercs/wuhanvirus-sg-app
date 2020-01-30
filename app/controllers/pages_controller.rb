class PagesController < ApplicationController
  def home
    @articles = Article.order(updated_at: :desc)
  end
end
