FactoryBot.define do
  factory :product do
    name {Faker::Commerce.product_name[0..20]}
    price {Faker::Commerce.price}
    active {true}
  end
end

