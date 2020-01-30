class PagesController < ApplicationController
  def home
    @article = Article.first
  end
end
