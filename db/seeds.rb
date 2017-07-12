Product.destroy_all
Review.destroy_all

40.times do |index|
  product = Product.create!(name: Faker::Commerce.product_name,
                            price: Faker::Commerce.price,
                            description: Faker::Commerce.department)
  5.times do |index|
    product.reviews.create!(author: Faker::Name.unique.name,
                            rating: Faker::Number.between(1, 5),
                            content: Faker::TwinPeaks.quote)
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"
