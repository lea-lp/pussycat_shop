Item.all.destroy_all


27.times do |i|
  cat = Item.new
  cat.title = Faker::Cat.unique.name
  cat.description = "This cat is a "+Faker::Cat.breed+" from the following registry: "+Faker::Cat.registry+". " +Faker::Lorem.paragraph(4)
  cat.price = rand(11..500).to_f/10
  cat.save
end