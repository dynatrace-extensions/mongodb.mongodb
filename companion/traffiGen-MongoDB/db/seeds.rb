30.times do
  Message.create!(
    author: Faker::Book.unique.author,
    title: Faker::Book.unique.title,
    content: Faker::Lorem.paragraph(sentence_count: 15, supplemental: false, random_sentences_to_add: 7)
    )
end