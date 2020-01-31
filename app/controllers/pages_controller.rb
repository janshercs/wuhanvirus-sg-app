class PagesController < ApplicationController
  def news
    @articles = Article.order(updated_at: :desc)
  end

  def map
  end
end
