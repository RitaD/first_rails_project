
after :articles do
  Article.all.each do |article|
    10.times do
      article.comments.create(commenter: Faker::Name.name, body: Faker::Lorem.paragraph)
    end
  end
end
