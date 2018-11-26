
20.times do |i|
  cat = Item.new
  cat.title = Faker::Cat.unique.name
  cat.description = "This cat is a "+Faker::Cat.breed+" from the following registry: "+Faker::Cat.registry+". " +Faker::Lorem.paragraph(4)
  cat.price = rand(101..5000)/100
  cat.image_url = Faker::LoremFlickr.image("300x#{300+i}", ['cat'])
  cat.save
end