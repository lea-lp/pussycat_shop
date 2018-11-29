Item.all.destroy_all
array_csv = CSV.read("db/seeds.csv")




27.times do |i|
  cat = Item.new
  cat.title = Faker::Cat.unique.name
  cat.description = "This cat is a "+Faker::Cat.breed+" from the following registry: "+Faker::Cat.registry+". " +Faker::Lorem.paragraph(4)
  cat.price = rand(101..5000)/100
  cat.image.attach(io: File.open('cat.gif'), filename: 'cat.gif')
  cat.save
end