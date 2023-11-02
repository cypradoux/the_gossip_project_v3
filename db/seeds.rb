require 'faker'
Gossip.destroy_all
User.destroy_all
City.destroy_all


#création de 10 villes
10.times do |i|
    City.create!(
        name: Faker::Address.city,
        zip_code: Faker::Address.zip_code)
end

# création de 10 utilisateurs
10.times do |i|
    User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        age: Faker::Number.between(from: 10, to: 90),
        city_id: City.all.sample.id)
end

#création de 20 gossips
20.times do |i|
    Gossip.create!(
        title: Faker::Lorem.sentence(word_count: 1),
        content: Faker::Lorem.paragraph(sentence_count: 3),
        user_id: User.all.sample.id
    )
end

# [City, User, Gossip].each do |model|
#     ActiveRecord::Base.connection.reset_pk_sequence!(model.users)
#   end

# #création de 10 tags
# 10.times do |i|
#     Tag.create!(
#         title: Faker::Lorem.word
#     )
# end

# #ajouter un tag au gossip
# Gossip.all.each do |gossip|
#     rand(1..10).times do
#         gossip.tags = Tag.all.sample(rand(1..10))
#     end
#     gossip.save!
# end