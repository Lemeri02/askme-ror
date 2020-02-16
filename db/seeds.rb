# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# <% color_schema = {ugly_yellow: {bgc: "#FEFE86", text_color: "#343409", border: "#B8B814"},
# coral: {bgc: "#FF8883", text_color: "#FFFFFF", border: "#FFC2BB"},
# nordic_ruby: {bgc: "#0B172A", text_color: "#FFFFFF", border: "#BC4123"}}
#  %>
User.create(
  name: 'kuku', username: 'kuku', email: 'kuku@mail.ru', password: '123456', color_theme: '{"bgc": "#FF8883", "text": "#343409", "border": "#B8B814"}'
)
User.create(
  name: 'ruru', username: 'ruru', email: 'ruru@mail.ru', password: '123456', color_theme: '{"bgc": "#FF8883", "text": "#FFFFFF", "border": "#FFC2BB"}'
)
User.create(
  name: 'tutu', username: 'tutu', email: 'tutu@mail.ru', password: '123456', color_theme: '{"bgc": "#0B172A", "text": "#FFFFFF", "border": "#BC4123"}'
)
