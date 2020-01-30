# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'uri'

Article.create!(
  headline: "Suspected case at Tiong Bahru baby clinic tests negative for Wuhan coronavirus",
  preview: "Suspected case at Tiong Bahru Plaza has been confirmed to be negative",
  source: "Mothership.sg"  
)

url = 'https://cna-sg-res.cloudinary.com/image/upload/q_auto,f_auto/image/12364452/16x9/991/557/ee873e0361b45d91213d8290708f23e4/vm/people-wearing-protective-face-mask-at-orchard-road--singapore-where-five-case-of-the-wuhan-coronavirus-has-been-confirmed--1-.jpg'

filename = File.basename(URI.parse(url).path)
file = URI.open(url)

Article.first.image.attach(io: file, filename: filename)

Shortener::ShortenedUrl.generate("https://mothership.sg/2020/01/wuhan-virus-sbcc-tiong-bahru/", owner: Article.first)