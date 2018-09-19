# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w[blog podcast library].each do |category|
  1000.times do
    author = Author.create(full_name: Faker::StarWars.character)
    post = Post.create(category: category, slug: Faker::Lorem.word, title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph(100))
    post.authors << author
  end
end
