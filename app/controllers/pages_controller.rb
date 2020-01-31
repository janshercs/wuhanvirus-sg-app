class PagesController < ApplicationController
  def news
    @articles = Article.order(updated_at: :desc)
  end

  def map
    @dates = (Date.parse("21/01/2020")..Date.today).map{ 
      |d| d.strftime("#{d.day.ordinalize} %B %Y") 
    }
  end
end
