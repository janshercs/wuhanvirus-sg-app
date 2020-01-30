class Article < ApplicationRecord
  has_one_attached :image

  validates :link, :headline, :preview, :source, :image, presence: true
end
