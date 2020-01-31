class Article < ApplicationRecord
  validates :headline, :source, :image, presence: true

  has_one_attached :image
  has_shortened_urls

  def link
    begin 
      shortened_urls.first.unique_key
    rescue
      ""
    end
  end
end
