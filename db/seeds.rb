puts "Cleaning up database"
Restaurant.destroy_all

puts "creating restaurants"
restos = []
3.times do
  restos <<
    {
      name: Faker::Company.name,
      address: Faker::Address.city,
      stars: (0..3).to_a.sample,
      category: Restaurant::CATEGORIES.sample,
      phone_number: Faker::PhoneNumber.phone_number
    }
end
Restaurant.create!(restos)
puts "seed completed"
