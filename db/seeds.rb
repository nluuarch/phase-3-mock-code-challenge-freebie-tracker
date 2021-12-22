puts "deleting data..."
Freebie.destroy_all
Company.destroy_all
Dev.destroy_all
puts "deleted!"


puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")


puts "Creating freebies..."
10.times do 
    Freebie.create(
        item_name: Faker::Food.dish,
        value: rand(1..10),
        company_id: Company.all.sample.id,
        dev_id: Dev.all.sample.id
    )
end
puts "Seeding done!"


